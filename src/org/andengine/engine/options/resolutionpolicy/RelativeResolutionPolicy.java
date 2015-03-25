// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options.resolutionpolicy;

import org.andengine.opengl.view.RenderSurfaceView;

// Referenced classes of package org.andengine.engine.options.resolutionpolicy:
//            BaseResolutionPolicy

public class RelativeResolutionPolicy extends BaseResolutionPolicy
{

    private final float mHeightScale;
    private final float mWidthScale;

    public RelativeResolutionPolicy(float f)
    {
        this(f, f);
    }

    public RelativeResolutionPolicy(float f, float f1)
    {
        mWidthScale = f;
        mHeightScale = f1;
    }

    public void onMeasure(RenderSurfaceView rendersurfaceview, int i, int j)
    {
        BaseResolutionPolicy.throwOnNotMeasureSpecEXACTLY(i, j);
        rendersurfaceview.setMeasuredDimensionProxy((int)((float)android.view.View.MeasureSpec.getSize(i) * mWidthScale), (int)((float)android.view.View.MeasureSpec.getSize(j) * mHeightScale));
    }
}
