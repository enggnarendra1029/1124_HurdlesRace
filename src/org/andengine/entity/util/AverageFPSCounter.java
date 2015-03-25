// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.util;


// Referenced classes of package org.andengine.entity.util:
//            FPSCounter

public abstract class AverageFPSCounter extends FPSCounter
{

    private static final float AVERAGE_DURATION_DEFAULT = 5F;
    protected final float mAverageDuration;

    public AverageFPSCounter()
    {
        this(5F);
    }

    public AverageFPSCounter(float f)
    {
        mAverageDuration = f;
    }

    protected abstract void onHandleAverageDurationElapsed(float f);

    public void onUpdate(float f)
    {
        super.onUpdate(f);
        if (mSecondsElapsed > mAverageDuration)
        {
            onHandleAverageDurationElapsed(getFPS());
            mSecondsElapsed = mSecondsElapsed - mAverageDuration;
            mFrames = 0;
        }
    }
}
