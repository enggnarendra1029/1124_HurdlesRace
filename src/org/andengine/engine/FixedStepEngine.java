// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine;

import org.andengine.engine.options.EngineOptions;

// Referenced classes of package org.andengine.engine:
//            Engine

public class FixedStepEngine extends Engine
{

    private long mSecondsElapsedAccumulator;
    private final long mStepLength;

    public FixedStepEngine(EngineOptions engineoptions, int i)
    {
        super(engineoptions);
        mStepLength = 0x3b9aca00L / (long)i;
    }

    public void onUpdate(long l)
        throws InterruptedException
    {
        mSecondsElapsedAccumulator = l + mSecondsElapsedAccumulator;
        long l1 = mStepLength;
        do
        {
            if (mSecondsElapsedAccumulator < l1)
            {
                return;
            }
            super.onUpdate(l1);
            mSecondsElapsedAccumulator = mSecondsElapsedAccumulator - l1;
        } while (true);
    }
}
