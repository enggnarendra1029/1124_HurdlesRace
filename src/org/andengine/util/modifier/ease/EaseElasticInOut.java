// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction, EaseElasticIn, EaseElasticOut

public class EaseElasticInOut
    implements IEaseFunction
{

    private static EaseElasticInOut INSTANCE;

    private EaseElasticInOut()
    {
    }

    public static EaseElasticInOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseElasticInOut();
        }
        return INSTANCE;
    }

    public float getPercentage(float f, float f1)
    {
        float f2 = f / f1;
        if (f2 < 0.5F)
        {
            return 0.5F * EaseElasticIn.getValue(2.0F * f, f1, 2.0F * f2);
        } else
        {
            return 0.5F + 0.5F * EaseElasticOut.getValue(f * 2.0F - f1, f1, 2.0F * f2 - 1.0F);
        }
    }
}
