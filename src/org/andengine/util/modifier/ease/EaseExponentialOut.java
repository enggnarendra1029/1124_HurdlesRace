// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseExponentialOut
    implements IEaseFunction
{

    private static EaseExponentialOut INSTANCE;

    private EaseExponentialOut()
    {
    }

    public static EaseExponentialOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseExponentialOut();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        if (f == 1.0F)
        {
            return 1.0F;
        } else
        {
            return 1.0F + -(float)Math.pow(2D, -10F * f);
        }
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
