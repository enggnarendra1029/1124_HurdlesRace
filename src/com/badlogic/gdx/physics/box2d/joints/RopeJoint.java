// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class RopeJoint extends Joint
{

    public RopeJoint(World world, long l)
    {
        super(world, l);
    }

    private native float jniGetMaxLength(long l);

    private native float jniSetMaxLength(long l, float f);

    public float getMaxLength()
    {
        return jniGetMaxLength(addr);
    }

    public void setMaxLength(float f)
    {
        jniSetMaxLength(addr, f);
    }
}
