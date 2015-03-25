// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.util;

import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.entity.util:
//            AverageFPSCounter

public class FPSLogger extends AverageFPSCounter
{

    protected float mLongestFrame;
    protected float mShortestFrame;

    public FPSLogger()
    {
        mShortestFrame = 3.402823E+38F;
        mLongestFrame = 1.401298E-45F;
    }

    public FPSLogger(float f)
    {
        super(f);
        mShortestFrame = 3.402823E+38F;
        mLongestFrame = 1.401298E-45F;
    }

    protected void onHandleAverageDurationElapsed(float f)
    {
        onLogFPS();
        mLongestFrame = 1.401298E-45F;
        mShortestFrame = 3.402823E+38F;
    }

    protected void onLogFPS()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Float.valueOf((float)mFrames / mSecondsElapsed);
        aobj[1] = Float.valueOf(1000F * mShortestFrame);
        aobj[2] = Float.valueOf(1000F * mLongestFrame);
        Debug.d(String.format("FPS: %.2f (MIN: %.0f ms | MAX: %.0f ms)", aobj));
    }

    public void onUpdate(float f)
    {
        super.onUpdate(f);
        mShortestFrame = Math.min(mShortestFrame, f);
        mLongestFrame = Math.max(mLongestFrame, f);
    }

    public void reset()
    {
        super.reset();
        mShortestFrame = 3.402823E+38F;
        mLongestFrame = 1.401298E-45F;
    }
}
