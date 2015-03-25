// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.JointDef;

public class RevoluteJointDef extends JointDef
{

    public boolean enableLimit;
    public boolean enableMotor;
    public final Vector2 localAnchorA = new Vector2();
    public final Vector2 localAnchorB = new Vector2();
    public float lowerAngle;
    public float maxMotorTorque;
    public float motorSpeed;
    public float referenceAngle;
    public float upperAngle;

    public RevoluteJointDef()
    {
        referenceAngle = 0.0F;
        enableLimit = false;
        lowerAngle = 0.0F;
        upperAngle = 0.0F;
        enableMotor = false;
        motorSpeed = 0.0F;
        maxMotorTorque = 0.0F;
        type = com.badlogic.gdx.physics.box2d.JointDef.JointType.RevoluteJoint;
    }

    public void initialize(Body body, Body body1, Vector2 vector2)
    {
        bodyA = body;
        bodyB = body1;
        localAnchorA.set(body.getLocalPoint(vector2));
        localAnchorB.set(body1.getLocalPoint(vector2));
        referenceAngle = body1.getAngle() - body.getAngle();
    }
}
