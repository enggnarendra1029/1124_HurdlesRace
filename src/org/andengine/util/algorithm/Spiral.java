// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm;

import org.andengine.util.algorithm.path.Direction;

public class Spiral
{

    private final int mCenterX;
    private final int mCenterY;
    private Direction mDirection;
    private int mDirectionSegmentIndex;
    private int mDirectionSegmentLength;
    private final int mStepSize;
    private int mX;
    private int mY;

    public Spiral(int i, int j)
    {
        this(i, j, 1);
    }

    public Spiral(int i, int j, int k)
    {
        mCenterX = i;
        mCenterY = j;
        mStepSize = k;
        mX = i;
        mY = j;
        mDirection = Direction.RIGHT;
        mDirectionSegmentLength = 1;
        mDirectionSegmentIndex = 0;
    }

    public int getCenterX()
    {
        return mCenterX;
    }

    public int getCenterY()
    {
        return mCenterY;
    }

    public int getX()
    {
        return mX;
    }

    public int getY()
    {
        return mY;
    }

    public void step()
    {
        mX = mX + mDirection.getDeltaX() * mStepSize;
        mY = mY + mDirection.getDeltaY() * mStepSize;
        mDirectionSegmentIndex = 1 + mDirectionSegmentIndex;
        if (mDirectionSegmentIndex == mDirectionSegmentLength)
        {
            mDirectionSegmentIndex = 0;
            mDirection = mDirection.rotateRight();
            if (mDirection.isHorizontal())
            {
                mDirectionSegmentLength = 1 + mDirectionSegmentLength;
            }
        }
    }
}
