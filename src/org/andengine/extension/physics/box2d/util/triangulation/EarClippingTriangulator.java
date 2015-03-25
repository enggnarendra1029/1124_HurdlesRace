// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util.triangulation;

import com.badlogic.gdx.math.Vector2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package org.andengine.extension.physics.box2d.util.triangulation:
//            ITriangulationAlgoritm

public final class EarClippingTriangulator
    implements ITriangulationAlgoritm
{

    private static final int CONCAVE = 1;
    private static final int CONVEX = -1;
    private int mConcaveVertexCount;

    public EarClippingTriangulator()
    {
    }

    private static boolean areVerticesClockwise(ArrayList arraylist)
    {
        int i = arraylist.size();
        float f = 0.0F;
        int j = 0;
        do
        {
            Vector2 vector2;
            Vector2 vector2_1;
            if (j >= i)
            {
                return f < 0.0F;
            }
            vector2 = (Vector2)arraylist.get(j);
            vector2_1 = (Vector2)arraylist.get(computeNextIndex(arraylist, j));
            f += vector2.x * vector2_1.y - vector2_1.x * vector2.y;
            j++;
        } while (true);
    }

    private int[] classifyVertices(ArrayList arraylist)
    {
        int i = arraylist.size();
        int ai[] = new int[i];
        mConcaveVertexCount = 0;
        if (!areVerticesClockwise(arraylist))
        {
            Collections.reverse(arraylist);
        }
        int j = 0;
        do
        {
            if (j >= i)
            {
                return ai;
            }
            int k = computePreviousIndex(arraylist, j);
            int l = computeNextIndex(arraylist, j);
            Vector2 vector2 = (Vector2)arraylist.get(k);
            Vector2 vector2_1 = (Vector2)arraylist.get(j);
            Vector2 vector2_2 = (Vector2)arraylist.get(l);
            if (isTriangleConvex(vector2.x, vector2.y, vector2_1.x, vector2_1.y, vector2_2.x, vector2_2.y))
            {
                ai[j] = -1;
            } else
            {
                ai[j] = 1;
                mConcaveVertexCount = 1 + mConcaveVertexCount;
            }
            j++;
        } while (true);
    }

    private static int computeNextIndex(List list, int i)
    {
        if (i == -1 + list.size())
        {
            return 0;
        } else
        {
            return i + 1;
        }
    }

    private static int computePreviousIndex(List list, int i)
    {
        if (i == 0)
        {
            return -1 + list.size();
        } else
        {
            return i - 1;
        }
    }

    private static int computeSpannedAreaSign(float f, float f1, float f2, float f3, float f4, float f5)
    {
        return (int)Math.signum(0.0F + f * (f5 - f3) + f2 * (f1 - f5) + f4 * (f3 - f1));
    }

    private void cutEarTip(ArrayList arraylist, int i, ArrayList arraylist1)
    {
        int j = computePreviousIndex(arraylist, i);
        int k = computeNextIndex(arraylist, i);
        if (!isCollinear(arraylist, j, i, k))
        {
            arraylist1.add(new Vector2((Vector2)arraylist.get(j)));
            arraylist1.add(new Vector2((Vector2)arraylist.get(i)));
            arraylist1.add(new Vector2((Vector2)arraylist.get(k)));
        }
        arraylist.remove(i);
        if (arraylist.size() >= 3)
        {
            removeCollinearNeighborEarsAfterRemovingEarTip(arraylist, i);
        }
    }

    private static boolean isAnyVertexInTriangle(ArrayList arraylist, int ai[], float f, float f1, float f2, float f3, float f4, float f5)
    {
        int i = 0;
        int j = arraylist.size();
        do
        {
            if (i >= j - 1)
            {
                return false;
            }
            if (ai[i] == 1)
            {
                Vector2 vector2 = (Vector2)arraylist.get(i);
                float f6 = vector2.x;
                float f7 = vector2.y;
                int k = computeSpannedAreaSign(f, f1, f2, f3, f6, f7);
                int l = computeSpannedAreaSign(f2, f3, f4, f5, f6, f7);
                int i1 = computeSpannedAreaSign(f4, f5, f, f1, f6, f7);
                if (k > 0 && l > 0 && i1 > 0)
                {
                    return true;
                }
                if (k <= 0 && l <= 0 && i1 <= 0)
                {
                    return true;
                }
            }
            i++;
        } while (true);
    }

    private static boolean isCollinear(ArrayList arraylist, int i)
    {
        return isCollinear(arraylist, computePreviousIndex(arraylist, i), i, computeNextIndex(arraylist, i));
    }

    private static boolean isCollinear(ArrayList arraylist, int i, int j, int k)
    {
        Vector2 vector2 = (Vector2)arraylist.get(i);
        Vector2 vector2_1 = (Vector2)arraylist.get(j);
        Vector2 vector2_2 = (Vector2)arraylist.get(k);
        return computeSpannedAreaSign(vector2.x, vector2.y, vector2_1.x, vector2_1.y, vector2_2.x, vector2_2.y) == 0;
    }

    private boolean isEarTip(ArrayList arraylist, int i, int ai[])
    {
        if (mConcaveVertexCount != 0)
        {
            Vector2 vector2 = (Vector2)arraylist.get(computePreviousIndex(arraylist, i));
            Vector2 vector2_1 = (Vector2)arraylist.get(i);
            Vector2 vector2_2 = (Vector2)arraylist.get(computeNextIndex(arraylist, i));
            return !isAnyVertexInTriangle(arraylist, ai, vector2.x, vector2.y, vector2_1.x, vector2_1.y, vector2_2.x, vector2_2.y);
        } else
        {
            return true;
        }
    }

    private static boolean isTriangleConvex(float f, float f1, float f2, float f3, float f4, float f5)
    {
        return computeSpannedAreaSign(f, f1, f2, f3, f4, f5) >= 0;
    }

    private static void removeCollinearNeighborEarsAfterRemovingEarTip(ArrayList arraylist, int i)
    {
        int j = i % arraylist.size();
        int k = computePreviousIndex(arraylist, j);
        if (isCollinear(arraylist, j))
        {
            arraylist.remove(j);
            if (arraylist.size() > 3)
            {
                int l = computePreviousIndex(arraylist, j);
                if (isCollinear(arraylist, l))
                {
                    arraylist.remove(l);
                }
            }
        } else
        if (isCollinear(arraylist, k))
        {
            arraylist.remove(k);
            return;
        }
    }

    public List computeTriangles(List list)
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList(list.size());
        arraylist1.addAll(list);
        if (arraylist1.size() == 3)
        {
            arraylist.addAll(arraylist1);
            return arraylist;
        }
_L2:
        if (arraylist1.size() < 3)
        {
            return arraylist;
        }
        ai = classifyVertices(arraylist1);
        i = arraylist1.size();
        j = 0;
        do
        {
            if (j < i)
            {
label0:
                {
                    if (!isEarTip(arraylist1, j, ai))
                    {
                        break label0;
                    }
                    cutEarTip(arraylist1, j, arraylist);
                }
            }
            if (true)
            {
                continue;
            }
            j++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }
}
