// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package racing.game.hurdlesrace;

import android.util.Log;
import com.badlogic.gdx.physics.box2d.Body;
import org.andengine.engine.handler.timer.ITimerCallback;
import org.andengine.engine.handler.timer.TimerHandler;

// Referenced classes of package racing.game.hurdlesrace:
//            MainActivity, Util

class this._cls0
    implements ITimerCallback
{

    final MainActivity this$0;
    private int time;

    public void onTimePassed(TimerHandler timerhandler)
    {
        time = 1 + time;
        float f = Util.getUtil().getAngle(time);
        Log.d("time", (new StringBuilder()).append(f).toString());
        MainActivity.access$2(MainActivity.this).setLinearVelocity(Util.getUtil().getVelocity(time), 0.0F);
        MainActivity.access$6(MainActivity.this).setLinearVelocity(Util.getUtil().getVelocity(time), 0.0F);
    }

    rHandler()
    {
        this$0 = MainActivity.this;
        super();
    }
}
