// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;

import android.util.FloatMath;

// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseSineInOut
    implements IEaseFunction
{

    private static EaseSineInOut INSTANCE;

    private EaseSineInOut()
    {
    }

    public static EaseSineInOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseSineInOut();
        }
        return INSTANCE;
    }

    public float getPercentage(float f, float f1)
    {
        return -0.5F * (FloatMath.cos(3.141593F * (f / f1)) - 1.0F);
    }
}
