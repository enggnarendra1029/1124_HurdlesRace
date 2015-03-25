// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler.timer;

import org.andengine.engine.handler.IUpdateHandler;

// Referenced classes of package org.andengine.engine.handler.timer:
//            ITimerCallback

public class TimerHandler
    implements IUpdateHandler
{

    private boolean mAutoReset;
    protected final ITimerCallback mTimerCallback;
    private boolean mTimerCallbackTriggered;
    private float mTimerSeconds;
    private float mTimerSecondsElapsed;

    public TimerHandler(float f, ITimerCallback itimercallback)
    {
        this(f, false, itimercallback);
    }

    public TimerHandler(float f, boolean flag, ITimerCallback itimercallback)
    {
        if (f <= 0.0F)
        {
            throw new IllegalStateException("pTimerSeconds must be > 0!");
        } else
        {
            mTimerSeconds = f;
            mAutoReset = flag;
            mTimerCallback = itimercallback;
            return;
        }
    }

    public float getTimerSeconds()
    {
        return mTimerSeconds;
    }

    public float getTimerSecondsElapsed()
    {
        return mTimerSecondsElapsed;
    }

    public boolean isAutoReset()
    {
        return mAutoReset;
    }

    public boolean isTimerCallbackTriggered()
    {
        return mTimerCallbackTriggered;
    }

    public void onUpdate(float f)
    {
        if (!mAutoReset) goto _L2; else goto _L1
_L1:
        mTimerSecondsElapsed = f + mTimerSecondsElapsed;
_L8:
        if (mTimerSecondsElapsed >= mTimerSeconds) goto _L4; else goto _L3
_L3:
        return;
_L4:
        mTimerSecondsElapsed = mTimerSecondsElapsed - mTimerSeconds;
        mTimerCallback.onTimePassed(this);
        continue; /* Loop/switch isn't completed */
_L2:
        if (mTimerCallbackTriggered) goto _L3; else goto _L5
_L5:
        mTimerSecondsElapsed = f + mTimerSecondsElapsed;
        if (mTimerSecondsElapsed < mTimerSeconds) goto _L3; else goto _L6
_L6:
        mTimerCallbackTriggered = true;
        mTimerCallback.onTimePassed(this);
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void reset()
    {
        mTimerCallbackTriggered = false;
        mTimerSecondsElapsed = 0.0F;
    }

    public void setAutoReset(boolean flag)
    {
        mAutoReset = flag;
    }

    public void setTimerCallbackTriggered(boolean flag)
    {
        mTimerCallbackTriggered = flag;
    }

    public void setTimerSeconds(float f)
    {
        if (f <= 0.0F)
        {
            throw new IllegalStateException("pTimerSeconds must be > 0!");
        } else
        {
            mTimerSeconds = f;
            return;
        }
    }
}
