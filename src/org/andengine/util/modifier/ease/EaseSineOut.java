// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;

import android.util.FloatMath;

// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseSineOut
    implements IEaseFunction
{

    private static EaseSineOut INSTANCE;

    private EaseSineOut()
    {
    }

    public static EaseSineOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseSineOut();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        return FloatMath.sin(1.570796F * f);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
