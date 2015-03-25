// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options.resolutionpolicy;

import org.andengine.opengl.view.RenderSurfaceView;

// Referenced classes of package org.andengine.engine.options.resolutionpolicy:
//            BaseResolutionPolicy

public class FillResolutionPolicy extends BaseResolutionPolicy
{

    public FillResolutionPolicy()
    {
    }

    public void onMeasure(RenderSurfaceView rendersurfaceview, int i, int j)
    {
        BaseResolutionPolicy.throwOnNotMeasureSpecEXACTLY(i, j);
        rendersurfaceview.setMeasuredDimensionProxy(android.view.View.MeasureSpec.getSize(i), android.view.View.MeasureSpec.getSize(j));
    }
}
