// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options;


public class RenderOptions
{

    private boolean mDithering;
    private boolean mMultiSampling;

    public RenderOptions()
    {
        mMultiSampling = false;
        mDithering = false;
    }

    public boolean isDithering()
    {
        return mDithering;
    }

    public boolean isMultiSampling()
    {
        return mMultiSampling;
    }

    public void setDithering(boolean flag)
    {
        mDithering = flag;
    }

    public void setMultiSampling(boolean flag)
    {
        mMultiSampling = flag;
    }
}
