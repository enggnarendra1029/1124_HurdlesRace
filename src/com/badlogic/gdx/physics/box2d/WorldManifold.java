// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class WorldManifold
{

    protected final Vector2 normal = new Vector2();
    protected int numContactPoints;
    protected final Vector2 points[];

    protected WorldManifold()
    {
        Vector2 avector2[] = new Vector2[2];
        avector2[0] = new Vector2();
        avector2[1] = new Vector2();
        points = avector2;
    }

    public Vector2 getNormal()
    {
        return normal;
    }

    public int getNumberOfContactPoints()
    {
        return numContactPoints;
    }

    public Vector2[] getPoints()
    {
        return points;
    }
}
