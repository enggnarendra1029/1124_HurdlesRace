// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;


// Referenced classes of package org.andengine.input.touch.detector:
//            HoldDetector

public static interface 
{

    public abstract void onHold(HoldDetector holddetector, long l, int i, float f, float f1);

    public abstract void onHoldFinished(HoldDetector holddetector, long l, int i, float f, float f1);

    public abstract void onHoldStarted(HoldDetector holddetector, int i, float f, float f1);
}
