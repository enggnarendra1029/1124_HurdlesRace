// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.location;

import android.location.Criteria;

public class LocationSensorOptions extends Criteria
{

    private static final long MINIMUMTRIGGERDISTANCE_DEFAULT = 10L;
    private static final long MINIMUMTRIGGERTIME_DEFAULT = 1000L;
    private boolean mEnabledOnly;
    private long mMinimumTriggerDistance;
    private long mMinimumTriggerTime;

    public LocationSensorOptions()
    {
        mEnabledOnly = true;
        mMinimumTriggerTime = 1000L;
        mMinimumTriggerDistance = 10L;
    }

    public LocationSensorOptions(int i, boolean flag, boolean flag1, boolean flag2, int j, boolean flag3, boolean flag4, 
            long l, long l1)
    {
        mEnabledOnly = true;
        mMinimumTriggerTime = 1000L;
        mMinimumTriggerDistance = 10L;
        mEnabledOnly = flag4;
        mMinimumTriggerTime = l;
        mMinimumTriggerDistance = l1;
        setAccuracy(i);
        setAltitudeRequired(flag);
        setBearingRequired(flag1);
        setCostAllowed(flag2);
        setPowerRequirement(j);
        setSpeedRequired(flag3);
    }

    public long getMinimumTriggerDistance()
    {
        return mMinimumTriggerDistance;
    }

    public long getMinimumTriggerTime()
    {
        return mMinimumTriggerTime;
    }

    public boolean isEnabledOnly()
    {
        return mEnabledOnly;
    }

    public void setEnabledOnly(boolean flag)
    {
        mEnabledOnly = flag;
    }

    public void setMinimumTriggerDistance(long l)
    {
        mMinimumTriggerDistance = l;
    }

    public void setMinimumTriggerTime(long l)
    {
        mMinimumTriggerTime = l;
    }
}
