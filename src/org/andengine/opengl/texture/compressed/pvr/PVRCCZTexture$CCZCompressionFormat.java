// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr:
//            PVRCCZTexture

public static final class mID extends Enum
{

    private static int $SWITCH_TABLE$org$andengine$opengl$texture$compressed$pvr$PVRCCZTexture$CCZCompressionFormat[];
    public static final ressionFormat BZIP2;
    private static final ressionFormat ENUM$VALUES[];
    public static final ressionFormat GZIP;
    public static final ressionFormat NONE;
    public static final ressionFormat ZLIB;
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

    public static ressionFormat fromID(short word0)
    {
        ressionFormat aressionformat[] = values();
        int i = aressionformat.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(org/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat.getSimpleName()).append("-ID: '").append(word0).append("'.").toString());
            }
            ressionFormat ressionformat = aressionformat[j];
            if (ressionformat.mID == word0)
            {
                return ressionformat;
            }
            j++;
        } while (true);
    }

    public static mID valueOf(String s)
    {
        return (mID)Enum.valueOf(org/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat, s);
    }

    public static mID[] values()
    {
        mID amid[] = ENUM$VALUES;
        int i = amid.length;
        mID amid1[] = new ENUM.VALUES[i];
        System.arraycopy(amid, 0, amid1, 0, i);
        return amid1;
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
        ZLIB = new <init>("ZLIB", 0, (short)0);
        BZIP2 = new <init>("BZIP2", 1, (short)1);
        GZIP = new <init>("GZIP", 2, (short)2);
        NONE = new <init>("NONE", 3, (short)3);
        ordinal aordinal[] = new <init>[4];
        aordinal[0] = ZLIB;
        aordinal[1] = BZIP2;
        aordinal[2] = GZIP;
        aordinal[3] = NONE;
        ENUM$VALUES = aordinal;
    }

    private (String s, int i, short word0)
    {
        super(s, i);
        mID = word0;
    }
}
