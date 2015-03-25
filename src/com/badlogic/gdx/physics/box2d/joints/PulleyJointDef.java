// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.JointDef;

public class PulleyJointDef extends JointDef
{

    private static final float minPulleyLength = 2F;
    public final Vector2 groundAnchorA = new Vector2(-1F, 1.0F);
    public final Vector2 groundAnchorB = new Vector2(1.0F, 1.0F);
    public float lengthA;
    public float lengthB;
    public final Vector2 localAnchorA = new Vector2(-1F, 0.0F);
    public final Vector2 localAnchorB = new Vector2(1.0F, 0.0F);
    public float ratio;

    public PulleyJointDef()
    {
        lengthA = 0.0F;
        lengthB = 0.0F;
        ratio = 1.0F;
        type = com.badlogic.gdx.physics.box2d.JointDef.JointType.PulleyJoint;
        collideConnected = true;
    }

    public void initialize(Body body, Body body1, Vector2 vector2, Vector2 vector2_1, Vector2 vector2_2, Vector2 vector2_3, float f)
    {
        bodyA = body;
        bodyB = body1;
        groundAnchorA.set(vector2);
        groundAnchorB.set(vector2_1);
        localAnchorA.set(body.getLocalPoint(vector2_2));
        localAnchorB.set(body1.getLocalPoint(vector2_3));
        lengthA = vector2_2.dst(vector2);
        lengthB = vector2_3.dst(vector2_1);
        ratio = f;
        float _tmp = lengthA + f * lengthB;
    }
}
