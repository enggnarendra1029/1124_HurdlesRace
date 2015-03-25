// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.detector;


// Referenced classes of package org.andengine.input.touch.detector:
//            ScrollDetector

public static interface 
{

    public abstract void onScroll(ScrollDetector scrolldetector, int i, float f, float f1);

    public abstract void onScrollFinished(ScrollDetector scrolldetector, int i, float f, float f1);

    public abstract void onScrollStarted(ScrollDetector scrolldetector, int i, float f, float f1);
}
