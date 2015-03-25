// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.controller;

import android.content.Context;
import org.andengine.util.system.SystemUtils;

public class MultiTouch
{

    private static Boolean SUPPORTED = null;
    private static Boolean SUPPORTED_DISTINCT = null;

    public MultiTouch()
    {
    }

    public static boolean isSupported(Context context)
    {
        if (SUPPORTED == null)
        {
            SUPPORTED = Boolean.valueOf(SystemUtils.hasSystemFeature(context, "android.hardware.touchscreen.multitouch"));
        }
        return SUPPORTED.booleanValue();
    }

    public static boolean isSupportedDistinct(Context context)
    {
        if (SUPPORTED_DISTINCT == null)
        {
            SUPPORTED_DISTINCT = Boolean.valueOf(SystemUtils.hasSystemFeature(context, "android.hardware.touchscreen.multitouch.distinct"));
        }
        return SUPPORTED_DISTINCT.booleanValue();
    }

}
