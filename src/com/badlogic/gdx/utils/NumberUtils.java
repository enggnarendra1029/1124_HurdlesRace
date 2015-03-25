// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;


public class NumberUtils
{

    public NumberUtils()
    {
    }

    public static long doubleToLongBits(double d)
    {
        return Double.doubleToLongBits(d);
    }

    public static int floatToIntBits(float f)
    {
        return Float.floatToIntBits(f);
    }

    public static int floatToIntColor(float f)
    {
        return Float.floatToRawIntBits(f);
    }

    public static int floatToRawIntBits(float f)
    {
        return Float.floatToRawIntBits(f);
    }

    public static float intBitsToFloat(int i)
    {
        return Float.intBitsToFloat(i);
    }

    public static float intToFloatColor(int i)
    {
        return Float.intBitsToFloat(0xfeffffff & i);
    }

    public static double longBitsToDouble(long l)
    {
        return Double.longBitsToDouble(l);
    }
}
