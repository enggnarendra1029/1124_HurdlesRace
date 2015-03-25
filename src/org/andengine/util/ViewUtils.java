// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public final class ViewUtils
{

    public ViewUtils()
    {
    }

    public static final View inflate(Context context, int i)
    {
        return LayoutInflater.from(context).inflate(i, null);
    }

    public static final View inflate(Context context, int i, ViewGroup viewgroup)
    {
        return LayoutInflater.from(context).inflate(i, viewgroup, true);
    }
}
