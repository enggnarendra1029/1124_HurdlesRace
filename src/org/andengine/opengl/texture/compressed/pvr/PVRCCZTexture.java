// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy.IPVRTexturePixelBufferStrategy;
import org.andengine.util.StreamUtils;
import org.andengine.util.adt.array.ArrayUtils;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr:
//            PVRTexture

public abstract class PVRCCZTexture extends PVRTexture
{
    public static final class CCZCompressionFormat extends Enum
    {

        private static int $SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat[];
        public static final CCZCompressionFormat BZIP2;
        private static final CCZCompressionFormat ENUM$VALUES[];
        public static final CCZCompressionFormat GZIP;
        public static final CCZCompressionFormat NONE;
        public static final CCZCompressionFormat ZLIB;
        private final short mID;

        static int[] $SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat()
        {
            int ai[] = $SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat;
            if (ai != null)
            {
                return ai;
            }
            int ai1[] = new int[values().length];
            try
            {
                ai1[BZIP2.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai1[GZIP.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai1[NONE.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai1[ZLIB.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            $SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat = ai1;
            return ai1;
        }

        public static CCZCompressionFormat fromID(short word0)
        {
            CCZCompressionFormat acczcompressionformat[] = values();
            int i = acczcompressionformat.length;
            int j = 0;
            do
            {
                if (j >= i)
                {
                    throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat.getSimpleName()).append("-ID: '").append(word0).append("'.").toString());
                }
                CCZCompressionFormat cczcompressionformat = acczcompressionformat[j];
                if (cczcompressionformat.mID == word0)
                {
                    return cczcompressionformat;
                }
                j++;
            } while (true);
        }

        public static CCZCompressionFormat valueOf(String s)
        {
            return (CCZCompressionFormat)Enum.valueOf(org/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat, s);
        }

        public static CCZCompressionFormat[] values()
        {
            CCZCompressionFormat acczcompressionformat[] = ENUM$VALUES;
            int i = acczcompressionformat.length;
            CCZCompressionFormat acczcompressionformat1[] = new CCZCompressionFormat[i];
            System.arraycopy(acczcompressionformat, 0, acczcompressionformat1, 0, i);
            return acczcompressionformat1;
        }

        public InflaterInputStream wrap(InputStream inputstream)
            throws IOException
        {
            switch ($SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat()[ordinal()])
            {
            case 2: // '\002'
            default:
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat.getSimpleName()).append(": '").append(this).append("'.").toString());

            case 3: // '\003'
                return new GZIPInputStream(inputstream);

            case 1: // '\001'
                return new InflaterInputStream(inputstream, new Inflater());
            }
        }

        static 
        {
            ZLIB = new CCZCompressionFormat("ZLIB", 0, (short)0);
            BZIP2 = new CCZCompressionFormat("BZIP2", 1, (short)1);
            GZIP = new CCZCompressionFormat("GZIP", 2, (short)2);
            NONE = new CCZCompressionFormat("NONE", 3, (short)3);
            CCZCompressionFormat acczcompressionformat[] = new CCZCompressionFormat[4];
            acczcompressionformat[0] = ZLIB;
            acczcompressionformat[1] = BZIP2;
            acczcompressionformat[2] = GZIP;
            acczcompressionformat[3] = NONE;
            ENUM$VALUES = acczcompressionformat;
        }

        private CCZCompressionFormat(String s, int i, short word0)
        {
            super(s, i);
            mID = word0;
        }
    }

    public static class CCZHeader
    {

        static final byte MAGIC_IDENTIFIER[] = {
            67, 67, 90, 33
        };
        public static final int SIZE = 16;
        private final CCZCompressionFormat mCCZCompressionFormat;
        private final ByteBuffer mDataByteBuffer;

        private short getCCZCompressionFormatID()
        {
            return mDataByteBuffer.getShort(4);
        }

        public CCZCompressionFormat getCCZCompressionFormat()
        {
            return mCCZCompressionFormat;
        }

        public int getUncompressedSize()
        {
            return mDataByteBuffer.getInt(12);
        }

        public int getUserdata()
        {
            return mDataByteBuffer.getInt(8);
        }

        public short getVersion()
        {
            return mDataByteBuffer.getShort(6);
        }


        public CCZHeader(byte abyte0[])
        {
            mDataByteBuffer = ByteBuffer.wrap(abyte0);
            mDataByteBuffer.rewind();
            mDataByteBuffer.order(ByteOrder.BIG_ENDIAN);
            if (!ArrayUtils.equals(abyte0, 0, MAGIC_IDENTIFIER, 0, MAGIC_IDENTIFIER.length))
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid ")).append(getClass().getSimpleName()).append("!").toString());
            } else
            {
                mCCZCompressionFormat = CCZCompressionFormat.fromID(getCCZCompressionFormatID());
                return;
            }
        }
    }


    private CCZHeader mCCZHeader;

    public PVRCCZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat);
    }

    public PVRCCZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, itexturestatelistener);
    }

    public PVRCCZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, TextureOptions textureoptions)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, textureoptions);
    }

    public PVRCCZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, textureoptions, itexturestatelistener);
    }

    public PVRCCZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy);
    }

    public PVRCCZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, itexturestatelistener);
    }

    public PVRCCZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, TextureOptions textureoptions)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, textureoptions);
    }

    public PVRCCZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, textureoptions, itexturestatelistener);
    }

    public volatile InputStream getInputStream()
        throws IOException
    {
        return getInputStream();
    }

    public final InflaterInputStream getInputStream()
        throws IOException
    {
        InputStream inputstream = onGetInputStream();
        mCCZHeader = new CCZHeader(StreamUtils.streamToBytes(inputstream, 16));
        return mCCZHeader.getCCZCompressionFormat().wrap(inputstream);
    }

    public ByteBuffer getPVRTextureBuffer()
        throws IOException
    {
        InflaterInputStream inflaterinputstream = getInputStream();
        ByteBuffer bytebuffer;
        byte abyte0[] = new byte[mCCZHeader.getUncompressedSize()];
        StreamUtils.copy(inflaterinputstream, abyte0);
        bytebuffer = ByteBuffer.wrap(abyte0);
        StreamUtils.close(inflaterinputstream);
        return bytebuffer;
        Exception exception;
        exception;
        StreamUtils.close(inflaterinputstream);
        throw exception;
    }
}
