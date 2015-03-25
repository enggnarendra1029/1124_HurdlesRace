// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

// Referenced classes of package org.andengine.engine.camera:
//            Camera

public class CameraFactory
{

    public CameraFactory()
    {
    }

    public static Camera createPixelPerfectCamera(Context context, float f, float f1)
    {
        DisplayMetrics displaymetrics = getDisplayMetrics(context);
        float f2 = displaymetrics.widthPixels;
        float f3 = displaymetrics.heightPixels;
        return new Camera(f - f2 * 0.5F, f1 - 0.5F * f3, f2, f3);
    }

    private static DisplayMetrics getDisplayMetrics(Context context)
    {
        return context.getResources().getDisplayMetrics();
    }
}
