// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import android.app.Dialog;
import android.view.Window;

public class DialogUtils
{

    public DialogUtils()
    {
    }

    public static void keepScreenOn(Dialog dialog)
    {
        dialog.getWindow().addFlags(128);
    }
}
