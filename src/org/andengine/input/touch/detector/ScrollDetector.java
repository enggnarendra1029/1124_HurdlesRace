// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.input.touch.detector:
//            BaseDetector

public class ScrollDetector extends BaseDetector
{
    public static interface IScrollDetectorListener
    {

        public abstract void onScroll(ScrollDetector scrolldetector, int i, float f, float f1);

        public abstract void onScrollFinished(ScrollDetector scrolldetector, int i, float f, float f1);

        public abstract void onScrollStarted(ScrollDetector scrolldetector, int i, float f, float f1);
    }


    private static final float TRIGGER_SCROLL_MINIMUM_DISTANCE_DEFAULT = 10F;
    private float mLastX;
    private float mLastY;
    private int mPointerID;
    private final IScrollDetectorListener mScrollDetectorListener;
    private float mTriggerScrollMinimumDistance;
    private boolean mTriggering;

    public ScrollDetector(float f, IScrollDetectorListener iscrolldetectorlistener)
    {
        mPointerID = -1;
        mTriggerScrollMinimumDistance = f;
        mScrollDetectorListener = iscrolldetectorlistener;
    }

    public ScrollDetector(IScrollDetectorListener iscrolldetectorlistener)
    {
        this(10F, iscrolldetectorlistener);
    }

    private void prepareScroll(int i, float f, float f1)
    {
        mLastX = f;
        mLastY = f1;
        mTriggering = false;
        mPointerID = i;
    }

    private void triggerOnScroll(float f, float f1)
    {
        if (mPointerID != -1)
        {
            mScrollDetectorListener.onScroll(this, mPointerID, f, f1);
        }
    }

    private void triggerOnScrollFinished(float f, float f1)
    {
        mTriggering = false;
        if (mPointerID != -1)
        {
            mScrollDetectorListener.onScrollFinished(this, mPointerID, f, f1);
        }
    }

    private void triggerOnScrollStarted(float f, float f1)
    {
        if (mPointerID != -1)
        {
            mScrollDetectorListener.onScrollStarted(this, mPointerID, f, f1);
        }
    }

    public float getTriggerScrollMinimumDistance()
    {
        return mTriggerScrollMinimumDistance;
    }

    protected float getX(TouchEvent touchevent)
    {
        return touchevent.getX();
    }

    protected float getY(TouchEvent touchevent)
    {
        return touchevent.getY();
    }

    public boolean onManagedTouchEvent(TouchEvent touchevent)
    {
        boolean flag;
        float f;
        float f1;
        flag = true;
        f = getX(touchevent);
        f1 = getY(touchevent);
        touchevent.getAction();
        JVM INSTR tableswitch 0 3: default 48
    //                   0 52
    //                   1 195
    //                   2 65
    //                   3 195;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        flag = false;
_L6:
        return flag;
_L2:
        prepareScroll(touchevent.getPointerID(), f, f1);
        return flag;
_L4:
        if (mPointerID == -1)
        {
            prepareScroll(touchevent.getPointerID(), f, f1);
            return flag;
        }
        if (mPointerID == touchevent.getPointerID())
        {
            float f4 = f - mLastX;
            float f5 = f1 - mLastY;
            float f6 = mTriggerScrollMinimumDistance;
            if (mTriggering || Math.abs(f4) > f6 || Math.abs(f5) > f6)
            {
                if (!mTriggering)
                {
                    triggerOnScrollStarted(f4, f5);
                } else
                {
                    triggerOnScroll(f4, f5);
                }
                mLastX = f;
                mLastY = f1;
                mTriggering = flag;
                return flag;
            }
        } else
        {
            return false;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        if (mPointerID == touchevent.getPointerID())
        {
            float f2 = f - mLastX;
            float f3 = f1 - mLastY;
            if (mTriggering)
            {
                triggerOnScrollFinished(f2, f3);
            }
            mPointerID = -1;
            return flag;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void reset()
    {
        if (mTriggering)
        {
            mScrollDetectorListener.onScrollFinished(this, mPointerID, 0.0F, 0.0F);
        }
        mLastX = 0.0F;
        mLastY = 0.0F;
        mTriggering = false;
        mPointerID = -1;
    }

    public void setTriggerScrollMinimumDistance(float f)
    {
        mTriggerScrollMinimumDistance = f;
    }
}
