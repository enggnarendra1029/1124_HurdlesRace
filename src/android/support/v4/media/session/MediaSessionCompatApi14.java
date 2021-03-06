// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.Bundle;
import android.os.ResultReceiver;

public class MediaSessionCompatApi14
{
    public static interface Callback
    {

        public abstract void onCommand(String s, Bundle bundle, ResultReceiver resultreceiver);

        public abstract void onFastForward();

        public abstract boolean onMediaButtonEvent(Intent intent);

        public abstract void onPause();

        public abstract void onPlay();

        public abstract void onRewind();

        public abstract void onSeekTo(long l);

        public abstract void onSetRating(Object obj);

        public abstract void onSkipToNext();

        public abstract void onSkipToPrevious();

        public abstract void onStop();
    }


    private static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
    private static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
    private static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
    private static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
    private static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
    private static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
    private static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
    private static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
    private static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
    private static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
    private static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
    private static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
    private static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
    private static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
    private static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
    static final int RCC_PLAYSTATE_NONE = 0;
    static final int STATE_BUFFERING = 6;
    static final int STATE_CONNECTING = 8;
    static final int STATE_ERROR = 7;
    static final int STATE_FAST_FORWARDING = 4;
    static final int STATE_NONE = 0;
    static final int STATE_PAUSED = 2;
    static final int STATE_PLAYING = 3;
    static final int STATE_REWINDING = 5;
    static final int STATE_SKIPPING_TO_NEXT = 10;
    static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    static final int STATE_STOPPED = 1;

    public MediaSessionCompatApi14()
    {
    }

    static void buildOldMetadata(Bundle bundle, android.media.RemoteControlClient.MetadataEditor metadataeditor)
    {
        if (bundle.containsKey("android.media.metadata.ALBUM"))
        {
            metadataeditor.putString(1, bundle.getString("android.media.metadata.ALBUM"));
        }
        if (bundle.containsKey("android.media.metadata.ALBUM_ARTIST"))
        {
            metadataeditor.putString(13, bundle.getString("android.media.metadata.ALBUM_ARTIST"));
        }
        if (bundle.containsKey("android.media.metadata.ARTIST"))
        {
            metadataeditor.putString(2, bundle.getString("android.media.metadata.ARTIST"));
        }
        if (bundle.containsKey("android.media.metadata.AUTHOR"))
        {
            metadataeditor.putString(3, bundle.getString("android.media.metadata.AUTHOR"));
        }
        if (bundle.containsKey("android.media.metadata.COMPILATION"))
        {
            metadataeditor.putString(15, bundle.getString("android.media.metadata.COMPILATION"));
        }
        if (bundle.containsKey("android.media.metadata.COMPOSER"))
        {
            metadataeditor.putString(4, bundle.getString("android.media.metadata.COMPOSER"));
        }
        if (bundle.containsKey("android.media.metadata.DATE"))
        {
            metadataeditor.putString(5, bundle.getString("android.media.metadata.DATE"));
        }
        if (bundle.containsKey("android.media.metadata.DISC_NUMBER"))
        {
            metadataeditor.putLong(14, bundle.getLong("android.media.metadata.DISC_NUMBER"));
        }
        if (bundle.containsKey("android.media.metadata.DURATION"))
        {
            metadataeditor.putLong(9, bundle.getLong("android.media.metadata.DURATION"));
        }
        if (bundle.containsKey("android.media.metadata.GENRE"))
        {
            metadataeditor.putString(6, bundle.getString("android.media.metadata.GENRE"));
        }
        if (bundle.containsKey("android.media.metadata.NUM_TRACKS"))
        {
            metadataeditor.putLong(10, bundle.getLong("android.media.metadata.NUM_TRACKS"));
        }
        if (bundle.containsKey("android.media.metadata.TITLE"))
        {
            metadataeditor.putString(7, bundle.getString("android.media.metadata.TITLE"));
        }
        if (bundle.containsKey("android.media.metadata.TRACK_NUMBER"))
        {
            metadataeditor.putLong(0, bundle.getLong("android.media.metadata.TRACK_NUMBER"));
        }
        if (bundle.containsKey("android.media.metadata.WRITER"))
        {
            metadataeditor.putString(11, bundle.getString("android.media.metadata.WRITER"));
        }
        if (bundle.containsKey("android.media.metadata.YEAR"))
        {
            metadataeditor.putString(8, bundle.getString("android.media.metadata.YEAR"));
        }
    }

    public static Object createRemoteControlClient(PendingIntent pendingintent)
    {
        return new RemoteControlClient(pendingintent);
    }

    static int getRccStateFromState(int i)
    {
        switch (i)
        {
        default:
            return -1;

        case 6: // '\006'
        case 8: // '\b'
            return 8;

        case 7: // '\007'
            return 9;

        case 4: // '\004'
            return 4;

        case 0: // '\0'
            return 0;

        case 2: // '\002'
            return 2;

        case 3: // '\003'
            return 3;

        case 5: // '\005'
            return 5;

        case 9: // '\t'
            return 7;

        case 10: // '\n'
            return 6;

        case 1: // '\001'
            return 1;
        }
    }

    public static void registerRemoteControlClient(Context context, Object obj)
    {
        ((AudioManager)context.getSystemService("audio")).registerRemoteControlClient((RemoteControlClient)obj);
    }

    public static void setMetadata(Object obj, Bundle bundle)
    {
        android.media.RemoteControlClient.MetadataEditor metadataeditor = ((RemoteControlClient)obj).editMetadata(true);
        buildOldMetadata(bundle, metadataeditor);
        metadataeditor.apply();
    }

    public static void setState(Object obj, int i)
    {
        ((RemoteControlClient)obj).setPlaybackState(getRccStateFromState(i));
    }

    public static void unregisterRemoteControlClient(Context context, Object obj)
    {
        ((AudioManager)context.getSystemService("audio")).unregisterRemoteControlClient((RemoteControlClient)obj);
    }
}
