// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.ui.activity:
//            BaseGameActivity

class this._cls0
    implements org.andengine.ui.pulateSceneCallback
{

    final BaseGameActivity this$0;

    public void onPopulateSceneFinished()
    {
        try
        {
            Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onGameCreated").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
            onGameCreated();
        }
        catch (Throwable throwable)
        {
            Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onGameCreated failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable);
        }
        BaseGameActivity.access$0(BaseGameActivity.this);
    }

    neCallback()
    {
        this$0 = BaseGameActivity.this;
        super();
    }
}
