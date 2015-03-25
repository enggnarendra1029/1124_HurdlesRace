// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.ease;


// Referenced classes of package org.andengine.util.modifier.ease:
//            IEaseFunction

public class EaseQuadOut
    implements IEaseFunction
{

    private static EaseQuadOut INSTANCE;

    private EaseQuadOut()
    {
    }

    public static EaseQuadOut getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new EaseQuadOut();
        }
        return INSTANCE;
    }

    public static float getValue(float f)
    {
        return -f * (f - 2.0F);
    }

    public float getPercentage(float f, float f1)
    {
        return getValue(f / f1);
    }
}
