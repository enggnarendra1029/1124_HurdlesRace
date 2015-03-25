// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;

import android.util.FloatMath;

// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseCircularIn
    implements IEaseFunction
{

    private static EaseCircularIn INSTANCE;

    private EaseCircularIn()
    {
    }

    public static EaseCircularIn getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseCircularIn();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        return -(FloatMath.sqrt(1.0F - f * f) - 1.0F);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
