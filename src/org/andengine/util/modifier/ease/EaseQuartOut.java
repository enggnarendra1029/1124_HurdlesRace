// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseQuartOut
    implements IEaseFunction
{

    private static EaseQuartOut INSTANCE;

    private EaseQuartOut()
    {
    }

    public static EaseQuartOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseQuartOut();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        float f1 = f - 1.0F;
        return 1.0F - f1 * (f1 * (f1 * f1));
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
