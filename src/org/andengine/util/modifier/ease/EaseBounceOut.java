// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseBounceOut
    implements IEaseFunction
{

    private static EaseBounceOut INSTANCE;

    private EaseBounceOut()
    {
    }

    public static EaseBounceOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseBounceOut();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        if (f < 0.3636364F)
        {
            return f * (7.5625F * f);
        }
        if (f < 0.7272727F)
        {
            float f3 = f - 0.5454546F;
            return 0.75F + f3 * (7.5625F * f3);
        }
        if (f < 0.9090909F)
        {
            float f2 = f - 0.8181818F;
            return 0.9375F + f2 * (7.5625F * f2);
        } else
        {
            float f1 = f - 0.9545454F;
            return 0.984375F + f1 * (7.5625F * f1);
        }
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
