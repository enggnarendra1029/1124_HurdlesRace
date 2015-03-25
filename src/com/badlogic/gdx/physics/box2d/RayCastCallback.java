// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Fixture

public interface RayCastCallback
{

    public abstract float reportRayFixture(Fixture fixture, Vector2 vector2, Vector2 vector2_1, float f);
}
