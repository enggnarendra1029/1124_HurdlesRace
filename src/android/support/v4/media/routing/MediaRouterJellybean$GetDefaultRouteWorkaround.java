// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.routing;

import android.media.MediaRouter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v4.media.routing:
//            MediaRouterJellybean

public static final class mGetSystemAudioRouteMethod
{

    private Method mGetSystemAudioRouteMethod;

    public Object getDefaultRoute(Object obj)
    {
        MediaRouter mediarouter;
        mediarouter = (MediaRouter)obj;
        if (mGetSystemAudioRouteMethod == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        Object obj1 = mGetSystemAudioRouteMethod.invoke(mediarouter, new Object[0]);
        return obj1;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
_L2:
        return mediarouter.getRouteAt(0);
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ()
    {
        if (android.os.efaultRouteWorkaround < 16 || android.os.efaultRouteWorkaround > 17)
        {
            throw new UnsupportedOperationException();
        }
        try
        {
            mGetSystemAudioRouteMethod = android/media/MediaRouter.getMethod("getSystemAudioRoute", new Class[0]);
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return;
        }
    }
}
