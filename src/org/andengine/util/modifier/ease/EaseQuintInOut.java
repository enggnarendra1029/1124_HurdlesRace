// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction, EaseQuintIn, EaseQuintOut

public class EaseQuintInOut
    implements IEaseFunction
{

    private static EaseQuintInOut INSTANCE;

    private EaseQuintInOut()
    {
    }

    public static EaseQuintInOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseQuintInOut();
        }
        return INSTANCE;
    }

    public float getPercentage(float f, float f1)
    {
        float f2 = f / f1;
        if (f2 < 0.5F)
        {
            return 0.5F * EaseQuintIn.getValue(2.0F * f2);
        } else
        {
            return 0.5F + 0.5F * EaseQuintOut.getValue(f2 * 2.0F - 1.0F);
        }
    }
}
