// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;

import android.util.FloatMath;

// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseCircularOut
    implements IEaseFunction
{

    private static EaseCircularOut INSTANCE;

    private EaseCircularOut()
    {
    }

    public static EaseCircularOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseCircularOut();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        float f1 = f - 1.0F;
        return FloatMath.sqrt(1.0F - f1 * f1);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
