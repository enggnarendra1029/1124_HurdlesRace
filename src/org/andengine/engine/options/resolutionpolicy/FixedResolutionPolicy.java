// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options.resolutionpolicy;

import org.andengine.opengl.view.RenderSurfaceView;

// Referenced classes of package org.andengine.engine.options.resolutionpolicy:
//            BaseResolutionPolicy

public class FixedResolutionPolicy extends BaseResolutionPolicy
{

    private final int mHeight;
    private final int mWidth;

    public FixedResolutionPolicy(int i, int j)
    {
        mWidth = i;
        mHeight = j;
    }

    public void onMeasure(RenderSurfaceView rendersurfaceview, int i, int j)
    {
        rendersurfaceview.setMeasuredDimensionProxy(mWidth, mHeight);
    }
}
