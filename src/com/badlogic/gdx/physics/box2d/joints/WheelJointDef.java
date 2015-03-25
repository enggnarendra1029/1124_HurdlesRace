// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.JointDef;

public class WheelJointDef extends JointDef
{

    public float dampingRatio;
    public boolean enableMotor;
    public float frequencyHz;
    public final Vector2 localAnchorA = new Vector2();
    public final Vector2 localAnchorB = new Vector2();
    public final Vector2 localAxisA = new Vector2(1.0F, 0.0F);
    public float maxMotorTorque;
    public float motorSpeed;

    public WheelJointDef()
    {
        enableMotor = false;
        maxMotorTorque = 0.0F;
        motorSpeed = 0.0F;
        frequencyHz = 2.0F;
        dampingRatio = 0.7F;
        type = com.badlogic.gdx.physics.box2d.JointDef.JointType.WheelJoint;
    }

    public void initialize(Body body, Body body1, Vector2 vector2, Vector2 vector2_1)
    {
        bodyA = body;
        bodyB = body1;
        localAnchorA.set(body.getLocalPoint(vector2));
        localAnchorB.set(body1.getLocalPoint(vector2));
        localAxisA.set(body.getLocalVector(vector2_1));
    }
}
