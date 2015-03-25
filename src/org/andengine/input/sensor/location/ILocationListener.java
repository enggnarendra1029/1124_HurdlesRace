// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.location;

import android.location.Location;
import android.os.Bundle;

// Referenced classes of package org.andengine.input.sensor.location:
//            LocationProviderStatus

public interface ILocationListener
{

    public abstract void onLocationChanged(Location location);

    public abstract void onLocationLost();

    public abstract void onLocationProviderDisabled();

    public abstract void onLocationProviderEnabled();

    public abstract void onLocationProviderStatusChanged(LocationProviderStatus locationproviderstatus, Bundle bundle);
}
