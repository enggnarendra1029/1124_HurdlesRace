// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import org.andengine.engine.Engine;
import org.andengine.engine.options.EngineOptions;
import org.andengine.entity.scene.Scene;

// Referenced classes of package org.andengine.ui.activity:
//            BaseGameActivity

public abstract class LegacyBaseGameActivity extends BaseGameActivity
{

    public LegacyBaseGameActivity()
    {
    }

    public final Engine onCreateEngine(EngineOptions engineoptions)
    {
        return onLoadEngine();
    }

    public final EngineOptions onCreateEngineOptions()
    {
        return null;
    }

    public final void onCreateResources(org.andengine.ui.IGameInterface.OnCreateResourcesCallback oncreateresourcescallback)
        throws Exception
    {
        onLoadResources();
        oncreateresourcescallback.onCreateResourcesFinished();
    }

    public final void onCreateScene(org.andengine.ui.IGameInterface.OnCreateSceneCallback oncreatescenecallback)
        throws Exception
    {
        oncreatescenecallback.onCreateSceneFinished(onLoadScene());
    }

    public final void onDestroyResources()
        throws Exception
    {
        super.onDestroyResources();
        onUnloadResources();
    }

    public void onGameCreated()
    {
        this;
        JVM INSTR monitorenter ;
        super.onGameCreated();
        onLoadComplete();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected abstract Scene onLoadComplete();

    protected abstract Engine onLoadEngine();

    protected abstract void onLoadResources();

    protected abstract Scene onLoadScene();

    public final void onPopulateScene(Scene scene, org.andengine.ui.IGameInterface.OnPopulateSceneCallback onpopulatescenecallback)
        throws Exception
    {
        onpopulatescenecallback.onPopulateSceneFinished();
    }

    protected abstract void onUnloadResources();
}
