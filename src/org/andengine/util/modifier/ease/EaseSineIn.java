// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;

import android.util.FloatMath;

// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseSineIn
    implements IEaseFunction
{

    private static EaseSineIn INSTANCE;

    private EaseSineIn()
    {
    }

    public static EaseSineIn getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseSineIn();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        return 1.0F + -FloatMath.cos(1.570796F * f);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
