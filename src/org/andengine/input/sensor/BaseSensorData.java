// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor;

import java.util.Arrays;

public class BaseSensorData
{

    protected int mAccuracy;
    protected int mDisplayRotation;
    protected final float mValues[];

    public BaseSensorData(int i, int j)
    {
        mValues = new float[i];
        mDisplayRotation = j;
    }

    public int getAccuracy()
    {
        return mAccuracy;
    }

    public float[] getValues()
    {
        return mValues;
    }

    public void setAccuracy(int i)
    {
        mAccuracy = i;
    }

    public void setValues(float af[])
    {
        System.arraycopy(af, 0, mValues, 0, af.length);
    }

    public String toString()
    {
        return (new StringBuilder("Values: ")).append(Arrays.toString(mValues)).toString();
    }
}
