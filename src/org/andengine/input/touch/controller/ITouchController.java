// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.controller;

import android.view.MotionEvent;
import org.andengine.engine.handler.IUpdateHandler;

// Referenced classes of package org.andengine.input.touch.controller:
//            ITouchEventCallback

public interface ITouchController
    extends IUpdateHandler
{

    public abstract void onHandleMotionEvent(MotionEvent motionevent);

    public abstract void setTouchEventCallback(ITouchEventCallback itoucheventcallback);
}
