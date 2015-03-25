// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util.hull;

import com.badlogic.gdx.math.Vector2;
import org.andengine.extension.physics.box2d.util.Vector2Pool;

// Referenced classes of package org.andengine.extension.physics.box2d.util.hull:
//            BaseHullAlgorithm, Vector2Util

public class JarvisMarch extends BaseHullAlgorithm
{

    public JarvisMarch()
    {
    }

    private int indexOfRightmostVertexOf(Vector2 vector2)
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
            Vector2 vector2_1 = Vector2Pool.obtain().set(avector2[k]);
            Vector2 vector2_2 = Vector2Pool.obtain().set(avector2[j]);
            if (Vector2Util.isLess(vector2_1.sub(vector2), vector2_2.sub(vector2)))
            {
                j = k;
            }
            Vector2Pool.recycle(vector2_1);
            Vector2Pool.recycle(vector2_2);
            k++;
        } while (true);
    }

    private void jarvisMarch()
    {
        Vector2 avector2[] = mVertices;
        int i = indexOfLowestVertex();
        do
        {
            swap(mHullVertexCount, i);
            i = indexOfRightmostVertexOf(avector2[mHullVertexCount]);
            mHullVertexCount = 1 + mHullVertexCount;
        } while (i > 0);
    }

    public int computeHull(Vector2 avector2[])
    {
        mVertices = avector2;
        mVertexCount = avector2.length;
        mHullVertexCount = 0;
        jarvisMarch();
        return mHullVertexCount;
    }
}
