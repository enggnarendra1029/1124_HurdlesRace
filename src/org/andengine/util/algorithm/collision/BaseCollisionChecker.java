// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.collision;


public class BaseCollisionChecker
{

    public BaseCollisionChecker()
    {
    }

    public static boolean checkAxisAlignedRectangleCollision(float f, float f1, float f2, float f3, float f4, float f5, float f6, float f7)
    {
        return f < f6 && f4 < f2 && f1 < f7 && f5 < f3;
    }

    public static boolean checkAxisAlignedRectangleContains(float f, float f1, float f2, float f3, float f4, float f5)
    {
        return f4 > f && f4 < f2 && f5 > f1 && f5 < f3;
    }

    public static int relativeCCW(float f, float f1, float f2, float f3, float f4, float f5)
    {
        float f6 = f2 - f;
        float f7 = f3 - f1;
        float f8 = f4 - f;
        float f9 = f5 - f1;
        float f10 = f8 * f7 - f9 * f6;
        if (f10 == 0.0F)
        {
            f10 = f8 * f6 + f9 * f7;
            if (f10 > 0.0F)
            {
                float f11 = f8 - f6;
                float f12 = f9 - f7;
                f10 = f11 * f6 + f12 * f7;
                if (f10 < 0.0F)
                {
                    f10 = 0.0F;
                }
            }
        }
        if (f10 < 0.0F)
        {
            return -1;
        }
        return f10 <= 0.0F ? 0 : 1;
    }
}
