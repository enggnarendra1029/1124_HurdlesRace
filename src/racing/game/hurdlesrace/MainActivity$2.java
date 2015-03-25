// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package racing.game.hurdlesrace;

import org.andengine.engine.handler.timer.ITimerCallback;
import org.andengine.engine.handler.timer.TimerHandler;
import org.andengine.entity.text.Text;

// Referenced classes of package racing.game.hurdlesrace:
//            MainActivity

class this._cls0
    implements ITimerCallback
{

    final MainActivity this$0;

    public void onTimePassed(TimerHandler timerhandler)
    {
        if (!MainActivity.access$7(MainActivity.this))
        {
            MainActivity mainactivity = MainActivity.this;
            MainActivity.access$9(mainactivity, 1 + MainActivity.access$8(mainactivity));
            MainActivity.access$10(MainActivity.this).setText((new StringBuilder("Score: ")).append(MainActivity.access$8(MainActivity.this)).toString());
        }
    }

    rHandler()
    {
        this$0 = MainActivity.this;
        super();
    }
}
