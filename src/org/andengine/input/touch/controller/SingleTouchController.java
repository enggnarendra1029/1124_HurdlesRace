// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.controller;

import android.view.MotionEvent;

// Referenced classes of package org.andengine.input.touch.controller:
//            BaseTouchController

public class SingleTouchController extends BaseTouchController
{

    public SingleTouchController()
    {
    }

    public void onHandleMotionEvent(MotionEvent motionevent)
    {
        fireTouchEvent(motionevent.getX(), motionevent.getY(), motionevent.getAction(), 0, motionevent);
    }
}
