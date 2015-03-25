// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.controller;

import android.view.MotionEvent;

// Referenced classes of package org.andengine.input.touch.controller:
//            BaseTouchController

public class MultiTouchController extends BaseTouchController
{

    public MultiTouchController()
    {
    }

    private static int getPointerIndex(MotionEvent motionevent)
    {
        return (0xff00 & motionevent.getAction()) >> 8;
    }

    private void onHandleTouchAction(int i, MotionEvent motionevent)
    {
        int j = getPointerIndex(motionevent);
        int k = motionevent.getPointerId(j);
        fireTouchEvent(motionevent.getX(j), motionevent.getY(j), i, k, motionevent);
    }

    private void onHandleTouchMove(MotionEvent motionevent)
    {
        int i = -1 + motionevent.getPointerCount();
        do
        {
            if (i < 0)
            {
                return;
            }
            int j = i;
            int k = motionevent.getPointerId(j);
            fireTouchEvent(motionevent.getX(j), motionevent.getY(j), 2, k, motionevent);
            i--;
        } while (true);
    }

    public void onHandleMotionEvent(MotionEvent motionevent)
    {
        int i = 0xff & motionevent.getAction();
        switch (i)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Invalid Action detected: ")).append(i).toString());

        case 0: // '\0'
        case 5: // '\005'
            onHandleTouchAction(0, motionevent);
            return;

        case 1: // '\001'
        case 6: // '\006'
            onHandleTouchAction(1, motionevent);
            return;

        case 3: // '\003'
        case 4: // '\004'
            onHandleTouchAction(i, motionevent);
            return;

        case 2: // '\002'
            onHandleTouchMove(motionevent);
            return;
        }
    }
}
