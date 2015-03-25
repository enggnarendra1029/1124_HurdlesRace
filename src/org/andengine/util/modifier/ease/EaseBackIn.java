// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseBackIn
    implements IEaseFunction
{

    private static EaseBackIn INSTANCE;
    private static final float OVERSHOOT_CONSTANT = 1.70158F;

    private EaseBackIn()
    {
    }

    public static EaseBackIn getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseBackIn();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        return f * f * (2.70158F * f - 1.70158F);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
