// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class DistanceJoint extends Joint
{

    public DistanceJoint(World world, long l)
    {
        super(world, l);
    }

    private native float jniGetDampingRatio(long l);

    private native float jniGetFrequency(long l);

    private native float jniGetLength(long l);

    private native void jniSetDampingRatio(long l, float f);

    private native void jniSetFrequency(long l, float f);

    private native void jniSetLength(long l, float f);

    public float getDampingRatio()
    {
        return jniGetDampingRatio(addr);
    }

    public float getFrequency()
    {
        return jniGetFrequency(addr);
    }

    public float getLength()
    {
        return jniGetLength(addr);
    }

    public void setDampingRatio(float f)
    {
        jniSetDampingRatio(addr, f);
    }

    public void setFrequency(float f)
    {
        jniSetFrequency(addr, f);
    }

    public void setLength(float f)
    {
        jniSetLength(addr, f);
    }
}
