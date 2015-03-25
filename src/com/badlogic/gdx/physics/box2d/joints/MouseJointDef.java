// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.JointDef;

public class MouseJointDef extends JointDef
{

    public float dampingRatio;
    public float frequencyHz;
    public float maxForce;
    public final Vector2 target = new Vector2();

    public MouseJointDef()
    {
        maxForce = 0.0F;
        frequencyHz = 5F;
        dampingRatio = 0.7F;
        type = com.badlogic.gdx.physics.box2d.JointDef.JointType.MouseJoint;
    }
}
