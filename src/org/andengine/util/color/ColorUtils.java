// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.color;

import android.graphics.Color;

// Referenced classes of package org.andengine.util.color:
//            Color

public class ColorUtils
{

    private static final float HSV_TO_COLOR[] = new float[3];
    private static final int HSV_TO_COLOR_HUE_INDEX = 0;
    private static final int HSV_TO_COLOR_SATURATION_INDEX = 1;
    private static final int HSV_TO_COLOR_VALUE_INDEX = 2;
    private static final int INT_BITS_TO_FLOAT_MASK = -1;

    public ColorUtils()
    {
    }

    public static org.andengine.util.color.Color convertABGRPackedIntToColor(int i)
    {
        float f = extractAlphaFromABGRPackedInt(i);
        float f1 = extractBlueFromABGRPackedInt(i);
        float f2 = extractGreenFromABGRPackedInt(i);
        return new org.andengine.util.color.Color(extractRedFromABGRPackedInt(i), f2, f1, f);
    }

    public static org.andengine.util.color.Color convertARGBPackedIntToColor(int i)
    {
        float f = extractAlphaFromARGBPackedInt(i);
        return new org.andengine.util.color.Color(extractRedFromARGBPackedInt(i), extractGreenFromARGBPackedInt(i), extractBlueFromARGBPackedInt(i), f);
    }

    public static final int convertHSVToARGBPackedInt(float f, float f1, float f2)
    {
        HSV_TO_COLOR[0] = f;
        HSV_TO_COLOR[1] = f1;
        HSV_TO_COLOR[2] = f2;
        return Color.HSVToColor(HSV_TO_COLOR);
    }

    public static final org.andengine.util.color.Color convertHSVToColor(float f, float f1, float f2)
    {
        return convertARGBPackedIntToColor(convertHSVToARGBPackedInt(f, f1, f2));
    }

    public static final float convertPackedIntToPackedFloat(int i)
    {
        return Float.intBitsToFloat(i & -1);
    }

    public static final float convertRGBAToABGRPackedFloat(float f, float f1, float f2, float f3)
    {
        return convertPackedIntToPackedFloat(convertRGBAToABGRPackedInt(f, f1, f2, f3));
    }

    public static final int convertRGBAToABGRPackedInt(float f, float f1, float f2, float f3)
    {
        return (int)(255F * f3) << 24 | (int)(255F * f2) << 16 | (int)(255F * f1) << 8 | (int)(255F * f) << 0;
    }

    public static final float convertRGBAToARGBPackedFloat(float f, float f1, float f2, float f3)
    {
        return convertPackedIntToPackedFloat(convertRGBAToARGBPackedInt(f, f1, f2, f3));
    }

    public static final int convertRGBAToARGBPackedInt(float f, float f1, float f2, float f3)
    {
        return (int)(255F * f3) << 24 | (int)(255F * f) << 16 | (int)(255F * f1) << 8 | (int)(255F * f2) << 0;
    }

    public static float extractAlphaFromABGRPackedInt(int i)
    {
        return (float)(0xff & i >> 24) / 255F;
    }

    public static float extractAlphaFromARGBPackedInt(int i)
    {
        return (float)(0xff & i >> 24) / 255F;
    }

    public static float extractBlueFromABGRPackedInt(int i)
    {
        return (float)(0xff & i >> 16) / 255F;
    }

    public static float extractBlueFromARGBPackedInt(int i)
    {
        return (float)(0xff & i >> 0) / 255F;
    }

    public static float extractGreenFromABGRPackedInt(int i)
    {
        return (float)(0xff & i >> 8) / 255F;
    }

    public static float extractGreenFromARGBPackedInt(int i)
    {
        return (float)(0xff & i >> 8) / 255F;
    }

    public static float extractRedFromABGRPackedInt(int i)
    {
        return (float)(0xff & i >> 0) / 255F;
    }

    public static float extractRedFromARGBPackedInt(int i)
    {
        return (float)(0xff & i >> 16) / 255F;
    }

}
