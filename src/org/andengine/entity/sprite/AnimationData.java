// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;

import java.util.Arrays;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.entity.sprite:
//            IAnimationData

public class AnimationData
    implements IAnimationData
{

    private long mAnimationDuration;
    private int mFirstFrameIndex;
    private int mFrameCount;
    private long mFrameDurations[];
    private long mFrameEndsInNanoseconds[];
    private int mFrames[];
    private int mLoopCount;

    public AnimationData()
    {
    }

    public AnimationData(long l, int i)
    {
        set(l, i);
    }

    public AnimationData(long l, int i, int j)
    {
        set(l, i, j);
    }

    public AnimationData(long l, int i, boolean flag)
    {
        set(l, i, flag);
    }

    public AnimationData(IAnimationData ianimationdata)
    {
        set(ianimationdata);
    }

    public AnimationData(long al[])
    {
        set(al);
    }

    public AnimationData(long al[], int i)
    {
        set(al, i);
    }

    public AnimationData(long al[], int i, int j, int k)
    {
        set(al, i, j, k);
    }

    public AnimationData(long al[], int i, int j, boolean flag)
    {
        set(al, i, j, flag);
    }

    public AnimationData(long al[], boolean flag)
    {
        set(al, flag);
    }

    public AnimationData(long al[], int ai[], int i)
    {
        set(al, ai, i);
    }

    private static long[] fillFrameDurations(long l, int i)
    {
        long al[] = new long[i];
        Arrays.fill(al, l);
        return al;
    }

    private void set(long al[], int i, int ai[], int j, int k)
    {
        if (al.length != i)
        {
            throw new IllegalArgumentException("pFrameDurations does not equal pFrameCount!");
        }
        mFrameDurations = al;
        mFrameCount = i;
        mFrames = ai;
        mFirstFrameIndex = j;
        mLoopCount = k;
        if (mFrameEndsInNanoseconds == null || mFrameCount > mFrameEndsInNanoseconds.length)
        {
            mFrameEndsInNanoseconds = new long[mFrameCount];
        }
        long al1[] = mFrameEndsInNanoseconds;
        MathUtils.arraySumInto(mFrameDurations, al1, 0xf4240L);
        mAnimationDuration = al1[-1 + mFrameCount];
    }

    public int calculateCurrentFrameIndex(long l)
    {
        long al[];
        int i;
        int j;
        al = mFrameEndsInNanoseconds;
        i = mFrameCount;
        j = 0;
_L6:
        if (j < i) goto _L2; else goto _L1
_L1:
        j = i - 1;
_L4:
        return j;
_L2:
        if (al[j] > l) goto _L4; else goto _L3
_L3:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public IAnimationData deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new AnimationData(this);
    }

    public long getAnimationDuration()
    {
        return mAnimationDuration;
    }

    public int getFirstFrameIndex()
    {
        return mFirstFrameIndex;
    }

    public int getFrameCount()
    {
        return mFrameCount;
    }

    public long[] getFrameDurations()
    {
        return mFrameDurations;
    }

    public int[] getFrames()
    {
        return mFrames;
    }

    public int getLoopCount()
    {
        return mLoopCount;
    }

    public void set(long l, int i)
    {
        set(l, i, true);
    }

    public void set(long l, int i, int j)
    {
        set(fillFrameDurations(l, i), j);
    }

    public void set(long l, int i, boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = -1;
        } else
        {
            byte0 = 0;
        }
        set(l, i, byte0);
    }

    public void set(IAnimationData ianimationdata)
    {
        set(ianimationdata.getFrameDurations(), ianimationdata.getFrameCount(), ianimationdata.getFrames(), ianimationdata.getFirstFrameIndex(), ianimationdata.getLoopCount());
    }

    public void set(long al[])
    {
        set(al, true);
    }

    public void set(long al[], int i)
    {
        set(al, 0, -1 + al.length, i);
    }

    public void set(long al[], int i, int j)
    {
        set(al, i, j, true);
    }

    public void set(long al[], int i, int j, int k)
    {
        set(al, 1 + (j - i), null, i, k);
        if (i + 1 > j)
        {
            throw new IllegalArgumentException("An animation needs at least two tiles to animate between.");
        } else
        {
            return;
        }
    }

    public void set(long al[], int i, int j, boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = -1;
        } else
        {
            byte0 = 0;
        }
        set(al, i, j, byte0);
    }

    public void set(long al[], boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = -1;
        } else
        {
            byte0 = 0;
        }
        set(al, byte0);
    }

    public void set(long al[], int ai[])
    {
        set(al, ai, true);
    }

    public void set(long al[], int ai[], int i)
    {
        set(al, ai.length, ai, 0, i);
    }

    public void set(long al[], int ai[], boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = -1;
        } else
        {
            byte0 = 0;
        }
        set(al, ai, byte0);
    }
}
