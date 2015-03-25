// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.util;

import android.graphics.Bitmap;

// Referenced classes of package org.andengine.entity.util:
//            ScreenGrabber

public static interface 
{

    public abstract void onScreenGrabFailed(Exception exception);

    public abstract void onScreenGrabbed(Bitmap bitmap);
}
