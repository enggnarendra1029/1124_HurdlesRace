// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.acceleration;

import org.andengine.input.sensor.SensorDelay;

public class AccelerationSensorOptions
{

    final SensorDelay mSensorDelay;

    public AccelerationSensorOptions(SensorDelay sensordelay)
    {
        mSensorDelay = sensordelay;
    }

    public SensorDelay getSensorDelay()
    {
        return mSensorDelay;
    }
}
