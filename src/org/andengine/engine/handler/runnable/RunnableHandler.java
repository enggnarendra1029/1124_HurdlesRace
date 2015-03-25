// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler.runnable;

import java.util.ArrayList;
import org.andengine.engine.handler.IUpdateHandler;

public class RunnableHandler
    implements IUpdateHandler
{

    private final ArrayList mRunnables = new ArrayList();

    public RunnableHandler()
    {
    }

    public void onUpdate(float f)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int i;
        arraylist = mRunnables;
        i = arraylist.size();
        int j = i - 1;
_L2:
        if (j < 0)
        {
            return;
        }
        ((Runnable)arraylist.remove(j)).run();
        j--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void postRunnable(Runnable runnable)
    {
        this;
        JVM INSTR monitorenter ;
        mRunnables.add(runnable);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void reset()
    {
        this;
        JVM INSTR monitorenter ;
        mRunnables.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
