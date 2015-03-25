// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio;


public interface IAudioEntity
{

    public abstract float getLeftVolume();

    public abstract float getRightVolume();

    public abstract float getVolume();

    public abstract void onMasterVolumeChanged(float f);

    public abstract void pause();

    public abstract void play();

    public abstract void release();

    public abstract void resume();

    public abstract void setLooping(boolean flag);

    public abstract void setVolume(float f);

    public abstract void setVolume(float f, float f1);

    public abstract void stop();
}
