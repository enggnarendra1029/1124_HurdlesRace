// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.color;


// Referenced classes of package org.andengine.util.color:
//            ColorUtils

public class Color
{

    public static final int ABGR_PACKED_ALPHA_CLEAR = 0xffffff;
    public static final int ABGR_PACKED_ALPHA_SHIFT = 24;
    public static final int ABGR_PACKED_BLUE_CLEAR = 0xff00ffff;
    public static final int ABGR_PACKED_BLUE_SHIFT = 16;
    public static final int ABGR_PACKED_GREEN_CLEAR = -65281;
    public static final int ABGR_PACKED_GREEN_SHIFT = 8;
    public static final int ABGR_PACKED_RED_CLEAR = -256;
    public static final int ABGR_PACKED_RED_SHIFT = 0;
    public static final int ARGB_PACKED_ALPHA_CLEAR = 0xffffff;
    public static final int ARGB_PACKED_ALPHA_SHIFT = 24;
    public static final int ARGB_PACKED_BLUE_CLEAR = -256;
    public static final int ARGB_PACKED_BLUE_SHIFT = 0;
    public static final int ARGB_PACKED_GREEN_CLEAR = -65281;
    public static final int ARGB_PACKED_GREEN_SHIFT = 8;
    public static final int ARGB_PACKED_RED_CLEAR = 0xff00ffff;
    public static final int ARGB_PACKED_RED_SHIFT = 16;
    public static final Color BLACK;
    public static final float BLACK_ABGR_PACKED_FLOAT;
    public static final int BLACK_ABGR_PACKED_INT;
    public static final int BLACK_ARGB_PACKED_INT;
    public static final Color BLUE;
    public static final float BLUE_ABGR_PACKED_FLOAT;
    public static final int BLUE_ABGR_PACKED_INT;
    public static final int BLUE_ARGB_PACKED_INT;
    public static final Color CYAN;
    public static final float CYAN_ABGR_PACKED_FLOAT;
    public static final int CYAN_ABGR_PACKED_INT;
    public static final int CYAN_ARGB_PACKED_INT;
    public static final Color GREEN;
    public static final float GREEN_ABGR_PACKED_FLOAT;
    public static final int GREEN_ABGR_PACKED_INT;
    public static final int GREEN_ARGB_PACKED_INT;
    public static final Color PINK;
    public static final float PINK_ABGR_PACKED_FLOAT;
    public static final int PINK_ABGR_PACKED_INT;
    public static final int PINK_ARGB_PACKED_INT;
    public static final Color RED;
    public static final float RED_ABGR_PACKED_FLOAT;
    public static final int RED_ABGR_PACKED_INT;
    public static final int RED_ARGB_PACKED_INT;
    public static final Color TRANSPARENT;
    public static final float TRANSPARENT_ABGR_PACKED_FLOAT;
    public static final int TRANSPARENT_ABGR_PACKED_INT;
    public static final int TRANSPARENT_ARGB_PACKED_INT;
    public static final Color WHITE;
    public static final float WHITE_ABGR_PACKED_FLOAT;
    public static final int WHITE_ABGR_PACKED_INT;
    public static final int WHITE_ARGB_PACKED_INT;
    public static final Color YELLOW;
    public static final float YELLOW_ABGR_PACKED_FLOAT;
    public static final int YELLOW_ABGR_PACKED_INT;
    public static final int YELLOW_ARGB_PACKED_INT;
    private float mABGRPackedFloat;
    private int mABGRPackedInt;
    private float mAlpha;
    private float mBlue;
    private float mGreen;
    private float mRed;

    public Color(float f, float f1, float f2)
    {
        this(f, f1, f2, 1.0F);
    }

    public Color(float f, float f1, float f2, float f3)
    {
        set(f, f1, f2, f3);
    }

    public Color(Color color)
    {
        set(color);
    }

    private final void packABGR()
    {
        mABGRPackedInt = ColorUtils.convertRGBAToABGRPackedInt(mRed, mGreen, mBlue, mAlpha);
        mABGRPackedFloat = ColorUtils.convertPackedIntToPackedFloat(mABGRPackedInt);
    }

    private final void packABGRAlpha()
    {
        mABGRPackedInt = 0xffffff & mABGRPackedInt | (int)(255F * mAlpha) << 24;
        mABGRPackedFloat = ColorUtils.convertPackedIntToPackedFloat(mABGRPackedInt);
    }

