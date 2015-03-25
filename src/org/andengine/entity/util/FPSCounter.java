// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.util;

import org.andengine.engine.handler.IUpdateHandler;

public class FPSCounter
    implements IUpdateHandler
{

    protected int mFrames;
    protected float mSecondsElapsed;

    public FPSCounter()
    {
    }

    public float getFPS()
    {
        return (float)mFrames / mSecondsElapsed;
    }

    public void onUpdate(float f)
    {
        mFrames = 1 + mFrames;
        mSecondsElapsed = f + mSecondsElapsed;
    }

    public void reset()
    {
        mFrames = 0;
        mSecondsElapsed = 0.0F;
    }
}
