// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.dialog;

import android.content.Context;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.ui.dialog:
//            GenericInputDialogBuilder

public class StringInputDialogBuilder extends GenericInputDialogBuilder
{

    public StringInputDialogBuilder(Context context, int i, int j, int k, int l, String s, Callback callback, 
            android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        super(context, i, j, k, l, s, callback, oncancellistener);
    }

    public StringInputDialogBuilder(Context context, int i, int j, int k, int l, Callback callback, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        super(context, i, j, k, l, callback, oncancellistener);
    }

    protected volatile Object generateResult(String s)
    {
        return generateResult(s);
    }

    protected String generateResult(String s)
    {
        return s;
    }
}
