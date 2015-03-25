// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import android.view.MotionEvent;
import org.andengine.input.touch.TouchEvent;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.input.touch.detector:
//            BaseDetector

public class PinchZoomDetector extends BaseDetector
{
    public static interface IPinchZoomDetectorListener
    {

        public abstract void onPinchZoom(PinchZoomDetector pinchzoomdetector, TouchEvent touchevent, float f);

        public abstract void onPinchZoomFinished(PinchZoomDetector pinchzoomdetector, TouchEvent touchevent, float f);

        public abstract void onPinchZoomStarted(PinchZoomDetector pinchzoomdetector, TouchEvent touchevent);
    }


    private static final float TRIGGER_PINCHZOOM_MINIMUM_DISTANCE_DEFAULT = 10F;
    private float mCurrentDistance;
    private float mInitialDistance;
    private final IPinchZoomDetectorListener mPinchZoomDetectorListener;
    private boolean mPinchZooming;

    public PinchZoomDetector(IPinchZoomDetectorListener ipinchzoomdetectorlistener)
    {
        mPinchZoomDetectorListener = ipinchzoomdetectorlistener;
    }

    private static float calculatePointerDistance(MotionEvent motionevent)
    {
        return MathUtils.distance(motionevent.getX(0), motionevent.getY(0), motionevent.getX(1), motionevent.getY(1));
    }

    private float getZoomFactor()
    {
        return mCurrentDistance / mInitialDistance;
    }

    private static boolean hasTwoOrMorePointers(MotionEvent motionevent)
    {
        return motionevent.getPointerCount() >= 2;
    }

    public boolean isZooming()
    {
        return mPinchZooming;
    }

    public boolean onManagedTouchEvent(TouchEvent touchevent)
    {
        MotionEvent motionevent = touchevent.getMotionEvent();
        0xff & motionevent.getAction();
        JVM INSTR tableswitch 1 6: default 52
    //                   1 112
    //                   2 141
    //                   3 112
    //                   4 52
    //                   5 54
    //                   6 112;
           goto _L1 _L2 _L3 _L2 _L1 _L4 _L2
_L1:
        return true;
_L4:
        if (!mPinchZooming && hasTwoOrMorePointers(motionevent))
        {
            mInitialDistance = calculatePointerDistance(motionevent);
            mCurrentDistance = mInitialDistance;
            if (mInitialDistance > 10F)
            {
                mPinchZooming = true;
                mPinchZoomDetectorListener.onPinchZoomStarted(this, touchevent);
                return true;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (mPinchZooming)
        {
            mPinchZooming = false;
            mPinchZoomDetectorListener.onPinchZoomFinished(this, touchevent, getZoomFactor());
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (mPinchZooming)
        {
            if (hasTwoOrMorePointers(motionevent))
            {
                mCurrentDistance = calculatePointerDistance(motionevent);
                if (mCurrentDistance > 10F)
                {
                    mPinchZoomDetectorListener.onPinchZoom(this, touchevent, getZoomFactor());
                    return true;
                }
            } else
            {
                mPinchZooming = false;
                mPinchZoomDetectorListener.onPinchZoomFinished(this, touchevent, getZoomFactor());
                return true;
            }
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void reset()
    {
        if (mPinchZooming)
        {
            mPinchZoomDetectorListener.onPinchZoomFinished(this, null, getZoomFactor());
        }
        mInitialDistance = 0.0F;
        mCurrentDistance = 0.0F;
        mPinchZooming = false;
    }
}
