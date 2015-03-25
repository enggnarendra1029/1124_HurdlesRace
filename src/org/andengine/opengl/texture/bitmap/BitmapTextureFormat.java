// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.bitmap;

import org.andengine.opengl.texture.PixelFormat;

public final class BitmapTextureFormat extends Enum
{

    private static int $SWITCH_TABLE$org$andengine$opengl$texture$PixelFormat[];
    public static final BitmapTextureFormat A_8;
    private static final BitmapTextureFormat ENUM$VALUES[];
    public static final BitmapTextureFormat RGBA_4444;
    public static final BitmapTextureFormat RGBA_8888;
    public static final BitmapTextureFormat RGB_565;
    private final android.graphics.Bitmap.Config mBitmapConfig;
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

    private BitmapTextureFormat(String s, int i, android.graphics.Bitmap.Config config, PixelFormat pixelformat)
    {
        super(s, i);
        mBitmapConfig = config;
        mPixelFormat = pixelformat;
    }

    public static BitmapTextureFormat fromPixelFormat(PixelFormat pixelformat)
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

        case 6: // '\006'
            return A_8;
        }
    }

    public static BitmapTextureFormat valueOf(String s)
    {
        return (BitmapTextureFormat)Enum.valueOf(org/andengine/opengl/texture/bitmap/BitmapTextureFormat, s);
    }

    public static BitmapTextureFormat[] values()
    {
        BitmapTextureFormat abitmaptextureformat[] = ENUM$VALUES;
        int i = abitmaptextureformat.length;
        BitmapTextureFormat abitmaptextureformat1[] = new BitmapTextureFormat[i];
        System.arraycopy(abitmaptextureformat, 0, abitmaptextureformat1, 0, i);
        return abitmaptextureformat1;
    }

    public android.graphics.Bitmap.Config getBitmapConfig()
    {
        return mBitmapConfig;
    }

    public PixelFormat getPixelFormat()
    {
        return mPixelFormat;
    }

    static 
    {
        RGBA_8888 = new BitmapTextureFormat("RGBA_8888", 0, android.graphics.Bitmap.Config.ARGB_8888, PixelFormat.RGBA_8888);
        RGB_565 = new BitmapTextureFormat("RGB_565", 1, android.graphics.Bitmap.Config.RGB_565, PixelFormat.RGB_565);
        RGBA_4444 = new BitmapTextureFormat("RGBA_4444", 2, android.graphics.Bitmap.Config.ARGB_4444, PixelFormat.RGBA_4444);
        A_8 = new BitmapTextureFormat("A_8", 3, android.graphics.Bitmap.Config.ALPHA_8, PixelFormat.A_8);
        BitmapTextureFormat abitmaptextureformat[] = new BitmapTextureFormat[4];
        abitmaptextureformat[0] = RGBA_8888;
        abitmaptextureformat[1] = RGB_565;
        abitmaptextureformat[2] = RGBA_4444;
        abitmaptextureformat[3] = A_8;
        ENUM$VALUES = abitmaptextureformat;
    }
}
