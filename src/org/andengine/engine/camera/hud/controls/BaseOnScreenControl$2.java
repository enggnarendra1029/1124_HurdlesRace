// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera.hud.controls;

import org.andengine.engine.handler.timer.ITimerCallback;
import org.andengine.engine.handler.timer.TimerHandler;

// Referenced classes of package org.andengine.engine.camera.hud.controls:
//            BaseOnScreenControl

class this._cls0
    implements ITimerCallback
{

    final BaseOnScreenControl this$0;

    public void onTimePassed(TimerHandler timerhandler)
    {
        BaseOnScreenControl.access$0(BaseOnScreenControl.this).onControlChange(BaseOnScreenControl.this, BaseOnScreenControl.access$1(BaseOnScreenControl.this), BaseOnScreenControl.access$2(BaseOnScreenControl.this));
    }

    nScreenControlListener()
    {
        this$0 = BaseOnScreenControl.this;
        super();
    }
}
