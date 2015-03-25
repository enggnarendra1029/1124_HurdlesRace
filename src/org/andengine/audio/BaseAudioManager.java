// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio;

import java.util.ArrayList;

// Referenced classes of package org.andengine.audio:
//            IAudioManager, IAudioEntity

public abstract class BaseAudioManager
    implements IAudioManager
{

    protected final ArrayList mAudioEntities = new ArrayList();
    protected float mMasterVolume;

    public BaseAudioManager()
    {
        mMasterVolume = 1.0F;
    }

    public void add(IAudioEntity iaudioentity)
    {
        mAudioEntities.add(iaudioentity);
    }

    public float getMasterVolume()
    {
        return mMasterVolume;
    }

    public void releaseAll()
    {
        ArrayList arraylist = mAudioEntities;
        int i = -1 + arraylist.size();
        do
        {
            if (i < 0)
            {
                return;
            }
            IAudioEntity iaudioentity = (IAudioEntity)arraylist.get(i);
            iaudioentity.stop();
            iaudioentity.release();
            i--;
        } while (true);
    }

    public boolean remove(IAudioEntity iaudioentity)
    {
        return mAudioEntities.remove(iaudioentity);
    }

    public void setMasterVolume(float f)
    {
        mMasterVolume = f;
        ArrayList arraylist = mAudioEntities;
        int i = -1 + arraylist.size();
        do
        {
            if (i < 0)
            {
                return;
            }
            ((IAudioEntity)arraylist.get(i)).onMasterVolumeChanged(f);
            i--;
        } while (true);
    }
}
