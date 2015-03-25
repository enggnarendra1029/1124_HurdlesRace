// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio.music;

import android.media.MediaPlayer;
import org.andengine.audio.BaseAudioEntity;
import org.andengine.audio.IAudioManager;
import org.andengine.audio.exception.AudioException;
import org.andengine.audio.music.exception.MusicReleasedException;

// Referenced classes of package org.andengine.audio.music:
//            MusicManager

public class Music extends BaseAudioEntity
{

    private MediaPlayer mMediaPlayer;

    Music(MusicManager musicmanager, MediaPlayer mediaplayer)
    {
        super(musicmanager);
        mMediaPlayer = mediaplayer;
    }

    protected volatile IAudioManager getAudioManager()
        throws AudioException
    {
        return getAudioManager();
    }

    protected MusicManager getAudioManager()
        throws MusicReleasedException
    {
        return (MusicManager)super.getAudioManager();
    }

    public MediaPlayer getMediaPlayer()
        throws MusicReleasedException
    {
        assertNotReleased();
        return mMediaPlayer;
    }

    public boolean isPlaying()
        throws MusicReleasedException
    {
        assertNotReleased();
        return mMediaPlayer.isPlaying();
    }

    public void onMasterVolumeChanged(float f)
        throws MusicReleasedException
    {
        setVolume(mLeftVolume, mRightVolume);
    }

    public void pause()
        throws MusicReleasedException
    {
        super.pause();
        mMediaPlayer.pause();
    }

    public void play()
        throws MusicReleasedException
    {
        super.play();
        mMediaPlayer.start();
    }

    public void release()
        throws MusicReleasedException
    {
        assertNotReleased();
        mMediaPlayer.release();
        mMediaPlayer = null;
        getAudioManager().remove(this);
        super.release();
    }

    public void resume()
        throws MusicReleasedException
    {
        super.resume();
        mMediaPlayer.start();
    }

    public void seekTo(int i)
        throws MusicReleasedException
    {
        assertNotReleased();
        mMediaPlayer.seekTo(i);
    }

    public void setLooping(boolean flag)
        throws MusicReleasedException
    {
        super.setLooping(flag);
        mMediaPlayer.setLooping(flag);
    }

    public void setOnCompletionListener(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
        throws MusicReleasedException
    {
        assertNotReleased();
        mMediaPlayer.setOnCompletionListener(oncompletionlistener);
    }

    public void setVolume(float f, float f1)
        throws MusicReleasedException
    {
        super.setVolume(f, f1);
        float f2 = getAudioManager().getMasterVolume();
        float f3 = f * f2;
        float f4 = f1 * f2;
        mMediaPlayer.setVolume(f3, f4);
    }

    public void stop()
        throws MusicReleasedException
    {
        super.stop();
        mMediaPlayer.stop();
    }

    protected void throwOnReleased()
        throws MusicReleasedException
    {
        throw new MusicReleasedException();
    }
}
