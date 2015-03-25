// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio.sound;

import android.media.SoundPool;
import android.util.SparseArray;
import org.andengine.audio.BaseAudioManager;
import org.andengine.audio.IAudioEntity;
import org.andengine.audio.sound.exception.SoundException;

// Referenced classes of package org.andengine.audio.sound:
//            Sound

public class SoundManager extends BaseAudioManager
    implements android.media.SoundPool.OnLoadCompleteListener
{

    public static final int MAX_SIMULTANEOUS_STREAMS_DEFAULT = 5;
    private static final int SOUND_STATUS_OK;
    private final SparseArray mSoundMap;
    private final SoundPool mSoundPool;

    public SoundManager()
    {
        this(5);
    }

    public SoundManager(int i)
    {
        mSoundMap = new SparseArray();
        mSoundPool = new SoundPool(i, 3, 0);
        mSoundPool.setOnLoadCompleteListener(this);
    }

    public volatile void add(IAudioEntity iaudioentity)
    {
        add((Sound)iaudioentity);
    }

    public void add(Sound sound)
    {
        super.add(sound);
        mSoundMap.put(sound.getSoundID(), sound);
    }

    SoundPool getSoundPool()
    {
        return mSoundPool;
    }

    public void onLoadComplete(SoundPool soundpool, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        if (j != 0)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        Sound sound = (Sound)mSoundMap.get(i);
        if (sound != null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        throw new SoundException((new StringBuilder("Unexpected soundID: '")).append(i).append("'.").toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        sound.setLoaded(true);
        this;
        JVM INSTR monitorexit ;
    }

    public void releaseAll()
    {
        super.releaseAll();
        mSoundPool.release();
    }

    public volatile boolean remove(IAudioEntity iaudioentity)
    {
        return remove((Sound)iaudioentity);
    }

    public boolean remove(Sound sound)
    {
        boolean flag = super.remove(sound);
        if (flag)
        {
            mSoundMap.remove(sound.getSoundID());
        }
        return flag;
    }
}
