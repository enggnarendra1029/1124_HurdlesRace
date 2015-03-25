// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Manifold

public class contactID
{

    public int contactID;
    public final Vector2 localPoint = new Vector2();
    public float normalImpulse;
    public float tangentImpulse;
    final Manifold this$0;

    public String toString()
    {
        return (new StringBuilder("id: ")).append(contactID).append(", ").append(localPoint).append(", ").append(normalImpulse).append(", ").append(tangentImpulse).toString();
    }

    public ()
    {
        this$0 = Manifold.this;
        super();
        contactID = 0;
    }
}
