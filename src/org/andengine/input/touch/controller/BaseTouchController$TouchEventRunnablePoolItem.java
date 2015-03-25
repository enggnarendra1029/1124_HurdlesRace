// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.controller;

import android.view.MotionEvent;
import org.andengine.input.touch.TouchEvent;
import org.andengine.util.adt.pool.RunnablePoolItem;

// Referenced classes of package org.andengine.input.touch.controller:
//            BaseTouchController, ITouchEventCallback

class this._cls0 extends RunnablePoolItem
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
        BaseTouchController.access$0(BaseTouchController.this).onTouchEvent(mTouchEvent);
    }

    public void set(TouchEvent touchevent)
    {
        mTouchEvent = touchevent;
    }

    Y()
    {
        this$0 = BaseTouchController.this;
        super();
    }
}
