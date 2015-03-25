// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.ui.activity:
//            BaseGameActivity

class Callback
    implements org.andengine.ui.eateResourcesCallback
{

    final BaseGameActivity this$0;
    private final org.andengine.ui.eateSceneCallback val$onCreateSceneCallback;

    public void onCreateResourcesFinished()
    {
        try
        {
            Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onCreateScene").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
            onCreateScene(val$onCreateSceneCallback);
            return;
        }
        catch (Throwable throwable)
        {
            Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onCreateScene failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable);
        }
    }

    Callback()
    {
        this$0 = final_basegameactivity;
        val$onCreateSceneCallback = org.andengine.ui.eateSceneCallback.this;
        super();
    }
}
