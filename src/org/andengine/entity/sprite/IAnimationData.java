// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;


public interface IAnimationData
{

    public static final int LOOP_CONTINUOUS = -1;

    public abstract int calculateCurrentFrameIndex(long l);

    public abstract IAnimationData deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;

    public abstract long getAnimationDuration();

    public abstract int getFirstFrameIndex();

    public abstract int getFrameCount();

    public abstract long[] getFrameDurations();

    public abstract int[] getFrames();

    public abstract int getLoopCount();

    public abstract void set(long l, int i);

    public abstract void set(long l, int i, int j);

    public abstract void set(long l, int i, boolean flag);

    public abstract void set(IAnimationData ianimationdata);

    public abstract void set(long al[]);

    public abstract void set(long al[], int i);

    public abstract void set(long al[], int i, int j);

    public abstract void set(long al[], int i, int j, int k);

    public abstract void set(long al[], int i, int j, boolean flag);

    public abstract void set(long al[], boolean flag);

    public abstract void set(long al[], int ai[]);

    public abstract void set(long al[], int ai[], int i);

    public abstract void set(long al[], int ai[], boolean flag);
}
