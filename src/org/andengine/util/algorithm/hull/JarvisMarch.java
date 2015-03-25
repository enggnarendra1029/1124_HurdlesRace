// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.hull;

import org.andengine.opengl.util.VertexUtils;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.util.algorithm.hull:
//            IHullAlgorithm, HullUtils

public class JarvisMarch
    implements IHullAlgorithm
{

    public JarvisMarch()
    {
    }

    private static int jarvisMarch(float af[], int i, int j, int k, int l)
    {
        int i1 = HullUtils.indexOfLowestVertex(af, i, k, l);
        float f = VertexUtils.getVertex(af, j, l, i1);
        float f1 = VertexUtils.getVertex(af, k, l, i1);
        int j1 = 0;
        int k1 = i1;
        float f2 = 0.0F;
        do
        {
            HullUtils.swap(af, l, j1, k1);
            float f3 = VertexUtils.getVertex(af, j, l, j1);
            float f4 = VertexUtils.getVertex(af, k, l, j1);
            j1++;
            int l1 = 0;
            float f5 = 6.283185F;
            int i2 = j1;
            do
            {
                if (i2 >= i)
                {
                    if (j1 > 1)
                    {
                        float f10 = f - f3;
                        float f11 = MathUtils.atan2(f1 - f4, f10);
                        if (f11 < 0.0F)
                        {
                            f11 += 6.283185F;
                        }
                        if (f11 >= f2 && f11 <= f5)
                        {
                            return j1;
                        }
                    }
                    break;
                }
                float f6 = VertexUtils.getVertex(af, j, l, i2);
                float f7 = VertexUtils.getVertex(af, k, l, i2);
                if (f3 != f6 || f4 != f7)
                {
                    float f8 = f6 - f3;
                    float f9 = MathUtils.atan2(f7 - f4, f8);
                    if (f9 < 0.0F)
                    {
                        f9 += 6.283185F;
                    }
                    if (f9 >= f2 && f9 <= f5)
                    {
                        l1 = i2;
                        f5 = f9;
                    }
                }
                i2++;
            } while (true);
            f2 = f5;
            k1 = l1;
        } while (k1 > 0);
        return j1;
    }

    public int computeHull(float af[], int i, int j, int k, int l)
    {
        return jarvisMarch(af, i, j, k, l);
    }
}
