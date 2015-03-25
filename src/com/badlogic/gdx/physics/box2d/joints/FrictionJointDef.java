// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.JointDef;

public class FrictionJointDef extends JointDef
{

    public final Vector2 localAnchorA = new Vector2();
    public final Vector2 localAnchorB = new Vector2();
    public float maxForce;
    public float maxTorque;

    public FrictionJointDef()
    {
        maxForce = 0.0F;
        maxTorque = 0.0F;
        type = com.badlogic.gdx.physics.box2d.JointDef.JointType.FrictionJoint;
    }

    public void initialize(Body body, Body body1, Vector2 vector2)
    {
        bodyA = body;
        bodyB = body1;
        localAnchorA.set(body.getLocalPoint(vector2));
        localAnchorB.set(body1.getLocalPoint(vector2));
    }
}
