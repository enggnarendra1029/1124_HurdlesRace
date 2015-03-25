// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.acceleration;


// Referenced classes of package org.andengine.input.sensor.acceleration:
//            AccelerationData

class xisSwap
    implements xisSwap
{

    public void swapAxis(float af[])
    {
        float f = af[0];
        float f1 = -af[1];
        af[0] = f;
        af[1] = f1;
    }

    xisSwap()
    {
    }
}
