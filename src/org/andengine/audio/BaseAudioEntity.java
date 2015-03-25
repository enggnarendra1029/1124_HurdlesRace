// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio;

import org.andengine.audio.exception.AudioException;

// Referenced classes of package org.andengine.audio:
//            IAudioEntity, IAudioManager

public abstract class BaseAudioEntity
    implements IAudioEntity
{

    private final IAudioManager mAudioManager;
    protected float mLeftVolume;
    private boolean mReleased;
    protected float mRightVolume;

    public BaseAudioEntity(IAudioManager iaudiomanager)
    {
        mLeftVolume = 1.0F;
        mRightVolume = 1.0F;
        mAudioManager = iaudiomanager;
    }

    protected void assertNotReleased()
        throws AudioException
    {
        if (mReleased)
        {
            throwOnReleased();
        }
    }

    public float getActualLeftVolume()
        throws AudioException
    {
        assertNotReleased();
        return mLeftVolume * getMasterVolume();
    }

    public float getActualRightVolume()
        throws AudioException
    {
        assertNotReleased();
        return mRightVolume * getMasterVolume();
    }

    protected IAudioManager getAudioManager()
        throws AudioException
    {
        assertNotReleased();
        return mAudioManager;
    }

    public float getLeftVolume()
        throws AudioException
    {
        assertNotReleased();
        return mLeftVolume;
    }

    protected float getMasterVolume()
        throws AudioException
    {
        assertNotReleased();
        return mAudioManager.getMasterVolume();
    }

    public float getRightVolume()
        throws AudioException
    {
        assertNotReleased();
        return mRightVolume;
    }

    public float getVolume()
        throws AudioException
    {
        assertNotReleased();
        return 0.5F * (mLeftVolume + mRightVolume);
    }

    public boolean isReleased()
    {
        return mReleased;
    }

    public void onMasterVolumeChanged(float f)
        throws AudioException
    {
        assertNotReleased();
    }

    public void pause()
        throws AudioException
    {
        assertNotReleased();
    }

    public void play()
        throws AudioException
    {
        assertNotReleased();
    }

    public void release()
        throws AudioException
    {
        assertNotReleased();
        mReleased = true;
    }

    public void resume()
        throws AudioException
    {
        assertNotReleased();
    }

    public void setLooping(boolean flag)
        throws AudioException
    {
        assertNotReleased();
    }

    public final void setVolume(float f)
        throws AudioException
    {
        assertNotReleased();
        setVolume(f, f);
    }

    public void setVolume(float f, float f1)
        throws AudioException
    {
        assertNotReleased();
        mLeftVolume = f;
        mRightVolume = f1;
    }

    public void stop()
        throws AudioException
    {
        assertNotReleased();
    }

    protected abstract void throwOnReleased()
        throws AudioException;
}
