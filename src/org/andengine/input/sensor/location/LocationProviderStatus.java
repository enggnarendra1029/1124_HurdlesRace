// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.location;


public final class LocationProviderStatus extends Enum
{

    public static final LocationProviderStatus AVAILABLE;
    private static final LocationProviderStatus ENUM$VALUES[];
    public static final LocationProviderStatus OUT_OF_SERVICE;
    public static final LocationProviderStatus TEMPORARILY_UNAVAILABLE;

    private LocationProviderStatus(String s, int i)
    {
        super(s, i);
    }

    public static LocationProviderStatus valueOf(String s)
    {
        return (LocationProviderStatus)Enum.valueOf(org/andengine/input/sensor/location/LocationProviderStatus, s);
    }

    public static LocationProviderStatus[] values()
    {
        LocationProviderStatus alocationproviderstatus[] = ENUM$VALUES;
        int i = alocationproviderstatus.length;
        LocationProviderStatus alocationproviderstatus1[] = new LocationProviderStatus[i];
        System.arraycopy(alocationproviderstatus, 0, alocationproviderstatus1, 0, i);
        return alocationproviderstatus1;
    }

    static 
    {
        AVAILABLE = new LocationProviderStatus("AVAILABLE", 0);
        OUT_OF_SERVICE = new LocationProviderStatus("OUT_OF_SERVICE", 1);
        TEMPORARILY_UNAVAILABLE = new LocationProviderStatus("TEMPORARILY_UNAVAILABLE", 2);
        LocationProviderStatus alocationproviderstatus[] = new LocationProviderStatus[3];
        alocationproviderstatus[0] = AVAILABLE;
        alocationproviderstatus[1] = OUT_OF_SERVICE;
        alocationproviderstatus[2] = TEMPORARILY_UNAVAILABLE;
        ENUM$VALUES = alocationproviderstatus;
    }
}
