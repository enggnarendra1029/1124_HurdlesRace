// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.controller;

import android.view.MotionEvent;
import org.andengine.input.touch.TouchEvent;
import org.andengine.util.adt.pool.RunnablePoolItem;
import org.andengine.util.adt.pool.RunnablePoolUpdateHandler;

// Referenced classes of package org.andengine.input.touch.controller:
//            ITouchController, ITouchEventCallback

public abstract class BaseTouchController
    implements ITouchController
{
    class TouchEventRunnablePoolItem extends RunnablePoolItem
    {

        private TouchEvent mTouchEvent;
        final BaseTouchController this$0;

        protected void onRecycle()
        {
            super.onRecycle();
            TouchEvent touchevent = mTouchEvent;
            touchevent.getMotionEvent().recycle();
            touchevent.recycle();
        }

        public void run()
        {
            mTouchEventCallback.onTouchEvent(mTouchEvent);
        }

        public void set(TouchEvent touchevent)
        {
            mTouchEvent = touchevent;
        }

        TouchEventRunnablePoolItem()
        {
            this$0 = BaseTouchController.this;
            super();
        }
    }


    private ITouchEventCallback mTouchEventCallback;
    private final RunnablePoolUpdateHandler mTouchEventRunnablePoolUpdateHandler = new RunnablePoolUpdateHandler() {

        final BaseTouchController this$0;

        protected TouchEventRunnablePoolItem onAllocatePoolItem()
        {
            return new TouchEventRunnablePoolItem();
        }

        protected volatile RunnablePoolItem onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

            
            {
                this$0 = BaseTouchController.this;
                super();
            }
    };

    public BaseTouchController()
    {
    }

    protected void fireTouchEvent(float f, float f1, int i, int j, MotionEvent motionevent)
    {
        TouchEvent touchevent = TouchEvent.obtain(f, f1, i, j, MotionEvent.obtain(motionevent));
        TouchEventRunnablePoolItem toucheventrunnablepoolitem = (TouchEventRunnablePoolItem)mTouchEventRunnablePoolUpdateHandler.obtainPoolItem();
        toucheventrunnablepoolitem.set(touchevent);
        mTouchEventRunnablePoolUpdateHandler.postPoolItem(toucheventrunnablepoolitem);
    }

    public void onUpdate(float f)
    {
        mTouchEventRunnablePoolUpdateHandler.onUpdate(f);
    }

    public void reset()
    {
        mTouchEventRunnablePoolUpdateHandler.reset();
    }

    public void setTouchEventCallback(ITouchEventCallback itoucheventcallback)
    {
        mTouchEventCallback = itoucheventcallback;
    }

}
