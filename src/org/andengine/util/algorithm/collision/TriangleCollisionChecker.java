// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.collision;

import org.andengine.util.adt.transformation.Transformation;

public class TriangleCollisionChecker
{

    public static final int TRIANGLE_VERTEX_COUNT = 3;
    private static final float VERTICES_CONTAINS_TMP[] = new float[6];

    public TriangleCollisionChecker()
    {
    }

    public static boolean checkContains(float f, float f1, float f2, float f3, float f4, float f5, float f6, float f7)
    {
        float f8 = f4 - f;
        float f9 = f5 - f1;
        float f10 = f2 - f;
        float f11 = f3 - f1;
        float f12 = f6 - f;
        float f13 = f7 - f1;
        float f14 = f8 * f8 + f9 * f9;
        float f15 = f8 * f10 + f9 * f11;
        float f16 = f8 * f12 + f9 * f13;
        float f17 = f10 * f10 + f11 * f11;
        float f18 = f10 * f12 + f11 * f13;
        float f19 = 1.0F / (f14 * f17 - f15 * f15);
        float f20 = f19 * (f17 * f16 - f15 * f18);
        float f21 = f19 * (f14 * f18 - f15 * f16);
        return f20 > 0.0F && f21 > 0.0F && f20 + f21 < 1.0F;
    }

    public static boolean checkContains(float f, float f1, float f2, float f3, float f4, float f5, Transformation transformation, float f6, 
            float f7)
    {
        VERTICES_CONTAINS_TMP[0] = f;
        VERTICES_CONTAINS_TMP[1] = f1;
        VERTICES_CONTAINS_TMP[2] = f2;
        VERTICES_CONTAINS_TMP[3] = f3;
        VERTICES_CONTAINS_TMP[4] = f4;
        VERTICES_CONTAINS_TMP[5] = f5;
        transformation.transform(VERTICES_CONTAINS_TMP);
        return checkContains(VERTICES_CONTAINS_TMP[0], VERTICES_CONTAINS_TMP[1], VERTICES_CONTAINS_TMP[2], VERTICES_CONTAINS_TMP[3], VERTICES_CONTAINS_TMP[4], VERTICES_CONTAINS_TMP[5], f6, f7);
    }

}
