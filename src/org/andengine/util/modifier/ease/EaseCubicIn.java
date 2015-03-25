// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseCubicIn
    implements IEaseFunction
{

    private static EaseCubicIn INSTANCE;

    private EaseCubicIn()
    {
    }

    public static EaseCubicIn getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseCubicIn();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        return f * (f * f);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
