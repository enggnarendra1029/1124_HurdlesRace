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

class lback
    implements Runnable
{

    final SimpleAsyncGameActivity this$0;
    private final org.andengine.ui.ourcesCallback val$pOnCreateResourcesCallback;

    public void run()
    {
        ActivityUtils.doProgressAsync(SimpleAsyncGameActivity.this, "Loading Resources...", 0x108004d, new ProgressCallable() {

            final SimpleAsyncGameActivity._cls1 this$1;
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
                this$1 = SimpleAsyncGameActivity._cls1.this;
                pOnCreateResourcesCallback = oncreateresourcescallback;
                super();
            }
        }, new Callback() {

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
        });
    }


    lback()
    {
        this$0 = final_simpleasyncgameactivity;
        val$pOnCreateResourcesCallback = org.andengine.ui.ourcesCallback.this;
        super();
    }
}
