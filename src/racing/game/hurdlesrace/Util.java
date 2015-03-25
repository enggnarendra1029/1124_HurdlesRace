// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package racing.game.hurdlesrace;


public class Util
{

    static Util util = new Util();

    private Util()
    {
        init();
    }

    public static Util getUtil()
    {
        return util;
    }

    static void init()
    {
    }

    public float getAngle(float f)
    {
        float f1 = 1.0F - f / 50F;
        if (f1 < 0.6F)
        {
            f1 = 0.6F;
        }
        return f1;
    }

    public float getVelocity(int i)
    {
        float f = 4F + 0.2F * (float)i;
        if (f > 10F)
        {
            f = 10F;
        }
        return f;
    }

}
