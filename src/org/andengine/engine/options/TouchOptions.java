// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options;


public class TouchOptions
{

    private static final long TOUCHEVENT_INTERVAL_MILLISECONDS_DEFAULT = 20L;
    private boolean mNeedsMultiTouch;
    private long mTouchEventIntervalMilliseconds;

    public TouchOptions()
    {
        mTouchEventIntervalMilliseconds = 20L;
    }

    public long getTouchEventIntervalMilliseconds()
    {
        return mTouchEventIntervalMilliseconds;
    }

    public boolean needsMultiTouch()
    {
        return mNeedsMultiTouch;
    }

    public TouchOptions setNeedsMultiTouch(boolean flag)
    {
        mNeedsMultiTouch = flag;
        return this;
    }

    public void setTouchEventIntervalMilliseconds(long l)
    {
        mTouchEventIntervalMilliseconds = l;
    }
}
