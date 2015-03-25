// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import android.util.FloatMath;

// Referenced classes of package org.andengine.entity.modifier:
//            PathModifier

public static class mLengthChanged
{

    private int mIndex;
    private float mLength;
    private boolean mLengthChanged;
    private final float mXs[];
    private final float mYs[];

    private void updateLength()
    {
        float f = 0.0F;
        int i = -2 + mIndex;
        do
        {
            if (i < 0)
            {
                mLength = f;
                return;
            }
            f += getSegmentLength(i);
            i--;
        } while (true);
    }

    public getSegmentLength deepCopy()
    {
        return new <init>(this);
    }

    public float[] getCoordinatesX()
    {
        return mXs;
    }

    public float[] getCoordinatesY()
    {
        return mYs;
    }

    public float getLength()
    {
        if (mLengthChanged)
        {
            updateLength();
        }
        return mLength;
    }

    public float getSegmentLength(int i)
    {
        float af[] = mXs;
        float af1[] = mYs;
        int j = i + 1;
        float f = af[i] - af[j];
        float f1 = af1[i] - af1[j];
        return FloatMath.sqrt(f * f + f1 * f1);
    }

    public int getSize()
    {
        return mXs.length;
    }

    public mXs to(float f, float f1)
    {
        mXs[mIndex] = f;
        mYs[mIndex] = f1;
        mIndex = 1 + mIndex;
        mLengthChanged = true;
        return this;
    }

    public (int i)
    {
        mLengthChanged = false;
        mXs = new float[i];
        mYs = new float[i];
        mIndex = 0;
        mLengthChanged = false;
    }

    public mLengthChanged(mLengthChanged mlengthchanged)
    {
        mLengthChanged = false;
        int i = mlengthchanged.getSize();
        mXs = new float[i];
        mYs = new float[i];
        System.arraycopy(mlengthchanged.mXs, 0, mXs, 0, i);
        System.arraycopy(mlengthchanged.mYs, 0, mYs, 0, i);
        mIndex = mlengthchanged.mIndex;
        mLengthChanged = mlengthchanged.mLengthChanged;
        mLength = mlengthchanged.mLength;
    }

    public mLength(float af[], float af1[])
        throws IllegalArgumentException
    {
        mLengthChanged = false;
        if (af.length != af1.length)
        {
            throw new IllegalArgumentException("Coordinate-Arrays must have the same length.");
        } else
        {
            mXs = af;
            mYs = af1;
            mIndex = af.length;
            mLengthChanged = true;
            return;
        }
    }
}
