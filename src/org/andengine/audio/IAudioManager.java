// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio;


// Referenced classes of package org.andengine.audio:
//            IAudioEntity

public interface IAudioManager
{

    public abstract void add(IAudioEntity iaudioentity);

    public abstract float getMasterVolume();

    public abstract void releaseAll();

    public abstract boolean remove(IAudioEntity iaudioentity);

    public abstract void setMasterVolume(float f);
}
