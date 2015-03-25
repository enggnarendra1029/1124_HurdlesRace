// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import android.widget.Toast;

// Referenced classes of package org.andengine.ui.activity:
//            BaseActivity

class val.pDuration
    implements Runnable
{

    final BaseActivity this$0;
    private final int val$pDuration;
    private final CharSequence val$pText;

    public void run()
    {
        Toast.makeText(BaseActivity.this, val$pText, val$pDuration).show();
    }

    ()
    {
        this$0 = final_baseactivity;
        val$pText = charsequence;
        val$pDuration = I.this;
        super();
    }
}
