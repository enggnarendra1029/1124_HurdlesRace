// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseQuintIn
    implements IEaseFunction
{

    private static EaseQuintIn INSTANCE;

    private EaseQuintIn()
    {
    }

    public static EaseQuintIn getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseQuintIn();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        return f * (f * (f * (f * f)));
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
