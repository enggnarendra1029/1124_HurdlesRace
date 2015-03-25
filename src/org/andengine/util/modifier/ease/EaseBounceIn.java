// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction, EaseBounceOut

public class EaseBounceIn
    implements IEaseFunction
{

    private static EaseBounceIn INSTANCE;

    private EaseBounceIn()
    {
    }

    public static EaseBounceIn getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseBounceIn();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        return 1.0F - EaseBounceOut.getValue(1.0F - f);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
