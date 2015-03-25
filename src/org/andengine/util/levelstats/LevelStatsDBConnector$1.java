// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.levelstats;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.andengine.util.StreamUtils;
import org.andengine.util.call.Callback;
import org.andengine.util.debug.Debug;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package org.andengine.util.levelstats:
//            LevelStatsDBConnector

class val.pCallback
    implements Runnable
{

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
        httppost = new HttpPost(LevelStatsDBConnector.access$0(LevelStatsDBConnector.this));
        arraylist = new ArrayList(5);
        arraylist.add(new BasicNameValuePair("level_id", String.valueOf(val$pLevelID)));
        String s;
        HttpResponse httpresponse;
        if (val$pSolved)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        arraylist.add(new BasicNameValuePair("solved", s));
        arraylist.add(new BasicNameValuePair("secondsplayed", String.valueOf(val$pSecondsElapsed)));
        arraylist.add(new BasicNameValuePair("player_id", String.valueOf(LevelStatsDBConnector.access$1(LevelStatsDBConnector.this))));
        arraylist.add(new BasicNameValuePair("secret", String.valueOf(LevelStatsDBConnector.access$2(LevelStatsDBConnector.this))));
        httppost.setEntity(new UrlEncodedFormEntity(arraylist));
        httpresponse = defaulthttpclient.execute(httppost);
        if (httpresponse.getStatusLine().getStatusCode() != 200)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        if (StreamUtils.readFully(httpresponse.getEntity().getContent()).equals("<success/>"))
        {
            if (val$pCallback != null)
            {
                val$pCallback.onCallback(Boolean.valueOf(true));
                return;
            }
            break MISSING_BLOCK_LABEL_311;
        }
        try
        {
            if (val$pCallback != null)
            {
                val$pCallback.onCallback(Boolean.valueOf(false));
                return;
            }
        }
        catch (IOException ioexception)
        {
            Debug.e(ioexception);
            if (val$pCallback != null)
            {
                val$pCallback.onCallback(Boolean.valueOf(false));
                return;
            }
        }
        break MISSING_BLOCK_LABEL_311;
        if (val$pCallback != null)
        {
            val$pCallback.onCallback(Boolean.valueOf(false));
        }
    }

    ()
    {
        this$0 = final_levelstatsdbconnector;
        val$pLevelID = i;
        val$pSolved = flag;
        val$pSecondsElapsed = j;
        val$pCallback = Callback.this;
        super();
    }
}
