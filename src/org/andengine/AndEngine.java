// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import org.andengine.opengl.view.ConfigChooser;
import org.andengine.util.exception.DeviceNotSupportedException;
import org.andengine.util.system.SystemUtils;

public class AndEngine
{

    public AndEngine()
    {
    }

    private static void checkCodePathSupport()
        throws DeviceNotSupportedException
    {
        if (!SystemUtils.isAndroidVersionOrLower(8))
        {
            break MISSING_BLOCK_LABEL_13;
        }
        System.loadLibrary("andengine");
        return;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
        throw new DeviceNotSupportedException(org.andengine.util.exception.DeviceNotSupportedException.DeviceNotSupportedCause.CODEPATH_INCOMPLETE, unsatisfiedlinkerror);
    }

    public static void checkDeviceSupported()
        throws DeviceNotSupportedException
    {
        checkCodePathSupport();
        checkOpenGLSupport();
    }

    private static void checkEGLConfigChooserSupport()
        throws DeviceNotSupportedException
    {
        EGL10 egl10 = (EGL10)EGLContext.getEGL();
        javax.microedition.khronos.egl.EGLDisplay egldisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        egl10.eglInitialize(egldisplay, new int[2]);
        ConfigChooser configchooser = new ConfigChooser(false);
        try
        {
            configchooser.chooseConfig(egl10, egldisplay);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new DeviceNotSupportedException(org.andengine.util.exception.DeviceNotSupportedException.DeviceNotSupportedCause.EGLCONFIG_NOT_FOUND, illegalargumentexception);
        }
    }

    private static void checkOpenGLSupport()
        throws DeviceNotSupportedException
    {
        checkEGLConfigChooserSupport();
    }

    public static boolean isDeviceSupported()
    {
        try
        {
            checkDeviceSupported();
        }
        catch (DeviceNotSupportedException devicenotsupportedexception)
        {
            return false;
        }
        return true;
    }
}
