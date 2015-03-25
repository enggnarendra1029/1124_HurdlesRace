// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Shape

public class ChainShape extends Shape
{

    private static float verts[] = new float[2];

    public ChainShape()
    {
        addr = newChainShape();
    }

    ChainShape(long l)
    {
        addr = l;
    }

    private native void jniCreateChain(long l, float af[], int i);

    private native void jniCreateLoop(long l, float af[], int i);

    private native void jniGetVertex(long l, int i, float af[]);

    private native int jniGetVertexCount(long l);

    private native void jniSetNextVertex(long l, float f, float f1);

    private native void jniSetPrevVertex(long l, float f, float f1);

    private native long newChainShape();

    public void createChain(Vector2 avector2[])
    {
        float af[] = new float[2 * avector2.length];
        int i = 0;
        int j = 0;
        do
        {
            if (i >= 2 * avector2.length)
            {
                jniCreateChain(addr, af, af.length / 2);
                return;
            }
            af[i] = avector2[j].x;
            af[i + 1] = avector2[j].y;
            i += 2;
            j++;
        } while (true);
    }

    public void createLoop(Vector2 avector2[])
    {
        float af[] = new float[2 * avector2.length];
        int i = 0;
        int j = 0;
        do
        {
            if (i >= 2 * avector2.length)
            {
                jniCreateLoop(addr, af, af.length / 2);
                return;
            }
            af[i] = avector2[j].x;
            af[i + 1] = avector2[j].y;
            i += 2;
            j++;
        } while (true);
    }

    public Shape.Type getType()
    {
        return Shape.Type.Chain;
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

    public void setNextVertex(float f, float f1)
    {
        jniSetNextVertex(addr, f, f1);
    }

    public void setNextVertex(Vector2 vector2)
    {
        setNextVertex(vector2.x, vector2.y);
    }

    public void setPrevVertex(float f, float f1)
    {
        jniSetPrevVertex(addr, f, f1);
    }

    public void setPrevVertex(Vector2 vector2)
    {
        setPrevVertex(vector2.x, vector2.y);
    }

}
