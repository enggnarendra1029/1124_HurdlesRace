// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import org.andengine.entity.scene.Scene;

// Referenced classes of package org.andengine.ui.activity:
//            LayoutGameActivity

public abstract class SimpleLayoutGameActivity extends LayoutGameActivity
{

    public SimpleLayoutGameActivity()
    {
    }

    protected abstract void onCreateResources();

    public final void onCreateResources(org.andengine.ui.IGameInterface.OnCreateResourcesCallback oncreateresourcescallback)
        throws Exception
    {
        onCreateResources();
        oncreateresourcescallback.onCreateResourcesFinished();
    }

    protected abstract Scene onCreateScene();

    public final void onCreateScene(org.andengine.ui.IGameInterface.OnCreateSceneCallback oncreatescenecallback)
        throws Exception
    {
        oncreatescenecallback.onCreateSceneFinished(onCreateScene());
    }

    public final void onPopulateScene(Scene scene, org.andengine.ui.IGameInterface.OnPopulateSceneCallback onpopulatescenecallback)
        throws Exception
    {
        onpopulatescenecallback.onPopulateSceneFinished();
    }
}
