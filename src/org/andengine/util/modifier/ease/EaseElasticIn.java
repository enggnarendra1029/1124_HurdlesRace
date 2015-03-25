// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;

import android.util.FloatMath;

// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseElasticIn
    implements IEaseFunction
{

    private static EaseElasticIn INSTANCE;

    private EaseElasticIn()
    {
    }

    public static EaseElasticIn getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseElasticIn();
        }
        return INSTANCE;
    }

    public static float getValue(float f, float f1, float f2)
    {
        if (f == 0.0F)
        {
            return 0.0F;
        }
        if (f == f1)
        {
            return 1.0F;
        } else
        {
            float f3 = f1 * 0.3F;
            float f4 = f3 / 4F;
            float f5 = f2 - 1.0F;
            return -(float)Math.pow(2D, 10F * f5) * FloatMath.sin((6.283185F * (f5 * f1 - f4)) / f3);
        }
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f, f1, f / f1);
    }
}
