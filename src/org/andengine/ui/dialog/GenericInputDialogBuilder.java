// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.widget.EditText;
import android.widget.Toast;
import org.andengine.util.call.Callback;
import org.andengine.util.debug.Debug;

public abstract class GenericInputDialogBuilder
{

    protected final Context mContext;
    private final String mDefaultText;
    private final int mErrorResID;
    protected final int mIconResID;
    protected final int mMessageResID;
    protected final android.content.DialogInterface.OnCancelListener mOnCancelListener;
    protected final Callback mSuccessCallback;
    protected final int mTitleResID;

    public GenericInputDialogBuilder(Context context, int i, int j, int k, int l, String s, Callback callback, 
            android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        mContext = context;
        mTitleResID = i;
        mMessageResID = j;
        mErrorResID = k;
        mIconResID = l;
        mDefaultText = s;
        mSuccessCallback = callback;
        mOnCancelListener = oncancellistener;
    }

    public GenericInputDialogBuilder(Context context, int i, int j, int k, int l, Callback callback, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        this(context, i, j, k, l, "", callback, oncancellistener);
    }

    public Dialog create()
    {
        final EditText etInput = new EditText(mContext);
        etInput.setText(mDefaultText);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
        if (mTitleResID != 0)
        {
            builder.setTitle(mTitleResID);
        }
        if (mMessageResID != 0)
        {
            builder.setMessage(mMessageResID);
        }
        if (mIconResID != 0)
        {
            builder.setIcon(mIconResID);
        }
        setView(builder, etInput);
        builder.setOnCancelListener(mOnCancelListener).setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener() {

            final GenericInputDialogBuilder this$0;
            private final EditText val$etInput;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                Object obj;
                try
                {
                    obj = generateResult(etInput.getText().toString());
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    Debug.e("Error in GenericInputDialogBuilder.generateResult()", illegalargumentexception);
                    Toast.makeText(mContext, mErrorResID, 0).show();
                    return;
                }
                mSuccessCallback.onCallback(obj);
                dialoginterface.dismiss();
            }

            
            {
                this$0 = GenericInputDialogBuilder.this;
                etInput = edittext;
                super();
            }
        }).setNegativeButton(0x1040000, new android.content.DialogInterface.OnClickListener() {

            final GenericInputDialogBuilder this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mOnCancelListener.onCancel(dialoginterface);
                dialoginterface.dismiss();
            }

            
            {
                this$0 = GenericInputDialogBuilder.this;
                super();
            }
        });
        return builder.create();
    }

    protected abstract Object generateResult(String s);

    protected void setView(android.app.AlertDialog.Builder builder, EditText edittext)
    {
        builder.setView(edittext);
    }

}
