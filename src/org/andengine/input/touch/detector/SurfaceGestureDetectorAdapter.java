// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;

import android.content.Context;

// Referenced classes of package org.andengine.input.touch.detector:
//            SurfaceGestureDetector

public class SurfaceGestureDetectorAdapter extends SurfaceGestureDetector
{

    public SurfaceGestureDetectorAdapter(Context context)
    {
        super(context);
    }

    public SurfaceGestureDetectorAdapter(Context context, float f)
    {
        super(context, f);
    }

    protected boolean onDoubleTap()
    {
        return false;
    }

    protected boolean onSingleTap()
    {
        return false;
    }

    protected boolean onSwipeDown()
    {
        return false;
    }

    protected boolean onSwipeLeft()
    {
        return false;
    }

    protected boolean onSwipeRight()
    {
        return false;
    }

    protected boolean onSwipeUp()
    {
        return false;
    }
}
