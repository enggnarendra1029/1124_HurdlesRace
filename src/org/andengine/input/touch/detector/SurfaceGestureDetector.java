// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.input.touch.detector:
//            BaseDetector

public abstract class SurfaceGestureDetector extends BaseDetector
{
    private class InnerOnGestureDetectorListener extends android.view.GestureDetector.SimpleOnGestureListener
    {

        private final float mSwipeMinDistance;
        final SurfaceGestureDetector this$0;

        public boolean onDoubleTap(MotionEvent motionevent)
        {
            return SurfaceGestureDetector.this.onDoubleTap();
        }

        public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
        {
            float f2;
            boolean flag1;
            f2 = mSwipeMinDistance;
            boolean flag;
            if (Math.abs(f) > Math.abs(f1))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag) goto _L2; else goto _L1
_L1:
            if (motionevent.getX() - motionevent1.getX() <= f2) goto _L4; else goto _L3
_L3:
            flag1 = onSwipeLeft();
_L6:
            return flag1;
_L4:
            int j = motionevent1.getX() - motionevent.getX() != f2;
            flag1 = false;
            if (j > 0)
            {
                return onSwipeRight();
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (motionevent.getY() - motionevent1.getY() > f2)
            {
                return onSwipeUp();
            }
            int i = motionevent1.getY() - motionevent.getY() != f2;
            flag1 = false;
            if (i > 0)
            {
                return onSwipeDown();
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public boolean onSingleTapConfirmed(MotionEvent motionevent)
        {
            return onSingleTap();
        }

        public InnerOnGestureDetectorListener(float f)
        {
            this$0 = SurfaceGestureDetector.this;
            super();
            mSwipeMinDistance = f;
        }
    }


    private static final float SWIPE_MIN_DISTANCE_DEFAULT = 120F;
    private final GestureDetector mGestureDetector;

    public SurfaceGestureDetector(Context context)
    {
        this(context, 120F);
    }

    public SurfaceGestureDetector(Context context, float f)
    {
        mGestureDetector = new GestureDetector(context, new InnerOnGestureDetectorListener(f));
    }

    protected abstract boolean onDoubleTap();

    public boolean onManagedTouchEvent(TouchEvent touchevent)
    {
        return mGestureDetector.onTouchEvent(touchevent.getMotionEvent());
    }

    protected abstract boolean onSingleTap();

    protected abstract boolean onSwipeDown();

    protected abstract boolean onSwipeLeft();

    protected abstract boolean onSwipeRight();

    protected abstract boolean onSwipeUp();

    public void reset()
    {
    }
}
