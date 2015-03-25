// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import android.view.MotionEvent;
import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.input.touch.detector:
//            ScrollDetector

public class SurfaceScrollDetector extends ScrollDetector
{

    public SurfaceScrollDetector(float f, ScrollDetector.IScrollDetectorListener iscrolldetectorlistener)
    {
        super(f, iscrolldetectorlistener);
    }

    public SurfaceScrollDetector(ScrollDetector.IScrollDetectorListener iscrolldetectorlistener)
    {
        super(iscrolldetectorlistener);
    }

    protected float getX(TouchEvent touchevent)
    {
        return touchevent.getMotionEvent().getX();
    }

    protected float getY(TouchEvent touchevent)
    {
        return touchevent.getMotionEvent().getY();
    }
}