    private final void packABGRBlue()
    {
        mABGRPackedInt = 0xff00ffff & mABGRPackedInt | (int)(255F * mBlue) << 0xff00ffff;
        mABGRPackedFloat = ColorUtils.convertPackedIntToPackedFloat(mABGRPackedInt);
    }

    private final void packABGRGreen()
    {
        mABGRPackedInt = 0xffff00ff & mABGRPackedInt | (int)(255F * mGreen) << -65281;
        mABGRPackedFloat = ColorUtils.convertPackedIntToPackedFloat(mABGRPackedInt);
    }

    private final void packABGRRed()
    {
        mABGRPackedInt = 0xffffff00 & mABGRPackedInt | (int)(255F * mRed) << -256;
        mABGRPackedFloat = ColorUtils.convertPackedIntToPackedFloat(mABGRPackedInt);
    }

    public boolean equals(Object obj)
    {
        boolean flag;
        if (this == obj)
        {
            flag = true;
        } else
        {
            flag = false;
            if (obj != null)
            {
                Class class1 = getClass();
                Class class2 = obj.getClass();
                flag = false;
                if (class1 == class2)
                {
                    return equals((Color)obj);
                }
            }
        }
        return flag;
    }

    public boolean equals(Color color)
    {
        return mABGRPackedInt == color.mABGRPackedInt;
    }

    public final float getABGRPackedFloat()
    {
        return mABGRPackedFloat;
    }

    public final int getABGRPackedInt()
    {
        return mABGRPackedInt;
    }

    public final int getARGBPackedInt()
    {
        return ColorUtils.convertRGBAToARGBPackedInt(mRed, mGreen, mBlue, mAlpha);
    }

    public final float getAlpha()
    {
        return mAlpha;
    }

    public final float getBlue()
    {
        return mBlue;
    }

    public final float getGreen()
    {
        return mGreen;
    }

    public final float getRed()
    {
        return mRed;
    }

    public int hashCode()
    {
        return mABGRPackedInt;
    }

    public final void mix(Color color, float f, Color color1, float f1)
    {
        set(f * color.mRed + f1 * color1.mRed, f * color.mGreen + f1 * color1.mGreen, f * color.mBlue + f1 * color1.mBlue, f * color.mAlpha + f1 * color1.mAlpha);
    }

    public final void reset()
    {
        set(WHITE);
    }

    public final void set(float f, float f1, float f2)
    {
        mRed = f;
        mGreen = f1;
        mBlue = f2;
        packABGR();
    }

    public final void set(float f, float f1, float f2, float f3)
    {
        mRed = f;
        mGreen = f1;
        mBlue = f2;
        mAlpha = f3;
        packABGR();
    }

    public final void set(Color color)
    {
        mRed = color.mRed;
        mGreen = color.mGreen;
        mBlue = color.mBlue;
        mAlpha = color.mAlpha;
        mABGRPackedInt = color.mABGRPackedInt;
        mABGRPackedFloat = color.mABGRPackedFloat;
    }

    public final void setAlpha(float f)
    {
        mAlpha = f;
        packABGRAlpha();
    }

    public final boolean setAlphaChecking(float f)
    {
        if (mAlpha != f)
        {
            mAlpha = f;
            packABGRAlpha();
            return true;
        } else
        {
            return false;
        }
    }

    public final void setBlue(float f)
    {
        mBlue = f;
        packABGRBlue();
    }

