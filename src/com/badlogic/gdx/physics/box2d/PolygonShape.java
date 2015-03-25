// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Shape

public class PolygonShape extends Shape
{

    private static float verts[] = new float[2];

    public PolygonShape()
    {
        addr = newPolygonShape();
    }

    protected PolygonShape(long l)
    {
        addr = l;
    }

    private native void jniGetVertex(long l, int i, float af[]);

    private native int jniGetVertexCount(long l);

    private native void jniSet(long l, float af[], int i, int j);

    private native void jniSetAsBox(long l, float f, float f1);

    private native void jniSetAsBox(long l, float f, float f1, float f2, float f3, float f4);

    private native long newPolygonShape();

    public Shape.Type getType()
    {
        return Shape.Type.Polygon;
    }

    public void getVertex(int i, Vector2 vector2)
    {
        jniGetVertex(addr, i, verts);
        vector2.x = verts[0];
        vector2.y = verts[1];
    }

    public int getVertexCount()
    {
        return jniGetVertexCount(addr);
    }

    public void set(float af[])
    {
        jniSet(addr, af, 0, af.length);
    }

    public void set(float af[], int i, int j)
    {
        jniSet(addr, af, i, j);
    }

    public void set(Vector2 avector2[])
    {
        float af[] = new float[2 * avector2.length];
        int i = 0;
        int j = 0;
        do
        {
            if (i >= 2 * avector2.length)
            {
                jniSet(addr, af, 0, af.length);
                return;
            }
            af[i] = avector2[j].x;
            af[i + 1] = avector2[j].y;
            i += 2;
            j++;
        } while (true);
    }

    public void setAsBox(float f, float f1)
    {
        jniSetAsBox(addr, f, f1);
    }

    public void setAsBox(float f, float f1, Vector2 vector2, float f2)
    {
        jniSetAsBox(addr, f, f1, vector2.x, vector2.y, f2);
    }

}
