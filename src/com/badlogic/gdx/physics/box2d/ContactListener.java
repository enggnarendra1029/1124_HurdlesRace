// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Contact, ContactImpulse, Manifold

public interface ContactListener
{

    public abstract void beginContact(Contact contact);

    public abstract void endContact(Contact contact);

    public abstract void postSolve(Contact contact, ContactImpulse contactimpulse);

    public abstract void preSolve(Contact contact, Manifold manifold);
}
