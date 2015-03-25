// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import android.view.MotionEvent;
import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.input.touch.detector:
//            BaseDetector

public class HoldDetector extends BaseDetector
{
    public static interface IHoldDetectorListener
    {

        public abstract void onHold(HoldDetector holddetector, long l, int i, float f, float f1);

        public abstract void onHoldFinished(HoldDetector holddetector, long l, int i, float f, float f1);

        public abstract void onHoldStarted(HoldDetector holddetector, int i, float f, float f1);
    }


    protected static final float TRIGGER_HOLD_MAXIMUM_DISTANCE_DEFAULT = 10F;
    protected static final long TRIGGER_HOLD_MINIMUM_MILLISECONDS_DEFAULT = 200L;
    protected long mDownTimeMilliseconds;
    protected float mDownX;
    protected float mDownY;
    protected final IHoldDetectorListener mHoldDetectorListener;
    protected float mHoldX;
    protected float mHoldY;
    protected boolean mMaximumDistanceExceeded;
    protected int mPointerID;
    protected float mTriggerHoldMaximumDistance;
    protected long mTriggerHoldMinimumMilliseconds;
    protected boolean mTriggering;

    public HoldDetector(long l, float f, IHoldDetectorListener iholddetectorlistener)
    {
        mPointerID = -1;
        mDownTimeMilliseconds = 0x8000000000000000L;
        setTriggerHoldMinimumMilliseconds(l);
        setTriggerHoldMaximumDistance(f);
        mHoldDetectorListener = iholddetectorlistener;
    }

    public HoldDetector(IHoldDetectorListener iholddetectorlistener)
    {
        this(200L, 10F, iholddetectorlistener);
    }

    public float getTriggerHoldMaximumDistance()
    {
        return mTriggerHoldMaximumDistance;
    }

    public long getTriggerHoldMinimumMilliseconds()
    {
        return mTriggerHoldMinimumMilliseconds;
    }

    public boolean isHolding()
    {
        return mTriggering;
    }

    public boolean onManagedTouchEvent(TouchEvent touchevent)
    {
        MotionEvent motionevent = touchevent.getMotionEvent();
        touchevent.getAction();
        JVM INSTR tableswitch 0 3: default 40
    //                   0 42
    //                   1 217
    //                   2 57
    //                   3 217;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return false;
_L2:
        if (mPointerID != -1) goto _L1; else goto _L5
_L5:
        prepareHold(touchevent);
        return true;
_L4:
        if (mPointerID != touchevent.getPointerID()) goto _L1; else goto _L6
_L6:
        long l1;
        mHoldX = touchevent.getX();
        mHoldY = touchevent.getY();
        l1 = System.currentTimeMillis() - mDownTimeMilliseconds;
        if (l1 < mTriggerHoldMinimumMilliseconds) goto _L8; else goto _L7
_L7:
        if (!mTriggering) goto _L10; else goto _L9
_L9:
        triggerOnHold(l1);
_L8:
        return true;
_L10:
        float f1 = mTriggerHoldMaximumDistance;
        if (mMaximumDistanceExceeded || Math.abs(mDownX - motionevent.getX()) > f1) goto _L12; else goto _L11
_L11:
        boolean flag1;
        int j;
        j = Math.abs(mDownY - motionevent.getY()) != f1;
        flag1 = false;
        if (j > 0) goto _L12; else goto _L13
_L13:
        mMaximumDistanceExceeded = flag1;
        if (!mMaximumDistanceExceeded)
        {
            if (!mTriggering)
            {
                triggerOnHoldStarted();
            } else
            {
                triggerOnHold(l1);
            }
        }
        if (true) goto _L8; else goto _L12
_L12:
        flag1 = true;
          goto _L13
_L3:
        if (mPointerID != touchevent.getPointerID()) goto _L1; else goto _L14
_L14:
        long l;
        mHoldX = touchevent.getX();
        mHoldY = touchevent.getY();
        l = System.currentTimeMillis() - mDownTimeMilliseconds;
        if (l < mTriggerHoldMinimumMilliseconds) goto _L16; else goto _L15
_L15:
        if (!mTriggering) goto _L18; else goto _L17
_L17:
        triggerOnHoldFinished(l);
_L16:
        mPointerID = -1;
        return true;
_L18:
        boolean flag;
        float f = mTriggerHoldMaximumDistance;
        if (mMaximumDistanceExceeded || Math.abs(mDownX - motionevent.getX()) > f)
        {
            break; /* Loop/switch isn't completed */
        }
        int i = Math.abs(mDownY - motionevent.getY()) != f;
        flag = false;
        if (i > 0)
        {
            break; /* Loop/switch isn't completed */
        }
_L20:
        mMaximumDistanceExceeded = flag;
        if (!mMaximumDistanceExceeded)
        {
            triggerOnHoldFinished(l);
        }
        if (true) goto _L16; else goto _L19
_L19:
        flag = true;
          goto _L20
        if (true) goto _L16; else goto _L21
_L21:
    }

    protected void prepareHold(TouchEvent touchevent)
    {
        MotionEvent motionevent = touchevent.getMotionEvent();
        mDownTimeMilliseconds = System.currentTimeMillis();
        mDownX = motionevent.getX();
        mDownY = motionevent.getY();
        mMaximumDistanceExceeded = false;
        mPointerID = touchevent.getPointerID();
        mHoldX = touchevent.getX();
        mHoldY = touchevent.getY();
        if (mTriggerHoldMinimumMilliseconds == 0L)
        {
            triggerOnHoldStarted();
        }
    }

    public void reset()
    {
        if (mTriggering)
        {
            triggerOnHoldFinished(System.currentTimeMillis() - mDownTimeMilliseconds);
        }
        mTriggering = false;
        mMaximumDistanceExceeded = false;
        mDownTimeMilliseconds = 0x8000000000000000L;
        mPointerID = -1;
    }

    public void setTriggerHoldMaximumDistance(float f)
    {
        if (f < 0.0F)
        {
            throw new IllegalArgumentException("pTriggerHoldMaximumDistance must not be < 0.");
        } else
        {
            mTriggerHoldMaximumDistance = f;
            return;
        }
    }

    public void setTriggerHoldMinimumMilliseconds(long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException("pTriggerHoldMinimumMilliseconds must not be < 0.");
        } else
        {
            mTriggerHoldMinimumMilliseconds = l;
            return;
        }
    }

    protected void triggerOnHold(long l)
    {
        if (mPointerID != -1)
        {
            mHoldDetectorListener.onHold(this, l, mPointerID, mHoldX, mHoldY);
        }
    }

    protected void triggerOnHoldFinished(long l)
    {
        mTriggering = false;
        if (mPointerID != -1)
        {
            mHoldDetectorListener.onHoldFinished(this, l, mPointerID, mHoldX, mHoldY);
        }
    }

    protected void triggerOnHoldStarted()
    {
        mTriggering = true;
        if (mPointerID != -1)
        {
            mHoldDetectorListener.onHoldStarted(this, mPointerID, mHoldX, mHoldY);
        }
    }
}
