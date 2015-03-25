// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options;


// Referenced classes of package org.andengine.engine.options:
//            SoundOptions, MusicOptions

public class AudioOptions
{

    private MusicOptions mMusicOptions;
    private SoundOptions mSoundOptions;

    public AudioOptions()
    {
        mSoundOptions = new SoundOptions();
        mMusicOptions = new MusicOptions();
    }

    public MusicOptions getMusicOptions()
    {
        return mMusicOptions;
    }

    public SoundOptions getSoundOptions()
    {
        return mSoundOptions;
    }

    public boolean needsMusic()
    {
        return mMusicOptions.needsMusic();
    }

    public boolean needsSound()
    {
        return mSoundOptions.needsSound();
    }

    public AudioOptions setNeedsMusic(boolean flag)
    {
        mMusicOptions.setNeedsMusic(flag);
        return this;
    }

    public AudioOptions setNeedsSound(boolean flag)
    {
        mSoundOptions.setNeedsSound(flag);
        return this;
    }
}
