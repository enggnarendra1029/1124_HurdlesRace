// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
import android.support.v4.media.RatingCompat;

// Referenced classes of package android.support.v4.media.session:
//            MediaControllerCompat

static class mControlsObj extends mControlsObj
{

    private final Object mControlsObj;

    public void fastForward()
    {
        fastForward(mControlsObj);
    }

    public void pause()
    {
        pause(mControlsObj);
    }

    public void play()
    {
        play(mControlsObj);
    }

    public void playFromMediaId(String s, Bundle bundle)
    {
        playFromMediaId(mControlsObj, s, bundle);
    }

    public void playFromSearch(String s, Bundle bundle)
    {
        playFromSearch(mControlsObj, s, bundle);
    }

    public void rewind()
    {
        rewind(mControlsObj);
    }

    public void seekTo(long l)
    {
        seekTo(mControlsObj, l);
    }

    public void sendCustomAction(mControlsObj mcontrolsobj, Bundle bundle)
    {
        sendCustomAction(mControlsObj, mcontrolsobj.mControlsObj(), bundle);
    }

    public void sendCustomAction(String s, Bundle bundle)
    {
        sendCustomAction(mControlsObj, s, bundle);
    }

    public void setRating(RatingCompat ratingcompat)
    {
        Object obj = mControlsObj;
        Object obj1;
        if (ratingcompat != null)
        {
            obj1 = ratingcompat.getRating();
        } else
        {
            obj1 = null;
        }
        setRating(obj, obj1);
    }

    public void skipToNext()
    {
        skipToNext(mControlsObj);
    }

    public void skipToPrevious()
    {
        skipToPrevious(mControlsObj);
    }

    public void skipToQueueItem(long l)
    {
        skipToQueueItem(mControlsObj, l);
    }

    public void stop()
    {
        stop(mControlsObj);
    }

    public (Object obj)
    {
        mControlsObj = obj;
    }
}
