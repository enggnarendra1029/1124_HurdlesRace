// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio.music;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

// Referenced classes of package org.andengine.audio.music:
//            Music, MusicManager

public class MusicFactory
{

    private static String sAssetBasePath = "";

    public MusicFactory()
    {
    }

    public static Music createMusicFromAsset(MusicManager musicmanager, Context context, String s)
        throws IOException
    {
        MediaPlayer mediaplayer = new MediaPlayer();
        AssetFileDescriptor assetfiledescriptor = context.getAssets().openFd((new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString());
        mediaplayer.setDataSource(assetfiledescriptor.getFileDescriptor(), assetfiledescriptor.getStartOffset(), assetfiledescriptor.getLength());
        mediaplayer.prepare();
        Music music = new Music(musicmanager, mediaplayer);
        musicmanager.add(music);
        return music;
    }

    public static Music createMusicFromAssetFileDescriptor(MusicManager musicmanager, AssetFileDescriptor assetfiledescriptor)
        throws IOException
    {
        MediaPlayer mediaplayer = new MediaPlayer();
        mediaplayer.setDataSource(assetfiledescriptor.getFileDescriptor(), assetfiledescriptor.getStartOffset(), assetfiledescriptor.getLength());
        mediaplayer.prepare();
        Music music = new Music(musicmanager, mediaplayer);
        musicmanager.add(music);
        return music;
    }

    public static Music createMusicFromFile(MusicManager musicmanager, File file)
        throws IOException
    {
        MediaPlayer mediaplayer = new MediaPlayer();
        mediaplayer.setDataSource((new FileInputStream(file)).getFD());
        mediaplayer.prepare();
        Music music = new Music(musicmanager, mediaplayer);
        musicmanager.add(music);
        return music;
    }

    public static Music createMusicFromResource(MusicManager musicmanager, Context context, int i)
        throws IOException
    {
        MediaPlayer mediaplayer = MediaPlayer.create(context, i);
        mediaplayer.prepare();
        Music music = new Music(musicmanager, mediaplayer);
        musicmanager.add(music);
        return music;
    }

    public static String getAssetBasePath()
    {
        return sAssetBasePath;
    }

    public static void onCreate()
    {
        setAssetBasePath("");
    }

    public static void setAssetBasePath(String s)
    {
        if (s.endsWith("/") || s.length() == 0)
        {
            sAssetBasePath = s;
            return;
        } else
        {
            throw new IllegalStateException("pAssetBasePath must end with '/' or be lenght zero.");
        }
    }

}
