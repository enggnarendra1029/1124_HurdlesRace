// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch;

import android.view.MotionEvent;
import org.andengine.util.adt.pool.GenericPool;

public class TouchEvent
{
    private static final class TouchEventPool extends GenericPool
    {

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

        protected TouchEvent onAllocatePoolItem()
        {
            return new TouchEvent();
        }

        private TouchEventPool()
        {
        }

        TouchEventPool(TouchEventPool toucheventpool)
        {
            this();
        }
    }


    public static final int ACTION_CANCEL = 3;
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_MOVE = 2;
    public static final int ACTION_OUTSIDE = 4;
    public static final int ACTION_UP = 1;
    public static final int INVALID_POINTER_ID = -1;
    private static final TouchEventPool TOUCHEVENT_POOL = new TouchEventPool(null);
    protected int mAction;
    protected MotionEvent mMotionEvent;
    protected int mPointerID;
    protected float mX;
    protected float mY;

    public TouchEvent()
    {
    }

    public static TouchEvent obtain(float f, float f1, int i, int j, MotionEvent motionevent)
    {
        TouchEvent touchevent = (TouchEvent)TOUCHEVENT_POOL.obtainPoolItem();
        touchevent.set(f, f1, i, j, motionevent);
        return touchevent;
    }

    public static void recycle(TouchEvent touchevent)
    {
        TOUCHEVENT_POOL.recyclePoolItem(touchevent);
    }

    private void set(float f, float f1, int i, int j, MotionEvent motionevent)
    {
        mX = f;
        mY = f1;
        mAction = i;
        mPointerID = j;
        mMotionEvent = motionevent;
    }

    public int getAction()
    {
        return mAction;
    }

    public MotionEvent getMotionEvent()
    {
        return mMotionEvent;
    }

    public int getPointerID()
    {
        return mPointerID;
    }

    public float getX()
    {
        return mX;
    }

    public float getY()
    {
        return mY;
    }

    public boolean isActionCancel()
    {
        return mAction == 3;
    }

    public boolean isActionDown()
    {
        return mAction == 0;
    }

    public boolean isActionMove()
    {
        return mAction == 2;
    }

    public boolean isActionOutside()
    {
        return mAction == 4;
    }

    public boolean isActionUp()
    {
        return mAction == 1;
    }

    public void offset(float f, float f1)
    {
        mX = f + mX;
        mY = f1 + mY;
    }

    public void recycle()
    {
        TOUCHEVENT_POOL.recyclePoolItem(this);
    }

    public void set(float f, float f1)
    {
        mX = f;
        mY = f1;
    }

}
