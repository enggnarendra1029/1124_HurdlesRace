// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util.hull;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package org.andengine.extension.physics.box2d.util.hull:
//            IHullAlgorithm

public abstract class BaseHullAlgorithm
    implements IHullAlgorithm
{

    protected int mHullVertexCount;
    protected int mVertexCount;
    protected Vector2 mVertices[];

    public BaseHullAlgorithm()
    {
    }

    protected int indexOfLowestVertex()
    {
        Vector2 avector2[] = mVertices;
        int i = mVertexCount;
        int j = 0;
        int k = 1;
        do
        {
            if (k >= i)
            {
                return j;
            }
            float f = avector2[k].y - avector2[j].y;
            float f1 = avector2[k].x - avector2[j].x;
            if (f < 0.0F || f == 0.0F && f1 < 0.0F)
            {
                j = k;
            }
            k++;
        } while (true);
    }

    protected void swap(int i, int j)
    {
        Vector2 avector2[] = mVertices;
        Vector2 vector2 = avector2[i];
        avector2[i] = avector2[j];
        avector2[j] = vector2;
    }
}
