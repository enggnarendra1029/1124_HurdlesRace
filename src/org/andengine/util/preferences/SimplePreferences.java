// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class SimplePreferences
{

    private static android.content.SharedPreferences.Editor EDITORINSTANCE;
    private static SharedPreferences INSTANCE;

    public SimplePreferences()
    {
    }

    public static int getAccessCount(Context context, String s)
    {
        return getInstance(context).getInt(s, 0);
    }

    public static android.content.SharedPreferences.Editor getEditorInstance(Context context)
    {
        if (EDITORINSTANCE == null)
        {
            EDITORINSTANCE = getInstance(context).edit();
        }
        return EDITORINSTANCE;
    }

    public static SharedPreferences getInstance(Context context)
    {
        if (INSTANCE == null)
        {
            INSTANCE = PreferenceManager.getDefaultSharedPreferences(context);
        }
        return INSTANCE;
    }

    public static int incrementAccessCount(Context context, String s)
    {
        return incrementAccessCount(context, s, 1);
    }

    public static int incrementAccessCount(Context context, String s, int i)
    {
        SharedPreferences sharedpreferences = getInstance(context);
        int j = i + sharedpreferences.getInt(s, 0);
        sharedpreferences.edit().putInt(s, j).commit();
        return j;
    }
}
