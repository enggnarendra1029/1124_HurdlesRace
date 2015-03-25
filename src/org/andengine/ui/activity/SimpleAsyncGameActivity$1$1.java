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

class ack
    implements ProgressCallable
{

    final d this$1;
    private final org.andengine.ui.rcesCallback val$pOnCreateResourcesCallback;

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
        val$pOnCreateResourcesCallback.onCreateResourcesFinished();
        return null;
    }

    ack()
    {
        this$1 = final_ack;
        val$pOnCreateResourcesCallback = org.andengine.ui.rcesCallback.this;
        super();
    }

    // Unreferenced inner class org/andengine/ui/activity/SimpleAsyncGameActivity$1

/* anonymous class */
    class SimpleAsyncGameActivity._cls1
        implements Runnable
    {

        final SimpleAsyncGameActivity this$0;
        private final org.andengine.ui.IGameInterface.OnCreateResourcesCallback val$pOnCreateResourcesCallback;

        public void run()
        {
            ActivityUtils.doProgressAsync(SimpleAsyncGameActivity.this, "Loading Resources...", 0x108004d, pOnCreateResourcesCallback. new SimpleAsyncGameActivity._cls1._cls1(), new SimpleAsyncGameActivity._cls1._cls2());
        }


            
            {
                this$0 = final_simpleasyncgameactivity;
                pOnCreateResourcesCallback = org.andengine.ui.IGameInterface.OnCreateResourcesCallback.this;
                super();
            }

        // Unreferenced inner class org/andengine/ui/activity/SimpleAsyncGameActivity$1$2

/* anonymous class */
        class SimpleAsyncGameActivity._cls1._cls2
            implements Callback
        {

            final SimpleAsyncGameActivity._cls1 this$1;

            public volatile void onCallback(Object obj)
            {
                onCallback((Void)obj);
            }

            public void onCallback(Void void1)
            {
            }

                    
                    {
                        this$1 = SimpleAsyncGameActivity._cls1.this;
                        super();
                    }
        }

    }

}
