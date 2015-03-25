// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.collision;

import org.andengine.opengl.util.VertexUtils;

// Referenced classes of package org.andengine.util.algorithm.collision:
//            BaseCollisionChecker, LineCollisionChecker

public class ShapeCollisionChecker extends BaseCollisionChecker
{

    public ShapeCollisionChecker()
    {
    }

    public static boolean checkCollision(float af[], int i, int j, int k, int l, float af1[], int i1, int j1, 
            int k1, int l1)
    {
        int i2 = i - 2;
        do
        {
            if (i2 < 0)
            {
                if (checkCollisionSub(af, j, k, l, i - 1, 0, af1, i1, j1, k1, l1))
                {
                    return true;
                }
                break;
            }
            if (checkCollisionSub(af, j, k, l, i2, i2 + 1, af1, i1, j1, k1, l1))
            {
                return true;
            }
            i2--;
        } while (true);
        if (checkContains(af, i, VertexUtils.getVertex(af1, j1, l1, 0), VertexUtils.getVertex(af1, k1, l1, 0)))
        {
            return true;
        }
        return checkContains(af1, i1, VertexUtils.getVertex(af, j, l, 0), VertexUtils.getVertex(af, k, l, 0));
    }

    public static boolean checkCollision(float af[], int i, float af1[], int j)
    {
        return checkCollision(af, i, 0, 1, 2, af1, j, 0, 1, 2);
    }

    private static boolean checkCollisionSub(float af[], int i, int j, int k, int l, int i1, float af1[], int j1, 
            int k1, int l1, int i2)
    {
        float f = VertexUtils.getVertex(af, i, k, l);
        float f1 = VertexUtils.getVertex(af, j, k, l);
        float f2 = VertexUtils.getVertex(af, i, k, i1);
        float f3 = VertexUtils.getVertex(af, j, k, i1);
        int j2 = j1 - 2;
        do
        {
            if (j2 < 0)
            {
                return LineCollisionChecker.checkLineCollision(f, f1, f2, f3, VertexUtils.getVertex(af1, k1, i2, j1 - 1), VertexUtils.getVertex(af1, l1, i2, j1 - 1), VertexUtils.getVertex(af1, k1, i2, 0), VertexUtils.getVertex(af1, l1, i2, 0));
            }
            if (LineCollisionChecker.checkLineCollision(f, f1, f2, f3, VertexUtils.getVertex(af1, k1, i2, j2), VertexUtils.getVertex(af1, l1, i2, j2), VertexUtils.getVertex(af1, k1, i2, j2 + 1), VertexUtils.getVertex(af1, l1, i2, j2 + 1)))
            {
                return true;
            }
            j2--;
        } while (true);
    }

    public static boolean checkContains(float af[], int i, float f, float f1)
    {
        return checkContains(af, i, 0, 1, 2, f, f1);
    }

    public static boolean checkContains(float af[], int i, int j, int k, int l, float f, float f1)
    {
        boolean flag = false;
        int i1 = i - 1;
        int j1 = 0;
        do
        {
            if (j1 >= i)
            {
                return flag;
            }
            float f2 = VertexUtils.getVertex(af, j, l, j1);
            float f3 = VertexUtils.getVertex(af, k, l, j1);
            float f4 = VertexUtils.getVertex(af, j, l, i1);
            float f5 = VertexUtils.getVertex(af, k, l, i1);
            if ((f3 < f1 && f5 >= f1 || f5 < f1 && f3 >= f1) && (f2 <= f || f4 <= f))
            {
                boolean flag1;
                if (f2 + ((f1 - f3) / (f5 - f3)) * (f4 - f2) < f)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                flag ^= flag1;
            }
            i1 = j1;
            j1++;
        } while (true);
    }
}
