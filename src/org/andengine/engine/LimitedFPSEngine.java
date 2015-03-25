// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine;

import org.andengine.engine.options.EngineOptions;

// Referenced classes of package org.andengine.engine:
//            Engine

public class LimitedFPSEngine extends Engine
{

    private final long mPreferredFrameLengthNanoseconds;

    public LimitedFPSEngine(EngineOptions engineoptions, int i)
    {
        super(engineoptions);
        mPreferredFrameLengthNanoseconds = 0x3b9aca00L / (long)i;
    }

    public void onUpdate(long l)
        throws InterruptedException
    {
        long l1 = mPreferredFrameLengthNanoseconds - l;
        if (l1 <= 0L)
        {
            super.onUpdate(l);
            return;
        } else
        {
            Thread.sleep((int)(l1 / 0xf4240L));
            super.onUpdate(l + l1);
            return;
        }
    }
}
