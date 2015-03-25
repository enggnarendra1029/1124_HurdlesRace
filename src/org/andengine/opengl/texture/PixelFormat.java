// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture;


public final class PixelFormat extends Enum
{

    public static final PixelFormat AI_88;
    public static final PixelFormat A_8;
    private static final PixelFormat ENUM$VALUES[];
    public static final PixelFormat I_8;
    public static final PixelFormat RGBA_4444;
    public static final PixelFormat RGBA_5551;
    public static final PixelFormat RGBA_8888;
    public static final PixelFormat RGB_565;
    public static final PixelFormat UNDEFINED;
    private final int mBitsPerPixel;
    private final int mGLFormat;
    private final int mGLInternalFormat;
    private final int mGLType;

    private PixelFormat(String s, int i, int j, int k, int l, int i1)
    {
        super(s, i);
        mGLInternalFormat = j;
        mGLFormat = k;
        mGLType = l;
        mBitsPerPixel = i1;
    }

    public static PixelFormat valueOf(String s)
    {
        return (PixelFormat)Enum.valueOf(org/andengine/opengl/texture/PixelFormat, s);
    }

    public static PixelFormat[] values()
    {
        PixelFormat apixelformat[] = ENUM$VALUES;
        int i = apixelformat.length;
        PixelFormat apixelformat1[] = new PixelFormat[i];
        System.arraycopy(apixelformat, 0, apixelformat1, 0, i);
        return apixelformat1;
    }

    public int getBitsPerPixel()
    {
        return mBitsPerPixel;
    }

    public int getGLFormat()
    {
        return mGLFormat;
    }

    public int getGLInternalFormat()
    {
        return mGLInternalFormat;
    }

    public int getGLType()
    {
        return mGLType;
    }

    static 
    {
        UNDEFINED = new PixelFormat("UNDEFINED", 0, -1, -1, -1, -1);
        RGBA_4444 = new PixelFormat("RGBA_4444", 1, 6408, 6408, 32819, 16);
        RGBA_5551 = new PixelFormat("RGBA_5551", 2, 6407, 6408, 32820, 16);
        RGBA_8888 = new PixelFormat("RGBA_8888", 3, 6408, 6408, 5121, 32);
        RGB_565 = new PixelFormat("RGB_565", 4, 6407, 6407, 33635, 16);
        A_8 = new PixelFormat("A_8", 5, 6406, 6406, 5121, 8);
        I_8 = new PixelFormat("I_8", 6, 6409, 6409, 5121, 8);
        AI_88 = new PixelFormat("AI_88", 7, 6410, 6410, 5121, 16);
        PixelFormat apixelformat[] = new PixelFormat[8];
        apixelformat[0] = UNDEFINED;
        apixelformat[1] = RGBA_4444;
        apixelformat[2] = RGBA_5551;
        apixelformat[3] = RGBA_8888;
        apixelformat[4] = RGB_565;
        apixelformat[5] = A_8;
        apixelformat[6] = I_8;
        apixelformat[7] = AI_88;
        ENUM$VALUES = apixelformat;
    }
}
