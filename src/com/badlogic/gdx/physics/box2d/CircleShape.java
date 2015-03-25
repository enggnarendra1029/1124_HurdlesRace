// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Shape

public class CircleShape extends Shape
{

    private final Vector2 position;
    private final float tmp[];

    public CircleShape()
    {
        tmp = new float[2];
        position = new Vector2();
        addr = newCircleShape();
    }

    protected CircleShape(long l)
    {
        tmp = new float[2];
        position = new Vector2();
        addr = l;
    }

    private native void jniGetPosition(long l, float af[]);

    private native void jniSetPosition(long l, float f, float f1);

    private native long newCircleShape();

    public Vector2 getPosition()
    {
        jniGetPosition(addr, tmp);
        position.x = tmp[0];
        position.y = tmp[1];
        return position;
    }

    public Shape.Type getType()
    {
        return Shape.Type.Circle;
    }

    public void setPosition(Vector2 vector2)
    {
        jniSetPosition(addr, vector2.x, vector2.y);
    }
}
