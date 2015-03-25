// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import org.andengine.util.call.Callable;
import org.andengine.util.call.Callback;
import org.andengine.util.debug.Debug;
import org.andengine.util.exception.CancelledException;

// Referenced classes of package org.andengine.util:
//            ActivityUtils

class val.pExceptionCallback
    implements android.content.CancelListener
{

    final ss this$1;
    private final Callback val$pExceptionCallback;

    public void onCancel(DialogInterface dialoginterface)
    {
        val$pExceptionCallback.onCallback(new CancelledException());
        dialoginterface.dismiss();
    }

    xception()
    {
        this$1 = final_xception;
        val$pExceptionCallback = Callback.this;
        super();
    }

    // Unreferenced inner class org/andengine/util/ActivityUtils$1

/* anonymous class */
    class ActivityUtils._cls1 extends AsyncTask
    {

        private Exception mException;
        private ProgressDialog mPD;
        private final Callable val$pCallable;
        private final Callback val$pCallback;
        private final boolean val$pCancelable;
        private final Context val$pContext;
        private final Callback val$pExceptionCallback;
        private final CharSequence val$pMessage;
        private final CharSequence val$pTitle;

        public volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        public transient Object doInBackground(Void avoid[])
        {
            Object obj;
            try
            {
                obj = pCallable.call();
            }
            catch (Exception exception)
            {
                mException = exception;
                return null;
            }
            return obj;
        }

        public void onPostExecute(Object obj)
        {
            try
            {
                mPD.dismiss();
            }
            catch (Exception exception)
            {
                Debug.e("Error", exception);
            }
            if (isCancelled())
            {
                mException = new CancelledException();
            }
            if (mException == null)
            {
                pCallback.onCallback(obj);
            } else
            if (pExceptionCallback == null)
            {
                Debug.e("Error", mException);
            } else
            {
                pExceptionCallback.onCallback(mException);
            }
            super.onPostExecute(obj);
        }

        public void onPreExecute()
        {
            mPD = ProgressDialog.show(pContext, pTitle, pMessage, true, pCancelable);
            if (pCancelable)
            {
                mPD.setOnCancelListener(pExceptionCallback. new ActivityUtils._cls1._cls1());
            }
            super.onPreExecute();
        }

            
            {
                pContext = context;
                pTitle = charsequence;
                pMessage = charsequence1;
                pCancelable = flag;
                pCallable = callable;
                pCallback = callback;
                pExceptionCallback = callback1;
                super();
                mException = null;
            }
    }

}
