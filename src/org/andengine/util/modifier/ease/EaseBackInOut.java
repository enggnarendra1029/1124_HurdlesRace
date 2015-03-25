// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction, EaseBackIn, EaseBackOut

public class EaseBackInOut
    implements IEaseFunction
{

    private static EaseBackInOut INSTANCE;

    private EaseBackInOut()
    {
    }

    public static EaseBackInOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseBackInOut();
        }
        return INSTANCE;
    }

    public float getPercentage(float f, float f1)
    {
        float f2 = f / f1;
        if (f2 < 0.5F)
        {
            return 0.5F * EaseBackIn.getValue(2.0F * f2);
        } else
        {
            return 0.5F + 0.5F * EaseBackOut.getValue(f2 * 2.0F - 1.0F);
        }
    }
}
