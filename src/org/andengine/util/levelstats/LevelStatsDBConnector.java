// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.levelstats;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.andengine.util.StreamUtils;
import org.andengine.util.call.Callback;
import org.andengine.util.debug.Debug;
import org.andengine.util.math.MathUtils;
import org.andengine.util.preferences.SimplePreferences;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public class LevelStatsDBConnector
{

    private static final String PREFERENCES_LEVELSTATSDBCONNECTOR_PLAYERID_ID = "preferences.levelstatsdbconnector.playerid";
    private final int mPlayerID;
    private final String mSecret;
    private final String mSubmitURL;

    public LevelStatsDBConnector(Context context, String s, String s1)
    {
        mSecret = s;
        mSubmitURL = s1;
        int i = SimplePreferences.getInstance(context).getInt("preferences.levelstatsdbconnector.playerid", -1);
        if (i != -1)
        {
            mPlayerID = i;
            return;
        } else
        {
            mPlayerID = MathUtils.random(0x3b9aca00, 0x7fffffff);
            SimplePreferences.getEditorInstance(context).putInt("preferences.levelstatsdbconnector.playerid", mPlayerID).commit();
            return;
        }
    }

    public void submitAsync(int i, boolean flag, int j)
    {
        submitAsync(i, flag, j, null);
    }

    public void submitAsync(final int pLevelID, final boolean pSolved, final int pSecondsElapsed, final Callback pCallback)
    {
        (new Thread(new Runnable() {

            final LevelStatsDBConnector this$0;
            private final Callback val$pCallback;
            private final int val$pLevelID;
            private final int val$pSecondsElapsed;
            private final boolean val$pSolved;

            public void run()
            {
                DefaultHttpClient defaulthttpclient;
                HttpPost httppost;
                ArrayList arraylist;
                defaulthttpclient = new DefaultHttpClient();
                httppost = new HttpPost(mSubmitURL);
                arraylist = new ArrayList(5);
                arraylist.add(new BasicNameValuePair("level_id", String.valueOf(pLevelID)));
                String s;
                HttpResponse httpresponse;
                if (pSolved)
                {
                    s = "1";
                } else
                {
                    s = "0";
                }
                arraylist.add(new BasicNameValuePair("solved", s));
                arraylist.add(new BasicNameValuePair("secondsplayed", String.valueOf(pSecondsElapsed)));
                arraylist.add(new BasicNameValuePair("player_id", String.valueOf(mPlayerID)));
                arraylist.add(new BasicNameValuePair("secret", String.valueOf(mSecret)));
                httppost.setEntity(new UrlEncodedFormEntity(arraylist));
                httpresponse = defaulthttpclient.execute(httppost);
                if (httpresponse.getStatusLine().getStatusCode() != 200)
                {
                    break MISSING_BLOCK_LABEL_291;
                }
                if (StreamUtils.readFully(httpresponse.getEntity().getContent()).equals("<success/>"))
                {
                    if (pCallback != null)
                    {
                        pCallback.onCallback(Boolean.valueOf(true));
                        return;
                    }
                    break MISSING_BLOCK_LABEL_311;
                }
                try
                {
                    if (pCallback != null)
                    {
                        pCallback.onCallback(Boolean.valueOf(false));
                        return;
                    }
                }
                catch (IOException ioexception)
                {
                    Debug.e(ioexception);
                    if (pCallback != null)
                    {
                        pCallback.onCallback(Boolean.valueOf(false));
                        return;
                    }
                }
                break MISSING_BLOCK_LABEL_311;
                if (pCallback != null)
                {
                    pCallback.onCallback(Boolean.valueOf(false));
                }
            }

            
            {
                this$0 = LevelStatsDBConnector.this;
                pLevelID = i;
                pSolved = flag;
                pSecondsElapsed = j;
                pCallback = callback;
                super();
            }
        })).start();
    }



}
