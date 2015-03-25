// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class PulleyJoint extends Joint
{

    private final Vector2 groundAnchorA = new Vector2();
    private final Vector2 groundAnchorB = new Vector2();
    private final float tmp[] = new float[2];

    public PulleyJoint(World world, long l)
    {
        super(world, l);
    }

    private native void jniGetGroundAnchorA(long l, float af[]);

    private native void jniGetGroundAnchorB(long l, float af[]);

    private native float jniGetLength1(long l);

    private native float jniGetLength2(long l);

    private native float jniGetRatio(long l);

    public Vector2 getGroundAnchorA()
    {
        jniGetGroundAnchorA(addr, tmp);
        groundAnchorA.set(tmp[0], tmp[1]);
        return groundAnchorA;
    }

    public Vector2 getGroundAnchorB()
    {
        jniGetGroundAnchorB(addr, tmp);
        groundAnchorB.set(tmp[0], tmp[1]);
        return groundAnchorB;
    }

    public float getLength1()
    {
        return jniGetLength1(addr);
    }

    public float getLength2()
    {
        return jniGetLength2(addr);
    }

    public float getRatio()
    {
        return jniGetRatio(addr);
    }
}
