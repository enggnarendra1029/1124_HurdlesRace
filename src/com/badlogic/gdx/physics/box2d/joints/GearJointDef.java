// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.JointDef;

public class GearJointDef extends JointDef
{

    public Joint joint1;
    public Joint joint2;
    public float ratio;

    public GearJointDef()
    {
        joint1 = null;
        joint2 = null;
        ratio = 1.0F;
        type = com.badlogic.gdx.physics.box2d.JointDef.JointType.GearJoint;
    }
}
