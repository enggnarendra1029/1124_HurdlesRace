// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.acceleration;


// Referenced classes of package org.andengine.input.sensor.acceleration:
//            AccelerationData

public interface IAccelerationListener
{

    public abstract void onAccelerationAccuracyChanged(AccelerationData accelerationdata);

    public abstract void onAccelerationChanged(AccelerationData accelerationdata);
}
