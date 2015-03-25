// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.orientation;


// Referenced classes of package org.andengine.input.sensor.orientation:
//            OrientationData

public interface IOrientationListener
{

    public abstract void onOrientationAccuracyChanged(OrientationData orientationdata);

    public abstract void onOrientationChanged(OrientationData orientationdata);
}
