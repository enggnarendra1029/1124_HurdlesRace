// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import org.andengine.engine.handler.timer.ITimerCallback;
import org.andengine.engine.handler.timer.TimerHandler;

// Referenced classes of package org.andengine.input.touch.detector:
//            ContinuousHoldDetector

class this._cls0
    implements ITimerCallback
{

    final ContinuousHoldDetector this$0;

    public void onTimePassed(TimerHandler timerhandler)
    {
        fireListener();
    }

    A()
    {
        this$0 = ContinuousHoldDetector.this;
        super();
    }
}
