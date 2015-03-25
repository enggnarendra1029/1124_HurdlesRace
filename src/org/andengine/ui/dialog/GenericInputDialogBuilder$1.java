// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.dialog;

import android.content.DialogInterface;
import android.text.Editable;
import android.widget.EditText;
import android.widget.Toast;
import org.andengine.util.call.Callback;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.ui.dialog:
//            GenericInputDialogBuilder

class val.etInput
    implements android.content.ner
{

    final GenericInputDialogBuilder this$0;
    private final EditText val$etInput;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Object obj;
        try
        {
            obj = generateResult(val$etInput.getText().toString());
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Debug.e("Error in GenericInputDialogBuilder.generateResult()", illegalargumentexception);
            Toast.makeText(mContext, GenericInputDialogBuilder.access$0(GenericInputDialogBuilder.this), 0).show();
            return;
        }
        mSuccessCallback.onCallback(obj);
        dialoginterface.dismiss();
    }

    _cls9()
    {
        this$0 = final_genericinputdialogbuilder;
        val$etInput = EditText.this;
        super();
    }
}
