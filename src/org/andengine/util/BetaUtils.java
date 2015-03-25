// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import java.util.GregorianCalendar;
import org.andengine.util.preferences.SimplePreferences;

public class BetaUtils
{

    private static final String PREFERENCES_BETAUTILS_ID = "preferences.betautils.lastuse";

    public BetaUtils()
    {
    }

    public static boolean finishWhenExpired(Activity activity, GregorianCalendar gregoriancalendar, int i, int j)
    {
        return finishWhenExpired(activity, gregoriancalendar, i, j, null, null);
    }

    public static boolean finishWhenExpired(final Activity pActivity, GregorianCalendar gregoriancalendar, int i, int j, final Intent pOkIntent, final Intent pCancelIntent)
    {
        SharedPreferences sharedpreferences = SimplePreferences.getInstance(pActivity);
        long l = Math.max(System.currentTimeMillis(), sharedpreferences.getLong("preferences.betautils.lastuse", -1L));
        sharedpreferences.edit().putLong("preferences.betautils.lastuse", l).commit();
        GregorianCalendar gregoriancalendar1 = new GregorianCalendar();
        gregoriancalendar1.setTimeInMillis(l);
        if (gregoriancalendar1.after(gregoriancalendar))
        {
            android.app.AlertDialog.Builder builder = (new android.app.AlertDialog.Builder(pActivity)).setTitle(i).setIcon(0x1080027).setMessage(j);
            builder.setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener() {

                private final Activity val$pActivity;
                private final Intent val$pOkIntent;

                public void onClick(DialogInterface dialoginterface, int k)
                {
                    if (pOkIntent != null)
                    {
                        pActivity.startActivity(pOkIntent);
                    }
                    pActivity.finish();
                }

            
            {
                pOkIntent = intent;
                pActivity = activity;
                super();
            }
            });
            builder.setNegativeButton(0x1040000, new android.content.DialogInterface.OnClickListener() {

                private final Activity val$pActivity;
                private final Intent val$pCancelIntent;

                public void onClick(DialogInterface dialoginterface, int k)
                {
                    if (pCancelIntent != null)
                    {
                        pActivity.startActivity(pCancelIntent);
                    }
                    pActivity.finish();
                }

            
            {
                pCancelIntent = intent;
                pActivity = activity;
                super();
            }
            }).create().show();
            return true;
        } else
        {
            return false;
        }
    }
}
