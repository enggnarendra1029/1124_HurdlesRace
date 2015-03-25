// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util.hull;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package org.andengine.extension.physics.box2d.util.hull:
//            BaseHullAlgorithm, Vector2Util

public class GrahamScan extends BaseHullAlgorithm
{

    public GrahamScan()
    {
    }

    private void grahamScan()
    {
        int i;
        int j;
        swap(0, indexOfLowestVertex());
        Vector2 vector2 = new Vector2(mVertices[0]);
        makeAllVerticesRelativeTo(vector2);
        sort();
        makeAllVerticesRelativeTo((new Vector2(vector2)).mul(-1F));
        i = 3;
        j = 3;
_L2:
        if (j >= mVertexCount)
        {
            mHullVertexCount = i;
            return;
        }
        swap(i, j);
        do
        {
label0:
            {
                if (!isConvex(i - 1))
                {
                    break label0;
                }
                j++;
                i++;
            }
            if (true)
            {
                continue;
            }
            int k = i - 1;
            int l = i - 1;
            swap(k, i);
            i = l;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean isConvex(int i)
    {
        Vector2 avector2[] = mVertices;
        return Vector2Util.isConvex(avector2[i], avector2[i - 1], avector2[i + 1]);
    }

    private void makeAllVerticesRelativeTo(Vector2 vector2)
    {
        Vector2 avector2[] = mVertices;
        int i = mVertexCount;
        Vector2 vector2_1 = new Vector2(vector2);
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            avector2[j].sub(vector2_1);
            j++;
        } while (true);
    }

    private void quicksort(int i, int j)
    {
        Vector2 avector2[] = mVertices;
        int k = i;
        int l = j;
        Vector2 vector2 = avector2[(i + j) / 2];
        do
        {
label0:
            {
                if (k > l)
                {
                    if (i < l)
                    {
                        quicksort(i, l);
                    }
                    if (k < j)
                    {
                        quicksort(k, j);
                    }
                    return;
                }
                for (; Vector2Util.isLess(avector2[k], vector2); k++) { }
                int i1;
                int j1;
                for (; Vector2Util.isLess(vector2, avector2[l]); l--)
                {
                    break label0;
                }

                if (k <= l)
                {
                    i1 = k + 1;
                    j1 = l - 1;
                    swap(k, l);
                    l = j1;
                    k = i1;
                }
            }
        } while (true);
    }

    private void sort()
    {
        quicksort(1, -1 + mVertexCount);
    }

    public int computeHull(Vector2 avector2[])
    {
        mVertices = avector2;
        mVertexCount = avector2.length;
        if (mVertexCount < 3)
        {
            return mVertexCount;
        } else
        {
            mHullVertexCount = 0;
            grahamScan();
            return mHullVertexCount;
        }
    }
}
