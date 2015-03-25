// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util.hull;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package org.andengine.extension.physics.box2d.util.hull:
//            BaseHullAlgorithm, Vector2Line, Vector2Util

public class QuickHull extends BaseHullAlgorithm
{

    private static final float EPSILON = 0.001F;

    public QuickHull()
    {
    }

    private void computeHullVertices(Vector2Line vector2line, int i, int j)
    {
        if (i > j)
        {
            return;
        } else
        {
            int k = indexOfFurthestVertex(vector2line, i, j);
            Vector2Line vector2line1 = new Vector2Line(vector2line.mVertexA, mVertices[k]);
            Vector2Line vector2line2 = new Vector2Line(mVertices[k], vector2line.mVertexB);
            swap(k, j);
            int l = partition(vector2line1, i, j - 1);
            computeHullVertices(vector2line1, i, l - 1);
            swap(j, l);
            swap(l, mHullVertexCount);
            mHullVertexCount = 1 + mHullVertexCount;
            int i1 = partition(vector2line2, l + 1, j);
            computeHullVertices(vector2line2, l + 1, i1 - 1);
            return;
        }
    }

    private int indexOfFurthestVertex(Vector2Line vector2line, int i, int j)
    {
        Vector2 avector2[] = mVertices;
        int k = i;
        float f = 0.0F;
        int l = i;
        do
        {
            if (l > j)
            {
                return k;
            }
            float f1 = -Vector2Util.area2(avector2[l], vector2line);
            if (f1 > f || f1 == f && avector2[l].x > avector2[k].y)
            {
                f = f1;
                k = l;
            }
            l++;
        } while (true);
    }

    private int partition(Vector2Line vector2line, int i, int j)
    {
        Vector2 avector2[];
        int k;
        int l;
        avector2 = mVertices;
        k = i;
        l = j;
_L2:
        if (k > l)
        {
            return k;
        }
        break MISSING_BLOCK_LABEL_121;
        while (Vector2Util.isRightOf(avector2[i1], vector2line)) 
        {
            int i1;
            int j1;
            for (i1++; i1 > l; i1 = k)
            {
                break MISSING_BLOCK_LABEL_114;
            }

        }
label0:
        {
            for (j1 = l; i1 <= j1 && !Vector2Util.isRightOf(avector2[j1], vector2line); j1--)
            {
                break label0;
            }

            if (i1 <= j1)
            {
                k = i1 + 1;
                l = j1 - 1;
                swap(i1, j1);
            } else
            {
                l = j1;
                k = i1;
            }
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = l;
        break MISSING_BLOCK_LABEL_44;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void quickHull()
    {
        swap(0, indexOfLowestVertex());
        mHullVertexCount = 1 + mHullVertexCount;
        computeHullVertices(new Vector2Line(mVertices[0], (new Vector2(mVertices[0])).add(-0.001F, 0.0F)), 1, -1 + mVertexCount);
    }

    public int computeHull(Vector2 avector2[])
    {
        mVertices = avector2;
        mVertexCount = mVertices.length;
        mHullVertexCount = 0;
        quickHull();
        return mHullVertexCount;
    }
}
