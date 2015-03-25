// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import org.andengine.entity.scene.Scene;
import org.andengine.util.ActivityUtils;
import org.andengine.util.call.Callback;
import org.andengine.util.progress.IProgressListener;
import org.andengine.util.progress.ProgressCallable;

// Referenced classes of package org.andengine.ui.activity:
//            BaseGameActivity

public abstract class SimpleAsyncGameActivity extends BaseGameActivity
{

    public SimpleAsyncGameActivity()
    {
    }

    public void onCreateResources(final org.andengine.ui.IGameInterface.OnCreateResourcesCallback pOnCreateResourcesCallback)
    {
        runOnUiThread(new Runnable() {

            final SimpleAsyncGameActivity this$0;
            private final org.andengine.ui.IGameInterface.OnCreateResourcesCallback val$pOnCreateResourcesCallback;

            public void run()
            {
                ActivityUtils.doProgressAsync(SimpleAsyncGameActivity.this, "Loading Resources...", 0x108004d, pOnCreateResourcesCallback. new ProgressCallable() {

                    final _cls1 this$1;
                    private final org.andengine.ui.IGameInterface.OnCreateResourcesCallback val$pOnCreateResourcesCallback;

                    public volatile Object call(IProgressListener iprogresslistener)
                        throws Exception
                    {
                        return call(iprogresslistener);
                    }

                    public Void call(IProgressListener iprogresslistener)
                        throws Exception
                    {
                        onCreateResourcesAsync(iprogresslistener);
                        iprogresslistener.onProgressChanged(100);
                        pOnCreateResourcesCallback.onCreateResourcesFinished();
                        return null;
                    }

            
            {
                this$1 = final__pcls1;
                pOnCreateResourcesCallback = org.andengine.ui.IGameInterface.OnCreateResourcesCallback.this;
                super();
            }
                }, new Callback() {

                    final _cls1 this$1;

                    public volatile void onCallback(Object obj)
                    {
                        onCallback((Void)obj);
                    }

                    public void onCallback(Void void1)
                    {
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }


            
            {
                this$0 = SimpleAsyncGameActivity.this;
                pOnCreateResourcesCallback = oncreateresourcescallback;
                super();
            }
        });
    }

    public abstract void onCreateResourcesAsync(IProgressListener iprogresslistener)
        throws Exception;

    public void onCreateScene(final org.andengine.ui.IGameInterface.OnCreateSceneCallback pOnCreateSceneCallback)
    {
        runOnUiThread(new Runnable() {

            final SimpleAsyncGameActivity this$0;
            private final org.andengine.ui.IGameInterface.OnCreateSceneCallback val$pOnCreateSceneCallback;

            public void run()
            {
                ActivityUtils.doProgressAsync(SimpleAsyncGameActivity.this, "Loading Scene...", 0x108004d, pOnCreateSceneCallback. new ProgressCallable() {

                    final _cls2 this$1;
                    private final org.andengine.ui.IGameInterface.OnCreateSceneCallback val$pOnCreateSceneCallback;

                    public volatile Object call(IProgressListener iprogresslistener)
                        throws Exception
                    {
                        return call(iprogresslistener);
                    }

                    public Void call(IProgressListener iprogresslistener)
                        throws Exception
                    {
                        Scene scene = onCreateSceneAsync(iprogresslistener);
                        iprogresslistener.onProgressChanged(100);
                        pOnCreateSceneCallback.onCreateSceneFinished(scene);
                        return null;
                    }

            
            {
                this$1 = final__pcls2;
                pOnCreateSceneCallback = org.andengine.ui.IGameInterface.OnCreateSceneCallback.this;
                super();
            }
                }, new Callback() {

                    final _cls2 this$1;

                    public volatile void onCallback(Object obj)
                    {
                        onCallback((Void)obj);
                    }

                    public void onCallback(Void void1)
                    {
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }


            
            {
                this$0 = SimpleAsyncGameActivity.this;
                pOnCreateSceneCallback = oncreatescenecallback;
                super();
            }
        });
    }

    public abstract Scene onCreateSceneAsync(IProgressListener iprogresslistener)
        throws Exception;

    public void onPopulateScene(final Scene pScene, final org.andengine.ui.IGameInterface.OnPopulateSceneCallback pOnPopulateSceneCallback)
    {
        runOnUiThread(new Runnable() {

            final SimpleAsyncGameActivity this$0;
            private final org.andengine.ui.IGameInterface.OnPopulateSceneCallback val$pOnPopulateSceneCallback;
            private final Scene val$pScene;

            public void run()
            {
                ActivityUtils.doProgressAsync(SimpleAsyncGameActivity.this, "Populating Scene...", 0x108004d, pOnPopulateSceneCallback. new ProgressCallable() {

                    final _cls3 this$1;
                    private final org.andengine.ui.IGameInterface.OnPopulateSceneCallback val$pOnPopulateSceneCallback;
                    private final Scene val$pScene;

                    public volatile Object call(IProgressListener iprogresslistener)
                        throws Exception
                    {
                        return call(iprogresslistener);
                    }

                    public Void call(IProgressListener iprogresslistener)
                        throws Exception
                    {
                        onPopulateSceneAsync(pScene, iprogresslistener);
                        iprogresslistener.onProgressChanged(100);
                        pOnPopulateSceneCallback.onPopulateSceneFinished();
                        return null;
                    }

            
            {
                this$1 = final__pcls3;
                pScene = scene;
                pOnPopulateSceneCallback = org.andengine.ui.IGameInterface.OnPopulateSceneCallback.this;
                super();
            }
                }, new Callback() {

                    final _cls3 this$1;

                    public volatile void onCallback(Object obj)
                    {
                        onCallback((Void)obj);
                    }

                    public void onCallback(Void void1)
                    {
                    }

            
            {
                this$1 = _cls3.this;
                super();
            }
                });
            }


            
            {
                this$0 = SimpleAsyncGameActivity.this;
                pScene = scene;
                pOnPopulateSceneCallback = onpopulatescenecallback;
                super();
            }
        });
    }

    public abstract void onPopulateSceneAsync(Scene scene, IProgressListener iprogresslistener)
        throws Exception;
}
