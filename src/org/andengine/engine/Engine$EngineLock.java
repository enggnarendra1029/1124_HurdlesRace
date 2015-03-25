// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package org.andengine.engine:
//            Engine

public static class k extends ReentrantLock
{

    private static final long serialVersionUID = 0x950a7e3cc23e81eL;
    final AtomicBoolean mDrawing = new AtomicBoolean(false);
    final Condition mDrawingCondition = newCondition();

    void notifyCanDraw()
    {
        mDrawing.set(true);
        mDrawingCondition.signalAll();
    }

    void notifyCanUpdate()
    {
        mDrawing.set(false);
        mDrawingCondition.signalAll();
    }

    void waitUntilCanDraw()
        throws InterruptedException
    {
        do
        {
            if (mDrawing.get())
            {
                return;
            }
            mDrawingCondition.await();
        } while (true);
    }

    void waitUntilCanUpdate()
        throws InterruptedException
    {
        do
        {
            if (!mDrawing.get())
            {
                return;
            }
            mDrawingCondition.await();
        } while (true);
    }

    public an(boolean flag)
    {
        super(flag);
    }
}
