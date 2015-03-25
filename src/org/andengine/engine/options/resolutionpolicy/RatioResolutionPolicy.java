// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options.resolutionpolicy;

import org.andengine.opengl.view.RenderSurfaceView;

// Referenced classes of package org.andengine.engine.options.resolutionpolicy:
//            BaseResolutionPolicy

public class RatioResolutionPolicy extends BaseResolutionPolicy
{

    private final float mRatio;

    public RatioResolutionPolicy(float f)
    {
        mRatio = f;
    }

    public RatioResolutionPolicy(float f, float f1)
    {
        mRatio = f / f1;
    }

    public void onMeasure(RenderSurfaceView rendersurfaceview, int i, int j)
    {
        BaseResolutionPolicy.throwOnNotMeasureSpecEXACTLY(i, j);
        int k = android.view.View.MeasureSpec.getSize(i);
        int l = android.view.View.MeasureSpec.getSize(j);
        float f = mRatio;
        int i1;
        int j1;
        if ((float)k / (float)l < f)
        {
            j1 = k;
            i1 = Math.round((float)j1 / f);
        } else
        {
            i1 = l;
            j1 = Math.round(f * (float)i1);
        }
        rendersurfaceview.setMeasuredDimensionProxy(j1, i1);
    }
}
