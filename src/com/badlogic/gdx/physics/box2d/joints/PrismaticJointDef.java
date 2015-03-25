// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.JointDef;

public class PrismaticJointDef extends JointDef
{

    public boolean enableLimit;
    public boolean enableMotor;
    public final Vector2 localAnchorA = new Vector2();
    public final Vector2 localAnchorB = new Vector2();
    public final Vector2 localAxisA = new Vector2(1.0F, 0.0F);
    public float lowerTranslation;
    public float maxMotorForce;
    public float motorSpeed;
    public float referenceAngle;
    public float upperTranslation;

    public PrismaticJointDef()
    {
        referenceAngle = 0.0F;
        enableLimit = false;
        lowerTranslation = 0.0F;
        upperTranslation = 0.0F;
        enableMotor = false;
        maxMotorForce = 0.0F;
        motorSpeed = 0.0F;
        type = com.badlogic.gdx.physics.box2d.JointDef.JointType.PrismaticJoint;
    }

    public void initialize(Body body, Body body1, Vector2 vector2, Vector2 vector2_1)
    {
        bodyA = body;
        bodyB = body1;
        localAnchorA.set(body.getLocalPoint(vector2));
        localAnchorB.set(body1.getLocalPoint(vector2));
        localAxisA.set(body.getLocalVector(vector2_1));
        referenceAngle = body1.getAngle() - body.getAngle();
    }
}
