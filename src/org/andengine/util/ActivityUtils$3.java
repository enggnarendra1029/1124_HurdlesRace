// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import android.app.ProgressDialog;
import org.andengine.util.call.Callback;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.util:
//            ActivityUtils

class val.pCallback
    implements Callback
{

    private final Callback val$pCallback;
    private final ProgressDialog val$pd;

    public void onCallback(Object obj)
    {
        try
        {
            val$pd.dismiss();
        }
        catch (Exception exception)
        {
            Debug.e("Error", exception);
        }
        val$pCallback.onCallback(obj);
    }

    ()
    {
        val$pd = progressdialog;
        val$pCallback = callback;
        super();
    }
}
