// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import android.view.MotionEvent;
import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.input.touch.detector:
//            BaseDetector

public class ClickDetector extends BaseDetector
{
    public static interface IClickDetectorListener
    {

        public abstract void onClick(ClickDetector clickdetector, int i, float f, float f1);
    }


    private static final long TRIGGER_CLICK_MAXIMUM_MILLISECONDS_DEFAULT = 200L;
    private final IClickDetectorListener mClickDetectorListener;
    private long mDownTimeMilliseconds;
    private int mPointerID;
    private long mTriggerClickMaximumMilliseconds;

    public ClickDetector(long l, IClickDetectorListener iclickdetectorlistener)
    {
        mPointerID = -1;
        mDownTimeMilliseconds = 0x8000000000000000L;
        mTriggerClickMaximumMilliseconds = l;
        mClickDetectorListener = iclickdetectorlistener;
    }

    public ClickDetector(IClickDetectorListener iclickdetectorlistener)
    {
        this(200L, iclickdetectorlistener);
    }

    private void prepareClick(TouchEvent touchevent)
    {
        mDownTimeMilliseconds = touchevent.getMotionEvent().getDownTime();
        mPointerID = touchevent.getPointerID();
    }

    public long getTriggerClickMaximumMilliseconds()
    {
        return mTriggerClickMaximumMilliseconds;
    }

    public boolean onManagedTouchEvent(TouchEvent touchevent)
    {
        touchevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 38
    //                   1 45
    //                   2 36
    //                   3 45;
           goto _L1 _L2 _L3 _L1 _L3
_L1:
        return false;
_L2:
        prepareClick(touchevent);
        return true;
_L3:
        if (mPointerID == touchevent.getPointerID())
        {
            int i = touchevent.getMotionEvent().getEventTime() - mDownTimeMilliseconds != mTriggerClickMaximumMilliseconds;
            boolean flag = false;
            if (i <= 0)
            {
                mDownTimeMilliseconds = 0x8000000000000000L;
                mClickDetectorListener.onClick(this, touchevent.getPointerID(), touchevent.getX(), touchevent.getY());
                flag = true;
            }
            mPointerID = -1;
            return flag;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void reset()
    {
        mDownTimeMilliseconds = 0x8000000000000000L;
        mPointerID = -1;
    }

    public void setTriggerClickMaximumMilliseconds(long l)
    {
        mTriggerClickMaximumMilliseconds = l;
    }
}