    public final boolean setBlueChecking(float f)
    {
        if (mBlue != f)
        {
            mBlue = f;
            packABGRBlue();
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean setChecking(float f, float f1, float f2)
    {
        if (mRed != f || mGreen != f1 || mBlue != f2)
        {
            mRed = f;
            mGreen = f1;
            mBlue = f2;
            packABGR();
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean setChecking(float f, float f1, float f2, float f3)
    {
        if (mAlpha != f3 || mRed != f || mGreen != f1 || mBlue != f2)
        {
            mRed = f;
            mGreen = f1;
            mBlue = f2;
            mAlpha = f3;
            packABGR();
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean setChecking(Color color)
    {
        if (mABGRPackedInt != color.mABGRPackedInt)
        {
            mRed = color.mRed;
            mGreen = color.mGreen;
            mBlue = color.mBlue;
            mAlpha = color.mAlpha;
            mABGRPackedInt = color.mABGRPackedInt;
            mABGRPackedFloat = color.mABGRPackedFloat;
            return true;
        } else
        {
            return false;
        }
    }

    public final void setGreen(float f)
    {
        mGreen = f;
        packABGRGreen();
    }

    public final boolean setGreenChecking(float f)
    {
        if (mGreen != f)
        {
            mGreen = f;
            packABGRGreen();
            return true;
        } else
        {
            return false;
        }
    }

    public final void setRed(float f)
    {
        mRed = f;
        packABGRRed();
    }

    public final boolean setRedChecking(float f)
    {
        if (mRed != f)
        {
            mRed = f;
            packABGRRed();
            return true;
        } else
        {
            return false;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("[Red: ").append(mRed).append(", Green: ").append(mGreen).append(", Blue: ").append(mBlue).append(", Alpha: ").append(mAlpha).append("]").toString();
    }

    static 
    {
        WHITE = new Color(1.0F, 1.0F, 1.0F, 1.0F);
        BLACK = new Color(0.0F, 0.0F, 0.0F, 1.0F);
        RED = new Color(1.0F, 0.0F, 0.0F, 1.0F);
        YELLOW = new Color(1.0F, 1.0F, 0.0F, 1.0F);
        GREEN = new Color(0.0F, 1.0F, 0.0F, 1.0F);
        CYAN = new Color(0.0F, 1.0F, 1.0F, 1.0F);
        BLUE = new Color(0.0F, 0.0F, 1.0F, 1.0F);
        PINK = new Color(1.0F, 0.0F, 1.0F, 1.0F);
        TRANSPARENT = new Color(0.0F, 0.0F, 0.0F, 0.0F);
        WHITE_ABGR_PACKED_INT = WHITE.getABGRPackedInt();
        BLACK_ABGR_PACKED_INT = BLACK.getABGRPackedInt();
        RED_ABGR_PACKED_INT = RED.getABGRPackedInt();
        YELLOW_ABGR_PACKED_INT = YELLOW.getABGRPackedInt();
        GREEN_ABGR_PACKED_INT = GREEN.getABGRPackedInt();
        CYAN_ABGR_PACKED_INT = CYAN.getABGRPackedInt();
        BLUE_ABGR_PACKED_INT = BLUE.getABGRPackedInt();
        PINK_ABGR_PACKED_INT = PINK.getABGRPackedInt();
        TRANSPARENT_ABGR_PACKED_INT = TRANSPARENT.getABGRPackedInt();
        WHITE_ABGR_PACKED_FLOAT = WHITE.getABGRPackedFloat();
        BLACK_ABGR_PACKED_FLOAT = BLACK.getABGRPackedFloat();
        RED_ABGR_PACKED_FLOAT = RED.getABGRPackedFloat();
        YELLOW_ABGR_PACKED_FLOAT = YELLOW.getABGRPackedFloat();
        GREEN_ABGR_PACKED_FLOAT = GREEN.getABGRPackedFloat();
        CYAN_ABGR_PACKED_FLOAT = CYAN.getABGRPackedFloat();
        BLUE_ABGR_PACKED_FLOAT = BLUE.getABGRPackedFloat();
        PINK_ABGR_PACKED_FLOAT = PINK.getABGRPackedFloat();
        TRANSPARENT_ABGR_PACKED_FLOAT = TRANSPARENT.getABGRPackedFloat();
        WHITE_ARGB_PACKED_INT = WHITE.getARGBPackedInt();
        BLACK_ARGB_PACKED_INT = BLACK.getARGBPackedInt();
        RED_ARGB_PACKED_INT = RED.getARGBPackedInt();
        YELLOW_ARGB_PACKED_INT = YELLOW.getARGBPackedInt();
        GREEN_ARGB_PACKED_INT = GREEN.getARGBPackedInt();
        CYAN_ARGB_PACKED_INT = CYAN.getARGBPackedInt();
        BLUE_ARGB_PACKED_INT = BLUE.getARGBPackedInt();
        PINK_ARGB_PACKED_INT = PINK.getARGBPackedInt();
        TRANSPARENT_ARGB_PACKED_INT = TRANSPARENT.getARGBPackedInt();
    }
}
