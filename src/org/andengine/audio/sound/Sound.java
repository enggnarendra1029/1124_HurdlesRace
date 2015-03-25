// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio.sound;

import android.media.SoundPool;
import org.andengine.audio.BaseAudioEntity;
import org.andengine.audio.IAudioManager;
import org.andengine.audio.exception.AudioException;
import org.andengine.audio.sound.exception.SoundReleasedException;

// Referenced classes of package org.andengine.audio.sound:
//            SoundManager

public class Sound extends BaseAudioEntity
{

    private boolean mLoaded;
    private int mLoopCount;
    private float mRate;
    private int mSoundID;
    private int mStreamID;

    Sound(SoundManager soundmanager, int i)
    {
        super(soundmanager);
        mRate = 1.0F;
        mSoundID = i;
    }

    private SoundPool getSoundPool()
        throws SoundReleasedException
    {
        return getAudioManager().getSoundPool();
    }

    protected volatile IAudioManager getAudioManager()
        throws AudioException
    {
        return getAudioManager();
    }

    protected SoundManager getAudioManager()
        throws SoundReleasedException
    {
        return (SoundManager)super.getAudioManager();
    }

    public float getRate()
    {
        return mRate;
    }

    public int getSoundID()
    {
        return mSoundID;
    }

    public int getStreamID()
    {
        return mStreamID;
    }

    public boolean isLoaded()
    {
        return mLoaded;
    }

    public void onMasterVolumeChanged(float f)
        throws SoundReleasedException
    {
        setVolume(mLeftVolume, mRightVolume);
    }

    public void pause()
        throws SoundReleasedException
    {
        super.pause();
        if (mStreamID != 0)
        {
            getSoundPool().pause(mStreamID);
        }
    }

    public void play()
        throws SoundReleasedException
    {
        super.play();
        float f = getMasterVolume();
        float f1 = f * mLeftVolume;
        float f2 = f * mRightVolume;
        mStreamID = getSoundPool().play(mSoundID, f1, f2, 1, mLoopCount, mRate);
    }

    public void release()
        throws SoundReleasedException
    {
        assertNotReleased();
        getSoundPool().unload(mSoundID);
        mSoundID = 0;
        mLoaded = false;
        getAudioManager().remove(this);
        super.release();
    }

    public void resume()
        throws SoundReleasedException
    {
        super.resume();
        if (mStreamID != 0)
        {
            getSoundPool().resume(mStreamID);
        }
    }

    public void setLoaded(boolean flag)
    {
        mLoaded = flag;
    }

    public void setLoopCount(int i)
        throws SoundReleasedException
    {
        assertNotReleased();
        mLoopCount = i;
        if (mStreamID != 0)
        {
            getSoundPool().setLoop(mStreamID, i);
        }
    }

    public void setLooping(boolean flag)
        throws SoundReleasedException
    {
        super.setLooping(flag);
        byte byte0;
        if (flag)
        {
            byte0 = -1;
        } else
        {
            byte0 = 0;
        }
        setLoopCount(byte0);
    }

    public void setRate(float f)
        throws SoundReleasedException
    {
        assertNotReleased();
        mRate = f;
        if (mStreamID != 0)
        {
            getSoundPool().setRate(mStreamID, f);
        }
    }

    public void setVolume(float f, float f1)
        throws SoundReleasedException
    {
        super.setVolume(f, f1);
        if (mStreamID != 0)
        {
            float f2 = getMasterVolume();
            float f3 = f2 * mLeftVolume;
            float f4 = f2 * mRightVolume;
            getSoundPool().setVolume(mStreamID, f3, f4);
        }
    }

    public void stop()
        throws SoundReleasedException
    {
        super.stop();
        if (mStreamID != 0)
        {
            getSoundPool().stop(mStreamID);
        }
    }

    protected void throwOnReleased()
        throws SoundReleasedException
    {
        throw new SoundReleasedException();
    }
}
