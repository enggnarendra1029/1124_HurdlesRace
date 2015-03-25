// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui;

import org.andengine.engine.Engine;
import org.andengine.engine.options.EngineOptions;
import org.andengine.entity.scene.Scene;

public interface IGameInterface
{
    public static interface OnCreateResourcesCallback
    {

        public abstract void onCreateResourcesFinished();
    }

    public static interface OnCreateSceneCallback
    {

        public abstract void onCreateSceneFinished(Scene scene);
    }

    public static interface OnPopulateSceneCallback
    {

        public abstract void onPopulateSceneFinished();
    }


    public abstract Engine onCreateEngine(EngineOptions engineoptions);

    public abstract EngineOptions onCreateEngineOptions();

    public abstract void onCreateResources(OnCreateResourcesCallback oncreateresourcescallback)
        throws Exception;

    public abstract void onCreateScene(OnCreateSceneCallback oncreatescenecallback)
        throws Exception;

    public abstract void onDestroyResources()
        throws Exception;

    public abstract void onGameCreated();

    public abstract void onGameDestroyed();

    public abstract void onPauseGame();

    public abstract void onPopulateScene(Scene scene, OnPopulateSceneCallback onpopulatescenecallback)
        throws Exception;

    public abstract void onReloadResources()
        throws Exception;

    public abstract void onResumeGame();
}
