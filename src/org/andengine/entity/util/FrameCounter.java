// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.util;

import org.andengine.engine.handler.IUpdateHandler;

public class FrameCounter
    implements IUpdateHandler
{

    private int mFrames;

    public FrameCounter()
    {
    }

    public int getFrames()
    {
        return mFrames;
    }

    public void onUpdate(float f)
    {
        mFrames = 1 + mFrames;
    }

    public void reset()
    {
        mFrames = 0;
    }
}
