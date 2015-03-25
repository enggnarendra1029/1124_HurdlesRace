// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr;

import android.opengl.GLES20;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.Texture;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy.GreedyPVRTexturePixelBufferStrategy;
import org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy.IPVRTexturePixelBufferStrategy;
import org.andengine.opengl.util.GLState;
import org.andengine.util.StreamUtils;
import org.andengine.util.adt.array.ArrayUtils;
import org.andengine.util.adt.io.out.ByteBufferOutputStream;
import org.andengine.util.debug.Debug;
import org.andengine.util.math.MathUtils;

public abstract class PVRTexture extends Texture
{
    public static final class PVRTextureFormat extends Enum
    {

        private static int $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat[];
        public static final PVRTextureFormat AI_88;
        public static final PVRTextureFormat A_8;
        private static final PVRTextureFormat ENUM$VALUES[];
        public static final PVRTextureFormat I_8;
        public static final PVRTextureFormat RGBA_4444;
        public static final PVRTextureFormat RGBA_5551;
        public static final PVRTextureFormat RGBA_8888;
        public static final PVRTextureFormat RGB_565;
        private final boolean mCompressed;
        private final int mID;
        private final PixelFormat mPixelFormat;

        static int[] $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()
        {
            int ai[] = $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat;
            if (ai != null)
            {
                return ai;
            }
            int ai1[] = new int[PixelFormat.values().length];
            try
            {
                ai1[PixelFormat.AI_88.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai1[PixelFormat.A_8.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai1[PixelFormat.I_8.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai1[PixelFormat.RGBA_4444.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                ai1[PixelFormat.RGBA_5551.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                ai1[PixelFormat.RGBA_8888.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                ai1[PixelFormat.RGB_565.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                ai1[PixelFormat.UNDEFINED.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror7) { }
            $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat = ai1;
            return ai1;
        }

        public static PVRTextureFormat fromID(int i)
        {
            PVRTextureFormat apvrtextureformat[] = values();
            int j = apvrtextureformat.length;
            int k = 0;
            do
            {
                if (k >= j)
                {
                    throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat.getSimpleName()).append("-ID: '").append(i).append("'.").toString());
                }
                PVRTextureFormat pvrtextureformat = apvrtextureformat[k];
                if (pvrtextureformat.mID == i)
                {
                    return pvrtextureformat;
                }
                k++;
            } while (true);
        }

        public static PVRTextureFormat fromPixelFormat(PixelFormat pixelformat)
            throws IllegalArgumentException
        {
            switch ($SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat()[pixelformat.ordinal()])
            {
            case 3: // '\003'
            default:
                throw new IllegalArgumentException((new StringBuilder("Unsupported ")).append(org/andengine/opengl/texture/PixelFormat.getName()).append(": '").append(pixelformat).append("'.").toString());

            case 4: // '\004'
                return RGBA_8888;

            case 2: // '\002'
                return RGBA_4444;

            case 5: // '\005'
                return RGB_565;
            }
        }

        public static PVRTextureFormat valueOf(String s)
        {
            return (PVRTextureFormat)Enum.valueOf(org/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat, s);
        }

        public static PVRTextureFormat[] values()
        {
            PVRTextureFormat apvrtextureformat[] = ENUM$VALUES;
            int i = apvrtextureformat.length;
            PVRTextureFormat apvrtextureformat1[] = new PVRTextureFormat[i];
            System.arraycopy(apvrtextureformat, 0, apvrtextureformat1, 0, i);
            return apvrtextureformat1;
        }

        public int getID()
        {
            return mID;
        }

        public PixelFormat getPixelFormat()
        {
            return mPixelFormat;
        }

        public boolean isCompressed()
        {
            return mCompressed;
        }

        static 
        {
            RGBA_4444 = new PVRTextureFormat("RGBA_4444", 0, 16, false, PixelFormat.RGBA_4444);
            RGBA_5551 = new PVRTextureFormat("RGBA_5551", 1, 17, false, PixelFormat.RGBA_5551);
            RGBA_8888 = new PVRTextureFormat("RGBA_8888", 2, 18, false, PixelFormat.RGBA_8888);
            RGB_565 = new PVRTextureFormat("RGB_565", 3, 19, false, PixelFormat.RGB_565);
            I_8 = new PVRTextureFormat("I_8", 4, 22, false, PixelFormat.I_8);
            AI_88 = new PVRTextureFormat("AI_88", 5, 23, false, PixelFormat.AI_88);
            A_8 = new PVRTextureFormat("A_8", 6, 27, false, PixelFormat.A_8);
            PVRTextureFormat apvrtextureformat[] = new PVRTextureFormat[7];
            apvrtextureformat[0] = RGBA_4444;
            apvrtextureformat[1] = RGBA_5551;
            apvrtextureformat[2] = RGBA_8888;
            apvrtextureformat[3] = RGB_565;
            apvrtextureformat[4] = I_8;
            apvrtextureformat[5] = AI_88;
            apvrtextureformat[6] = A_8;
            ENUM$VALUES = apvrtextureformat;
        }

        private PVRTextureFormat(String s, int i, int j, boolean flag, PixelFormat pixelformat)
        {
            super(s, i);
            mID = j;
            mCompressed = flag;
            mPixelFormat = pixelformat;
        }
    }

    public static class PVRTextureHeader
    {

        private static final int FORMAT_FLAG_MASK = 255;
        static final byte MAGIC_IDENTIFIER[] = {
            80, 86, 82, 33
        };
        public static final int SIZE = 52;
        private final ByteBuffer mDataByteBuffer;
        private final PVRTextureFormat mPVRTextureFormat;

        public int getBitmaskAlpha()
        {
            return mDataByteBuffer.getInt(40);
        }

        public int getBitmaskBlue()
        {
            return mDataByteBuffer.getInt(36);
        }

        public int getBitmaskGreen()
        {
            return mDataByteBuffer.getInt(32);
        }

        public int getBitmaskRed()
        {
            return mDataByteBuffer.getInt(28);
        }

        public int getBitsPerPixel()
        {
            return mDataByteBuffer.getInt(24);
        }

        public int getDataLength()
        {
            return mDataByteBuffer.getInt(20);
        }

        public int getFlags()
        {
            return mDataByteBuffer.getInt(16);
        }

        public int getHeight()
        {
            return mDataByteBuffer.getInt(4);
        }

        public int getNumMipmaps()
        {
            return mDataByteBuffer.getInt(12);
        }

        public int getPVRTag()
        {
            return mDataByteBuffer.getInt(44);
        }

        public PVRTextureFormat getPVRTextureFormat()
        {
            return mPVRTextureFormat;
        }

        public int getWidth()
        {
            return mDataByteBuffer.getInt(8);
        }

        public boolean hasAlpha()
        {
            return getBitmaskAlpha() != 0;
        }

        public int headerLength()
        {
            return mDataByteBuffer.getInt(0);
        }

        public int numSurfs()
        {
            return mDataByteBuffer.getInt(48);
        }


        public PVRTextureHeader(byte abyte0[])
        {
            mDataByteBuffer = ByteBuffer.wrap(abyte0);
            mDataByteBuffer.rewind();
            mDataByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            if (!ArrayUtils.equals(abyte0, 44, MAGIC_IDENTIFIER, 0, MAGIC_IDENTIFIER.length))
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid ")).append(getClass().getSimpleName()).append("!").toString());
            } else
            {
                mPVRTextureFormat = PVRTextureFormat.fromID(0xff & getFlags());
                return;
            }
        }
    }


    public static final int FLAG_ALPHA = 32768;
    public static final int FLAG_BUMPMAP = 1024;
    public static final int FLAG_CUBEMAP = 4096;
    public static final int FLAG_FALSEMIPCOL = 8192;
    public static final int FLAG_MIPMAP = 256;
    public static final int FLAG_TILING = 2048;
    public static final int FLAG_TWIDDLE = 512;
    public static final int FLAG_VERTICALFLIP = 0x10000;
    public static final int FLAG_VOLUME = 16384;
    private final PVRTextureHeader mPVRTextureHeader;
    private final IPVRTexturePixelBufferStrategy mPVRTexturePixelBufferStrategy;

    public PVRTexture(TextureManager texturemanager, PVRTextureFormat pvrtextureformat)
        throws IllegalArgumentException, IOException
    {
        this(texturemanager, pvrtextureformat, ((IPVRTexturePixelBufferStrategy) (new GreedyPVRTexturePixelBufferStrategy())), TextureOptions.DEFAULT, null);
    }

    public PVRTexture(TextureManager texturemanager, PVRTextureFormat pvrtextureformat, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        this(texturemanager, pvrtextureformat, ((IPVRTexturePixelBufferStrategy) (new GreedyPVRTexturePixelBufferStrategy())), TextureOptions.DEFAULT, itexturestatelistener);
    }

    public PVRTexture(TextureManager texturemanager, PVRTextureFormat pvrtextureformat, TextureOptions textureoptions)
        throws IllegalArgumentException, IOException
    {
        this(texturemanager, pvrtextureformat, ((IPVRTexturePixelBufferStrategy) (new GreedyPVRTexturePixelBufferStrategy())), textureoptions, null);
    }

    public PVRTexture(TextureManager texturemanager, PVRTextureFormat pvrtextureformat, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        this(texturemanager, pvrtextureformat, ((IPVRTexturePixelBufferStrategy) (new GreedyPVRTexturePixelBufferStrategy())), textureoptions, itexturestatelistener);
    }

    public PVRTexture(TextureManager texturemanager, PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy)
        throws IllegalArgumentException, IOException
    {
        this(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, TextureOptions.DEFAULT, null);
    }

    public PVRTexture(TextureManager texturemanager, PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        this(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, TextureOptions.DEFAULT, itexturestatelistener);
    }

    public PVRTexture(TextureManager texturemanager, PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, TextureOptions textureoptions)
        throws IllegalArgumentException, IOException
    {
        this(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, textureoptions, null);
    }

    public PVRTexture(TextureManager texturemanager, PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        InputStream inputstream;
        super(texturemanager, pvrtextureformat.getPixelFormat(), textureoptions, itexturestatelistener);
        mPVRTexturePixelBufferStrategy = ipvrtexturepixelbufferstrategy;
        inputstream = null;
        inputstream = getInputStream();
        mPVRTextureHeader = new PVRTextureHeader(StreamUtils.streamToBytes(inputstream, 52));
        StreamUtils.close(inputstream);
        if (mPVRTextureHeader.getPVRTextureFormat().getPixelFormat() != pvrtextureformat.getPixelFormat())
        {
            throw new IllegalArgumentException((new StringBuilder("Other PVRTextureFormat: '")).append(mPVRTextureHeader.getPVRTextureFormat().getPixelFormat()).append("' found than expected: '").append(pvrtextureformat.getPixelFormat()).append("'.").toString());
        }
        break MISSING_BLOCK_LABEL_127;
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
        if (mPVRTextureHeader.getPVRTextureFormat().isCompressed())
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid PVRTextureFormat: '")).append(mPVRTextureHeader.getPVRTextureFormat()).append("'.").toString());
        }
        if (hasMipMaps())
        {
            switch (textureoptions.mMinFilter)
            {
            default:
                Debug.w((new StringBuilder("This '")).append(getClass().getSimpleName()).append("' contains mipmaps, but the provided '").append(textureoptions.getClass().getSimpleName()).append("' don't have MipMaps enabled on the MinFilter!").toString());
                break;

            case 9984: 
            case 9985: 
            case 9986: 
            case 9987: 
                break;
            }
        }
        mUpdateOnHardwareNeeded = true;
        return;
    }

    public int getHeight()
    {
        return mPVRTextureHeader.getHeight();
    }

    public InputStream getInputStream()
        throws IOException
    {
        return onGetInputStream();
    }

    public ByteBuffer getPVRTextureBuffer()
        throws IOException
    {
        InputStream inputstream = getInputStream();
        ByteBuffer bytebuffer;
        ByteBufferOutputStream bytebufferoutputstream = new ByteBufferOutputStream(1024, 0x80000);
        StreamUtils.copy(inputstream, bytebufferoutputstream);
        bytebuffer = bytebufferoutputstream.toByteBuffer();
        StreamUtils.close(inputstream);
        return bytebuffer;
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
    }

    public PVRTextureHeader getPVRTextureHeader()
    {
        return mPVRTextureHeader;
    }

    public int getWidth()
    {
        return mPVRTextureHeader.getWidth();
    }

    public boolean hasMipMaps()
    {
        return mPVRTextureHeader.getNumMipmaps() > 0;
    }

    protected abstract InputStream onGetInputStream()
        throws IOException;

    protected void writeTextureToHardware(GLState glstate)
        throws IOException
    {
        org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy.IPVRTexturePixelBufferStrategy.IPVRTexturePixelBufferStrategyBufferManager ipvrtexturepixelbufferstrategybuffermanager = mPVRTexturePixelBufferStrategy.newPVRTexturePixelBufferStrategyManager(this);
        int i = getWidth();
        int j = getHeight();
        int k = mPVRTextureHeader.getDataLength();
        int l = mPVRTextureHeader.getBitsPerPixel() / 8;
        GLES20.glPixelStorei(3317, 1);
        int i1 = 0;
        int j1 = 0;
        do
        {
            if (j1 >= k)
            {
                GLES20.glPixelStorei(3317, 4);
                return;
            }
            if (i1 > 0 && (i != j || MathUtils.nextPowerOfTwo(i) != i))
            {
                Debug.w((new StringBuilder("Mipmap level '")).append(i1).append("' is not squared. Width: '").append(i).append("', height: '").append(j).append("'. Texture won't render correctly.").toString());
            }
            int k1 = l * (j * i);
            mPVRTexturePixelBufferStrategy.loadPVRTextureData(ipvrtexturepixelbufferstrategybuffermanager, i, j, l, mPixelFormat, i1, j1, k1);
            j1 += k1;
            i = Math.max(i / 2, 1);
            j = Math.max(j / 2, 1);
            i1++;
        } while (true);
    }
}
