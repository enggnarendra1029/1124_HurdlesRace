// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import org.andengine.engine.Engine;
import org.andengine.entity.scene.Scene;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.ui.activity:
//            BaseGameActivity

class neCallback
    implements org.andengine.ui.eateSceneCallback
{

    final BaseGameActivity this$0;
    private final org.andengine.ui.pulateSceneCallback val$onPopulateSceneCallback;

    public void onCreateSceneFinished(Scene scene)
    {
        mEngine.setScene(scene);
        try
        {
            Debug.d((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onPopulateScene").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString());
            onPopulateScene(scene, val$onPopulateSceneCallback);
            return;
        }
        catch (Throwable throwable)
        {
            Debug.e((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(".onPopulateScene failed.").append(" @(Thread: '").append(Thread.currentThread().getName()).append("')").toString(), throwable);
        }
    }

    neCallback()
    {
        this$0 = final_basegameactivity;
        val$onPopulateSceneCallback = org.andengine.ui.pulateSceneCallback.this;
        super();
    }
}
