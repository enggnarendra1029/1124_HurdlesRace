// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import android.view.MotionEvent;

// Referenced classes of package org.andengine.input.touch.detector:
//            SurfaceGestureDetector

private class mSwipeMinDistance extends android.view.stureDetectorListener
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

    public (float f)
    {
        this$0 = SurfaceGestureDetector.this;
        super();
        mSwipeMinDistance = f;
    }
}
