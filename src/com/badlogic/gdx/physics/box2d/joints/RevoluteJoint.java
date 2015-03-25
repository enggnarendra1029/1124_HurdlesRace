// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class RevoluteJoint extends Joint
{

    public RevoluteJoint(World world, long l)
    {
        super(world, l);
    }

    private native void jniEnableLimit(long l, boolean flag);

    private native void jniEnableMotor(long l, boolean flag);

    private native float jniGetJointAngle(long l);

    private native float jniGetJointSpeed(long l);

    private native float jniGetLowerLimit(long l);

    private native float jniGetMotorSpeed(long l);

    private native float jniGetMotorTorque(long l, float f);

    private native float jniGetUpperLimit(long l);

    private native boolean jniIsLimitEnabled(long l);

    private native boolean jniIsMotorEnabled(long l);

    private native void jniSetLimits(long l, float f, float f1);

    private native void jniSetMaxMotorTorque(long l, float f);

    private native void jniSetMotorSpeed(long l, float f);

    public void enableLimit(boolean flag)
    {
        jniEnableLimit(addr, flag);
    }

    public void enableMotor(boolean flag)
    {
        jniEnableMotor(addr, flag);
    }

    public float getJointAngle()
    {
        return jniGetJointAngle(addr);
    }

    public float getJointSpeed()
    {
        return jniGetJointSpeed(addr);
    }

    public float getLowerLimit()
    {
        return jniGetLowerLimit(addr);
    }

    public float getMotorSpeed()
    {
        return jniGetMotorSpeed(addr);
    }

    public float getMotorTorque(float f)
    {
        return jniGetMotorTorque(addr, f);
    }

    public float getUpperLimit()
    {
        return jniGetUpperLimit(addr);
    }

    public boolean isLimitEnabled()
    {
        return jniIsLimitEnabled(addr);
    }

    public boolean isMotorEnabled()
    {
        return jniIsMotorEnabled(addr);
    }

    public void setLimits(float f, float f1)
    {
        jniSetLimits(addr, f, f1);
    }

    public void setMaxMotorTorque(float f)
    {
        jniSetMaxMotorTorque(addr, f);
    }

    public void setMotorSpeed(float f)
    {
        jniSetMotorSpeed(addr, f);
    }
}
