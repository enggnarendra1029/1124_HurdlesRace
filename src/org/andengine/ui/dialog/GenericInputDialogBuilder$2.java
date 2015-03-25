// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.dialog;

import android.content.DialogInterface;

// Referenced classes of package org.andengine.ui.dialog:
//            GenericInputDialogBuilder

class this._cls0
    implements android.content.ner
{

    final GenericInputDialogBuilder this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        mOnCancelListener.onCancel(dialoginterface);
        dialoginterface.dismiss();
    }

    _cls9()
    {
        this$0 = GenericInputDialogBuilder.this;
        super();
    }
}
