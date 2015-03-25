// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseExponentialIn
    implements IEaseFunction
{

    private static EaseExponentialIn INSTANCE;

    private EaseExponentialIn()
    {
    }

    public static EaseExponentialIn getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseExponentialIn();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        double d;
        if (f == 0.0F)
        {
            d = 0.0D;
        } else
        {
            d = Math.pow(2D, 10F * (f - 1.0F)) - 0.0010000000474974513D;
        }
        return (float)d;
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
