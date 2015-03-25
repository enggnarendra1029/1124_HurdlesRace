// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.view.Window;
import org.andengine.util.call.AsyncCallable;
import org.andengine.util.call.Callable;
import org.andengine.util.call.Callback;
import org.andengine.util.debug.Debug;
import org.andengine.util.exception.CancelledException;
import org.andengine.util.progress.IProgressListener;
import org.andengine.util.progress.ProgressCallable;

public class ActivityUtils
{

    public ActivityUtils()
    {
    }

    public static void doAsync(Context context, int i, int j, AsyncCallable asynccallable, Callback callback, Callback callback1)
    {
        doAsync(context, ((CharSequence) (context.getString(i))), ((CharSequence) (context.getString(j))), asynccallable, callback, callback1);
    }

    public static void doAsync(Context context, int i, int j, Callable callable, Callback callback)
    {
        doAsync(context, i, j, callable, callback, null, false);
    }

    public static void doAsync(Context context, int i, int j, Callable callable, Callback callback, Callback callback1)
    {
        doAsync(context, i, j, callable, callback, callback1, false);
    }

    public static void doAsync(Context context, int i, int j, Callable callable, Callback callback, Callback callback1, boolean flag)
    {
        doAsync(context, ((CharSequence) (context.getString(i))), ((CharSequence) (context.getString(j))), callable, callback, callback1, flag);
    }

    public static void doAsync(Context context, int i, int j, Callable callable, Callback callback, boolean flag)
    {
        doAsync(context, i, j, callable, callback, null, flag);
    }

    public static void doAsync(Context context, CharSequence charsequence, CharSequence charsequence1, AsyncCallable asynccallable, Callback callback, Callback callback1)
    {
        asynccallable.call(new Callback() {

            private final Callback val$pCallback;
            private final ProgressDialog val$pd;

            public void onCallback(Object obj)
            {
                try
                {
                    pd.dismiss();
                }
                catch (Exception exception)
                {
                    Debug.e("Error", exception);
                }
                pCallback.onCallback(obj);
            }

            
            {
                pd = progressdialog;
                pCallback = callback;
                super();
            }
        }, callback1);
    }

    public static void doAsync(Context context, CharSequence charsequence, CharSequence charsequence1, Callable callable, Callback callback)
    {
        doAsync(context, charsequence, charsequence1, callable, callback, null, false);
    }

    public static void doAsync(Context context, CharSequence charsequence, CharSequence charsequence1, Callable callable, Callback callback, Callback callback1)
    {
        doAsync(context, charsequence, charsequence1, callable, callback, callback1, false);
    }

    public static void doAsync(final Context pContext, final CharSequence pTitle, final CharSequence pMessage, final Callable pCallable, final Callback pCallback, final Callback pExceptionCallback, final boolean pCancelable)
    {
        (new AsyncTask() {

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
                    mPD.setOnCancelListener(pExceptionCallback. new android.content.DialogInterface.OnCancelListener() {

                        final _cls1 this$1;
                        private final Callback val$pExceptionCallback;

                        public void onCancel(DialogInterface dialoginterface)
                        {
                            pExceptionCallback.onCallback(new CancelledException());
                            dialoginterface.dismiss();
                        }

            
            {
                this$1 = final__pcls1;
                pExceptionCallback = Callback.this;
                super();
            }
                    });
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
        }).execute(null);
    }

    public static void doAsync(Context context, CharSequence charsequence, CharSequence charsequence1, Callable callable, Callback callback, boolean flag)
    {
        doAsync(context, charsequence, charsequence1, callable, callback, null, flag);
    }

    public static void doProgressAsync(Context context, int i, int j, ProgressCallable progresscallable, Callback callback)
    {
        doProgressAsync(context, i, j, progresscallable, callback, null);
    }

    public static void doProgressAsync(Context context, int i, int j, ProgressCallable progresscallable, Callback callback, Callback callback1)
    {
        doProgressAsync(context, ((CharSequence) (context.getString(i))), j, progresscallable, callback, callback1);
    }

    public static void doProgressAsync(Context context, CharSequence charsequence, int i, ProgressCallable progresscallable, Callback callback)
    {
        doProgressAsync(context, charsequence, i, progresscallable, callback, null);
    }

    public static void doProgressAsync(final Context pContext, final CharSequence pTitle, final int pIconResourceID, final ProgressCallable pCallable, final Callback pCallback, final Callback pExceptionCallback)
    {
        (new AsyncTask() {

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
                    obj = pCallable.call(new IProgressListener() {

                        final _cls2 this$1;

                        public void onProgressChanged(int i)
                        {
                            _cls2 _lcls2 = _cls2.this;
                            Integer ainteger[] = new Integer[1];
                            ainteger[0] = Integer.valueOf(i);
                            _lcls2.onProgressUpdate(ainteger);
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    });
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
        }).execute(null);
    }

    public static void keepScreenOn(Activity activity)
    {
        activity.getWindow().addFlags(128);
    }

    public static void requestFullscreen(Activity activity)
    {
        Window window = activity.getWindow();
        window.addFlags(1024);
        window.clearFlags(2048);
        window.requestFeature(1);
    }

    public static void setScreenBrightness(Activity activity, float f)
    {
        Window window = activity.getWindow();
        android.view.WindowManager.LayoutParams layoutparams = window.getAttributes();
        layoutparams.screenBrightness = f;
        window.setAttributes(layoutparams);
    }
}
