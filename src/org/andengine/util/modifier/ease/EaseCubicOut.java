// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseCubicOut
    implements IEaseFunction
{

    private static EaseCubicOut INSTANCE;

    private EaseCubicOut()
    {
    }

    public static EaseCubicOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseCubicOut();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        float f1 = f - 1.0F;
        return 1.0F + f1 * (f1 * f1);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
