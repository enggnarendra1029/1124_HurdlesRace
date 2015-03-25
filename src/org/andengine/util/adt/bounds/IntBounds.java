// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.bounds;

import org.andengine.util.adt.spatial.bounds.util.IntBoundsUtils;

// Referenced classes of package org.andengine.util.adt.bounds:
//            IIntBounds

public class IntBounds
    implements IIntBounds
{

    private int mXMax;
    private int mXMin;
    private int mYMax;
    private int mYMin;

    public IntBounds(int i, int j)
    {
        set(i, j);
    }

    public IntBounds(int i, int j, int k, int l)
    {
        set(i, j, k, l);
    }

    public boolean contains(int i, int j)
    {
        return IntBoundsUtils.contains(mXMin, mYMin, mXMax, mYMax, i, j);
    }

    public int getXMax()
    {
        return mXMax;
    }

    public int getXMin()
    {
        return mXMin;
    }

    public int getYMax()
    {
        return mYMax;
    }

    public int getYMin()
    {
        return mYMin;
    }

    public void set(int i, int j)
    {
        set(i, j, i, j);
    }

    public void set(int i, int j, int k, int l)
    {
        mXMin = i;
        mYMin = j;
        mXMax = k;
        mYMax = l;
        if (i > k)
        {
            throw new IllegalArgumentException((new StringBuilder("pXMin: '")).append(i).append("' must be smaller or equal to pXMax: '").append(k).append("'.").toString());
        }
        if (j > l)
        {
            throw new IllegalArgumentException((new StringBuilder("pYMin: '")).append(j).append("' must be smaller or equal to pYMax: '").append(l).append("'.").toString());
        } else
        {
            return;
        }
    }
}
