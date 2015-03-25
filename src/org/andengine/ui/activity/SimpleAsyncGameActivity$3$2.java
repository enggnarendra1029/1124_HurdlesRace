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
//            SimpleAsyncGameActivity

class this._cls1
    implements Callback
{

    final onCallback this$1;

    public volatile void onCallback(Object obj)
    {
        onCallback((Void)obj);
    }

    public void onCallback(Void void1)
    {
    }

    k()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class org/andengine/ui/activity/SimpleAsyncGameActivity$3

/* anonymous class */
    class SimpleAsyncGameActivity._cls3
        implements Runnable
    {

        final SimpleAsyncGameActivity this$0;
        private final org.andengine.ui.IGameInterface.OnPopulateSceneCallback val$pOnPopulateSceneCallback;
        private final Scene val$pScene;

        public void run()
        {
            ActivityUtils.doProgressAsync(SimpleAsyncGameActivity.this, "Populating Scene...", 0x108004d, new SimpleAsyncGameActivity._cls3._cls1(), new SimpleAsyncGameActivity._cls3._cls2());
        }


            
            {
                this$0 = final_simpleasyncgameactivity;
                pScene = scene;
                pOnPopulateSceneCallback = org.andengine.ui.IGameInterface.OnPopulateSceneCallback.this;
                super();
            }

        // Unreferenced inner class org/andengine/ui/activity/SimpleAsyncGameActivity$3$1

/* anonymous class */
        class SimpleAsyncGameActivity._cls3._cls1
            implements ProgressCallable
        {

            final SimpleAsyncGameActivity._cls3 this$1;
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
                        this$1 = SimpleAsyncGameActivity._cls3.this;
                        pScene = scene;
                        pOnPopulateSceneCallback = onpopulatescenecallback;
                        super();
                    }
        }

    }

}
