// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class Transform
{

    public static final int COS = 2;
    public static final int POS_X = 0;
    public static final int POS_Y = 1;
    public static final int SIN = 3;
    private Vector2 position;
    public float vals[];

    public Transform()
    {
        vals = new float[4];
        position = new Vector2();
    }

    public Transform(Vector2 vector2, float f)
    {
        vals = new float[4];
        position = new Vector2();
        setPosition(vector2);
        setRotation(f);
    }

    public Vector2 getPosition()
    {
        return position.set(vals[0], vals[1]);
    }

    public float getRotation()
    {
        return (float)Math.atan2(vals[3], vals[2]);
    }

    public Vector2 mul(Vector2 vector2)
    {
        float f = vals[0] + vals[2] * vector2.x + -vals[3] * vector2.y;
        float f1 = vals[1] + vals[3] * vector2.x + vals[2] * vector2.y;
        vector2.x = f;
        vector2.y = f1;
        return vector2;
    }

    public void setPosition(Vector2 vector2)
    {
        vals[0] = vector2.x;
        vals[1] = vector2.y;
    }

    public void setRotation(float f)
    {
        float f1 = (float)Math.cos(f);
        float f2 = (float)Math.sin(f);
        vals[2] = f1;
        vals[3] = f2;
    }
}
