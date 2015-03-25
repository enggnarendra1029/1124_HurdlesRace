// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.JointDef;

public class RopeJointDef extends JointDef
{

    public final Vector2 localAnchorA = new Vector2(-1F, 0.0F);
    public final Vector2 localAnchorB = new Vector2(1.0F, 0.0F);
    public float maxLength;

    public RopeJointDef()
    {
        maxLength = 0.0F;
        type = com.badlogic.gdx.physics.box2d.JointDef.JointType.RopeJoint;
    }
}
