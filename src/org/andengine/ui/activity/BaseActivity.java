// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import android.app.Activity;
import android.os.Looper;
import android.widget.Toast;
import org.andengine.util.ActivityUtils;
import org.andengine.util.call.AsyncCallable;
import org.andengine.util.call.Callable;
import org.andengine.util.call.Callback;
import org.andengine.util.progress.ProgressCallable;

public abstract class BaseActivity extends Activity
{

    public BaseActivity()
    {
    }

    protected void doAsync(int i, int j, AsyncCallable asynccallable, Callback callback, Callback callback1)
    {
        ActivityUtils.doAsync(this, i, j, asynccallable, callback, callback1);
    }

    protected void doAsync(int i, int j, Callable callable, Callback callback)
    {
        doAsync(i, j, callable, callback, null);
    }

    protected void doAsync(int i, int j, Callable callable, Callback callback, Callback callback1)
    {
        ActivityUtils.doAsync(this, i, j, callable, callback, callback1);
    }

    protected void doProgressAsync(int i, int j, ProgressCallable progresscallable, Callback callback)
    {
        doProgressAsync(i, j, progresscallable, callback, null);
    }

    protected void doProgressAsync(int i, int j, ProgressCallable progresscallable, Callback callback, Callback callback1)
    {
        ActivityUtils.doProgressAsync(this, i, j, progresscallable, callback, callback1);
    }

    public void toastOnUIThread(CharSequence charsequence)
    {
        toastOnUIThread(charsequence, 1);
    }

    public void toastOnUIThread(final CharSequence pText, final int pDuration)
    {
        if (Looper.getMainLooper().getThread() == Thread.currentThread())
        {
            Toast.makeText(this, pText, pDuration).show();
            return;
        } else
        {
            runOnUiThread(new Runnable() {

                final BaseActivity this$0;
                private final int val$pDuration;
                private final CharSequence val$pText;

                public void run()
                {
                    Toast.makeText(BaseActivity.this, pText, pDuration).show();
                }

            
            {
                this$0 = BaseActivity.this;
                pText = charsequence;
                pDuration = i;
                super();
            }
            });
            return;
        }
    }
}
