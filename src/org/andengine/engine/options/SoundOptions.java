// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options;


public class SoundOptions
{

    private int mMaxSimultaneousStreams;
    private boolean mNeedsSound;

    public SoundOptions()
    {
        mMaxSimultaneousStreams = 5;
    }

    public int getMaxSimultaneousStreams()
    {
        return mMaxSimultaneousStreams;
    }

    public boolean needsSound()
    {
        return mNeedsSound;
    }

    public SoundOptions setMaxSimultaneousStreams(int i)
    {
        mMaxSimultaneousStreams = i;
        return this;
    }

    public SoundOptions setNeedsSound(boolean flag)
    {
        mNeedsSound = flag;
        return this;
    }
}
