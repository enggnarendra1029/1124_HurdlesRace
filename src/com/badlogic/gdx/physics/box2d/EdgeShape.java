// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Shape

public class EdgeShape extends Shape
{

    static final float vertex[] = new float[2];

    public EdgeShape()
    {
        addr = newEdgeShape();
    }

    EdgeShape(long l)
    {
        addr = l;
    }

    private native void jniGetVertex1(long l, float af[]);

    private native void jniGetVertex2(long l, float af[]);

    private native void jniSet(long l, float f, float f1, float f2, float f3);

    private native long newEdgeShape();

    public Shape.Type getType()
    {
        return Shape.Type.Edge;
    }

    public void getVertex1(Vector2 vector2)
    {
        jniGetVertex1(addr, vertex);
        vector2.x = vertex[0];
        vector2.y = vertex[1];
    }

    public void getVertex2(Vector2 vector2)
    {
        jniGetVertex2(addr, vertex);
        vector2.x = vertex[0];
        vector2.y = vertex[1];
    }

    public void set(float f, float f1, float f2, float f3)
    {
        jniSet(addr, f, f1, f2, f3);
    }

    public void set(Vector2 vector2, Vector2 vector2_1)
    {
        set(vector2.x, vector2.y, vector2_1.x, vector2_1.y);
    }

}
