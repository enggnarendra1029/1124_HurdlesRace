// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.bounds;

import org.andengine.util.adt.spatial.bounds.util.FloatBoundsUtils;

// Referenced classes of package org.andengine.util.adt.bounds:
//            IFloatBounds

public class FloatBounds
    implements IFloatBounds
{

    private float mXMax;
    private float mXMin;
    private float mYMax;
    private float mYMin;

    public FloatBounds(float f, float f1)
    {
        set(f, f1);
    }

    public FloatBounds(float f, float f1, float f2, float f3)
    {
        set(f, f1, f2, f3);
    }

    public boolean contains(float f, float f1)
    {
        return FloatBoundsUtils.contains(mXMin, mYMin, mXMax, mYMax, f, f1);
    }

    public float getXMax()
    {
        return mXMax;
    }

    public float getXMin()
    {
        return mXMin;
    }

    public float getYMax()
    {
        return mYMax;
    }

    public float getYMin()
    {
        return mYMin;
    }

    public void set(float f, float f1)
    {
        set(f, f1, f, f1);
    }

    public void set(float f, float f1, float f2, float f3)
    {
        mXMin = f;
        mYMin = f1;
        mXMax = f2;
        mYMax = f3;
        if (f > f2)
        {
            throw new IllegalArgumentException((new StringBuilder("pXMin: '")).append(f).append("' must be smaller or equal to pXMax: '").append(f2).append("'.").toString());
        }
        if (f1 > f3)
        {
            throw new IllegalArgumentException((new StringBuilder("pYMin: '")).append(f1).append("' must be smaller or equal to pYMax: '").append(f3).append("'.").toString());
        } else
        {
            return;
        }
    }
}
