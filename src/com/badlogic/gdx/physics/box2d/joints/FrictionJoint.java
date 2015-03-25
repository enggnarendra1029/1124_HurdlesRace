// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class FrictionJoint extends Joint
{

    public FrictionJoint(World world, long l)
    {
        super(world, l);
    }

    private native float jniGetMaxForce(long l);

    private native float jniGetMaxTorque(long l);

    private native void jniSetMaxForce(long l, float f);

    private native void jniSetMaxTorque(long l, float f);

    public float getMaxForce()
    {
        return jniGetMaxForce(addr);
    }

    public float getMaxTorque()
    {
        return jniGetMaxTorque(addr);
    }

    public void setMaxForce(float f)
    {
        jniSetMaxForce(addr, f);
    }

    public void setMaxTorque(float f)
    {
        jniSetMaxTorque(addr, f);
    }
}
