// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseStrongOut
    implements IEaseFunction
{

    private static EaseStrongOut INSTANCE;

    private EaseStrongOut()
    {
    }

    public static EaseStrongOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseStrongOut();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        float f1 = f - 1.0F;
        return 1.0F + f1 * (f1 * (f1 * (f1 * f1)));
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
