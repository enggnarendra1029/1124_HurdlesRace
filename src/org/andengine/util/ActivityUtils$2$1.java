// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import org.andengine.util.call.Callback;
import org.andengine.util.debug.Debug;
import org.andengine.util.exception.CancelledException;
import org.andengine.util.progress.IProgressListener;
import org.andengine.util.progress.ProgressCallable;

// Referenced classes of package org.andengine.util:
//            ActivityUtils

class this._cls1
    implements IProgressListener
{

    final ProgressUpdate this$1;

    public void onProgressChanged(int i)
    {
        Listener listener = this._cls1.this;
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(i);
        listener.ProgressUpdate(ainteger);
    }

    xception()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class org/andengine/util/ActivityUtils$2

/* anonymous class */
    class ActivityUtils._cls2 extends AsyncTask
    {

        private Exception mException;
        private ProgressDialog mPD;
        private final ProgressCallable val$pCallable;
        private final Callback val$pCallback;
        private final Context val$pContext;
        private final Callback val$pExceptionCallback;
        private final int val$pIconResourceID;
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
                obj = pCallable.call(new ActivityUtils._cls2._cls1());
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
            mPD = new ProgressDialog(pContext);
            mPD.setTitle(pTitle);
            mPD.setIcon(pIconResourceID);
            mPD.setIndeterminate(false);
            mPD.setProgressStyle(1);
            mPD.show();
            super.onPreExecute();
        }

        public transient void onProgressUpdate(Integer ainteger[])
        {
            mPD.setProgress(ainteger[0].intValue());
        }

        public volatile transient void onProgressUpdate(Object aobj[])
        {
            onProgressUpdate((Integer[])aobj);
        }

            
            {
                pContext = context;
                pTitle = charsequence;
                pIconResourceID = i;
                pCallable = progresscallable;
                pCallback = callback;
                pExceptionCallback = callback1;
                super();
                mException = null;
            }
    }

}
