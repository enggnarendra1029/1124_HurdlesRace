// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.routing;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v4.media.routing:
//            MediaRouterJellybeanMr1

public static final class mScanWifiDisplaysMethod
    implements Runnable
{

    private static final int WIFI_DISPLAY_SCAN_INTERVAL = 15000;
    private boolean mActivelyScanningWifiDisplays;
    private final DisplayManager mDisplayManager;
    private final Handler mHandler;
    private Method mScanWifiDisplaysMethod;

    public void run()
    {
        if (mActivelyScanningWifiDisplays)
        {
            try
            {
                mScanWifiDisplaysMethod.invoke(mDisplayManager, new Object[0]);
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays.", illegalaccessexception);
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays.", invocationtargetexception);
            }
            mHandler.postDelayed(this, 15000L);
        }
    }

    public void setActiveScanRouteTypes(int i)
    {
        if ((i & 2) == 0) goto _L2; else goto _L1
_L1:
        if (mActivelyScanningWifiDisplays) goto _L4; else goto _L3
_L3:
        if (mScanWifiDisplaysMethod == null) goto _L6; else goto _L5
_L5:
        mActivelyScanningWifiDisplays = true;
        mHandler.post(this);
_L4:
        return;
_L6:
        Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays because the DisplayManager.scanWifiDisplays() method is not available on this device.");
        return;
_L2:
        if (mActivelyScanningWifiDisplays)
        {
            mActivelyScanningWifiDisplays = false;
            mHandler.removeCallbacks(this);
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    public (Context context, Handler handler)
    {
        if (android.os..ActiveScanWorkaround != 17)
        {
            throw new UnsupportedOperationException();
        }
        mDisplayManager = (DisplayManager)context.getSystemService("display");
        mHandler = handler;
        try
        {
            mScanWifiDisplaysMethod = android/hardware/display/DisplayManager.getMethod("scanWifiDisplays", new Class[0]);
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return;
        }
    }
}
