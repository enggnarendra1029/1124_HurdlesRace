// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class MouseJoint extends Joint
{

    private final Vector2 target = new Vector2();
    final float tmp[] = new float[2];

    public MouseJoint(World world, long l)
    {
        super(world, l);
    }

    private native float jniGetDampingRatio(long l);

    private native float jniGetFrequency(long l);

    private native float jniGetMaxForce(long l);

    private native void jniGetTarget(long l, float af[]);

    private native void jniSetDampingRatio(long l, float f);

    private native void jniSetFrequency(long l, float f);

    private native void jniSetMaxForce(long l, float f);

    private native void jniSetTarget(long l, float f, float f1);

    public float getDampingRatio()
    {
        return jniGetDampingRatio(addr);
    }

    public float getFrequency()
    {
        return jniGetFrequency(addr);
    }

    public float getMaxForce()
    {
        return jniGetMaxForce(addr);
    }

    public Vector2 getTarget()
    {
        jniGetTarget(addr, tmp);
        target.x = tmp[0];
        target.y = tmp[1];
        return target;
    }

    public void setDampingRatio(float f)
    {
        jniSetDampingRatio(addr, f);
    }

    public void setFrequency(float f)
    {
        jniSetFrequency(addr, f);
    }

    public void setMaxForce(float f)
    {
        jniSetMaxForce(addr, f);
    }

    public void setTarget(Vector2 vector2)
    {
        jniSetTarget(addr, vector2.x, vector2.y);
    }
}
