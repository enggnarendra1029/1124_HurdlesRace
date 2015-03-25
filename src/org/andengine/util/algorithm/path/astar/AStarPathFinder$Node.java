// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.path.astar;


// Referenced classes of package org.andengine.util.algorithm.path.astar:
//            AStarPathFinder

private static final class calculateID
    implements Comparable
{

    float mCost;
    final float mExpectedRestCost;
    final long mID;
    mY mParent;
    float mTotalCost;
    final int mX;
    final int mY;

    public static long calculateID(int i, int j)
    {
        return (long)i << 32 | (long)j;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((compareTo)obj);
    }

    public int compareTo(compareTo compareto)
    {
        float f = mTotalCost - compareto.mTotalCost;
        if (f > 0.0F)
        {
            return 1;
        }
        return f >= 0.0F ? 0 : -1;
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
                    return equals((equals)obj);
                }
            }
        }
        return flag;
    }

    public boolean equals(equals equals1)
    {
        return mID == equals1.mID;
    }

    public void setParent(mID mid, float f)
    {
        mParent = mid;
        mCost = f;
        mTotalCost = f + mExpectedRestCost;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(" [x=").append(mX).append(", y=").append(mY).append("]").toString();
    }

    public (int i, int j, float f)
    {
        mX = i;
        mY = j;
        mExpectedRestCost = f;
        mID = calculateID(i, j);
    }
}
