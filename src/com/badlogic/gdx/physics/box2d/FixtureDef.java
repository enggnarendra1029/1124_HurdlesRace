// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Filter, Shape

public class FixtureDef
{

    public float density;
    public final Filter filter = new Filter();
    public float friction;
    public boolean isSensor;
    public float restitution;
    public Shape shape;

    public FixtureDef()
    {
        friction = 0.2F;
        restitution = 0.0F;
        density = 0.0F;
        isSensor = false;
    }
}
