// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class WheelJoint extends Joint
{

    public WheelJoint(World world, long l)
    {
        super(world, l);
    }

    private boolean isMotorEnabled()
    {
        return jniIsMotorEnabled(addr);
    }

    private native void jniEnableMotor(long l, boolean flag);

    private native float jniGetJointSpeed(long l);

    private native float jniGetJointTranslation(long l);

    private native float jniGetMaxMotorTorque(long l);

    private native float jniGetMotorSpeed(long l);

    private native float jniGetMotorTorque(long l, float f);

    private native float jniGetSpringDampingRatio(long l);

    private native float jniGetSpringFrequencyHz(long l);

    private native boolean jniIsMotorEnabled(long l);

    private native void jniSetMaxMotorTorque(long l, float f);

    private native void jniSetMotorSpeed(long l, float f);

    private native void jniSetSpringDampingRatio(long l, float f);

    private native void jniSetSpringFrequencyHz(long l, float f);

    public void enableMotor(boolean flag)
    {
        jniEnableMotor(addr, flag);
    }

    public float getJointSpeed()
    {
        return jniGetJointSpeed(addr);
    }

    public float getJointTranslation()
    {
        return jniGetJointTranslation(addr);
    }

    public float getMaxMotorTorque()
    {
        return jniGetMaxMotorTorque(addr);
    }

    public float getMotorSpeed()
    {
        return jniGetMotorSpeed(addr);
    }

    public float getMotorTorque(float f)
    {
        return jniGetMotorTorque(addr, f);
    }

    public float getSpringDampingRatio()
    {
        return jniGetSpringDampingRatio(addr);
    }

    public float getSpringFrequencyHz()
    {
        return jniGetSpringFrequencyHz(addr);
    }

    public void setMaxMotorTorque(float f)
    {
        jniSetMaxMotorTorque(addr, f);
    }

    public void setMotorSpeed(float f)
    {
        jniSetMotorSpeed(addr, f);
    }

    public void setSpringDampingRatio(float f)
    {
        jniSetSpringDampingRatio(addr, f);
    }

    public void setSpringFrequencyHz(float f)
    {
        jniSetSpringFrequencyHz(addr, f);
    }
}
