// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.input.touch.detector:
//            PinchZoomDetector

public static interface 
{

    public abstract void onPinchZoom(PinchZoomDetector pinchzoomdetector, TouchEvent touchevent, float f);

    public abstract void onPinchZoomFinished(PinchZoomDetector pinchzoomdetector, TouchEvent touchevent, float f);

    public abstract void onPinchZoomStarted(PinchZoomDetector pinchzoomdetector, TouchEvent touchevent);
}
