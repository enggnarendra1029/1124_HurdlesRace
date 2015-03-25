// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Joint, Body

public class JointEdge
{

    public final Joint joint;
    public final Body other;

    protected JointEdge(Body body, Joint joint1)
    {
        other = body;
        joint = joint1;
    }
}
