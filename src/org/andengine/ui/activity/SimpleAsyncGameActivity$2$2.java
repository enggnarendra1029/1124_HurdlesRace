// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

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

    l.pOnCreateSceneCallback()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class org/andengine/ui/activity/SimpleAsyncGameActivity$2

/* anonymous class */
    class SimpleAsyncGameActivity._cls2
        implements Runnable
    {

        final SimpleAsyncGameActivity this$0;
        private final org.andengine.ui.IGameInterface.OnCreateSceneCallback val$pOnCreateSceneCallback;

        public void run()
        {
            ActivityUtils.doProgressAsync(SimpleAsyncGameActivity.this, "Loading Scene...", 0x108004d, new SimpleAsyncGameActivity._cls2._cls1(), new SimpleAsyncGameActivity._cls2._cls2());
        }


            
            {
                this$0 = final_simpleasyncgameactivity;
                pOnCreateSceneCallback = org.andengine.ui.IGameInterface.OnCreateSceneCallback.this;
                super();
            }

        // Unreferenced inner class org/andengine/ui/activity/SimpleAsyncGameActivity$2$1

/* anonymous class */
        class SimpleAsyncGameActivity._cls2._cls1
            implements ProgressCallable
        {

            final SimpleAsyncGameActivity._cls2 this$1;
            private final org.andengine.ui.IGameInterface.OnCreateSceneCallback val$pOnCreateSceneCallback;

            public volatile Object call(IProgressListener iprogresslistener)
                throws Exception
            {
                return call(iprogresslistener);
            }

            public Void call(IProgressListener iprogresslistener)
                throws Exception
            {
                org.andengine.entity.scene.Scene scene = onCreateSceneAsync(iprogresslistener);
                iprogresslistener.onProgressChanged(100);
                pOnCreateSceneCallback.onCreateSceneFinished(scene);
                return null;
            }

                    
                    {
                        this$1 = SimpleAsyncGameActivity._cls2.this;
                        pOnCreateSceneCallback = oncreatescenecallback;
                        super();
                    }
        }

    }

}
