// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Fixture

public interface ContactFilter
{

    public abstract boolean shouldCollide(Fixture fixture, Fixture fixture1);
}
