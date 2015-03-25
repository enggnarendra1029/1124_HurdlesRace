// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import android.view.MotionEvent;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.engine.handler.timer.ITimerCallback;
import org.andengine.engine.handler.timer.TimerHandler;
import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.input.touch.detector:
//            HoldDetector

public class ContinuousHoldDetector extends HoldDetector
    implements IUpdateHandler
{

    private static final float TIME_BETWEEN_UPDATES_DEFAULT = 0.1F;
    private final TimerHandler mTimerHandler;

    public ContinuousHoldDetector(long l, float f, float f1, HoldDetector.IHoldDetectorListener iholddetectorlistener)
    {
        super(l, f, iholddetectorlistener);
        mTimerHandler = new TimerHandler(f1, true, new ITimerCallback() {

            final ContinuousHoldDetector this$0;

            public void onTimePassed(TimerHandler timerhandler)
            {
                fireListener();
            }

            
            {
                this$0 = ContinuousHoldDetector.this;
                super();
            }
        });
    }

    public ContinuousHoldDetector(HoldDetector.IHoldDetectorListener iholddetectorlistener)
    {
        this(200L, 10F, 0.1F, iholddetectorlistener);
    }

    void fireListener()
    {
        if (mPointerID != -1)
        {
            long l = System.currentTimeMillis() - mDownTimeMilliseconds;
            if (l >= mTriggerHoldMinimumMilliseconds)
            {
                if (mTriggering)
                {
                    triggerOnHold(l);
                } else
                if (!mMaximumDistanceExceeded)
                {
                    triggerOnHoldStarted();
                    return;
                }
            }
        }
    }

    public boolean onManagedTouchEvent(TouchEvent touchevent)
    {
        MotionEvent motionevent = touchevent.getMotionEvent();
        touchevent.getAction();
        JVM INSTR tableswitch 0 3: default 40
    //                   0 42
    //                   1 149
    //                   2 57
    //                   3 149;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return false;
_L2:
        if (mPointerID == -1)
        {
            prepareHold(touchevent);
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (mPointerID != touchevent.getPointerID())
        {
            continue; /* Loop/switch isn't completed */
        }
        mHoldX = touchevent.getX();
        mHoldY = touchevent.getY();
        if (mMaximumDistanceExceeded || Math.abs(mDownX - motionevent.getX()) > mTriggerHoldMaximumDistance) goto _L6; else goto _L5
_L5:
        boolean flag;
        int i;
        i = Math.abs(mDownY - motionevent.getY()) != mTriggerHoldMaximumDistance;
        flag = false;
        if (i > 0) goto _L6; else goto _L7
_L7:
        mMaximumDistanceExceeded = flag;
        return true;
_L6:
        flag = true;
          goto _L7
_L3:
        if (mPointerID == touchevent.getPointerID())
        {
            mHoldX = touchevent.getX();
            mHoldY = touchevent.getY();
            if (mTriggering)
            {
                triggerOnHoldFinished(motionevent.getEventTime() - mDownTimeMilliseconds);
            }
            mPointerID = -1;
            return true;
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    public void onUpdate(float f)
    {
        mTimerHandler.onUpdate(f);
    }

    protected void prepareHold(TouchEvent touchevent)
    {
        super.prepareHold(touchevent);
        mTimerHandler.reset();
    }

    public void reset()
    {
        super.reset();
        mTimerHandler.reset();
    }
}
