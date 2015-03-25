// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseLinear
    implements IEaseFunction
{

    private static EaseLinear INSTANCE;

    private EaseLinear()
    {
    }

    public static EaseLinear getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseLinear();
        }
        return INSTANCE;
    }

    public float getPercentage(float f, float f1)
    {
        return f / f1;
    }
}
