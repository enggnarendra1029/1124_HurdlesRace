// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.path;


// Referenced classes of package org.andengine.util.algorithm.path:
//            Direction

public class Path
{

    private final int mXs[];
    private final int mYs[];

    public Path(int i)
    {
        mXs = new int[i];
        mYs = new int[i];
    }

    public boolean contains(int i, int j)
    {
        int ai[] = mXs;
        int ai1[] = mYs;
        int k = -1 + getLength();
        do
        {
            if (k < 0)
            {
                return false;
            }
            if (ai[k] == i && ai1[k] == j)
            {
                return true;
            }
            k--;
        } while (true);
    }

    public Direction getDirectionToNextStep(int i)
    {
        if (i == -1 + getLength())
        {
            return null;
        } else
        {
            return Direction.fromDelta(getX(i + 1) - getX(i), getY(i + 1) - getY(i));
        }
    }

    public Direction getDirectionToPreviousStep(int i)
    {
        if (i == 0)
        {
            return null;
        } else
        {
            return Direction.fromDelta(getX(i - 1) - getX(i), getY(i - 1) - getY(i));
        }
    }

    public int getFromX()
    {
        return getX(0);
    }

    public int getFromY()
    {
        return getY(0);
    }

    public int getLength()
    {
        return mXs.length;
    }

    public int getToX()
    {
        return getX(-1 + getLength());
    }

    public int getToY()
    {
        return getY(-1 + getLength());
    }

    public int getX(int i)
    {
        return mXs[i];
    }

    public int getY(int i)
    {
        return mYs[i];
    }

    public void set(int i, int j, int k)
    {
        mXs[i] = j;
        mYs[i] = k;
    }
}
