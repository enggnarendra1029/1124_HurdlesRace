// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.ui.activity;

import org.andengine.opengl.view.RenderSurfaceView;

// Referenced classes of package org.andengine.ui.activity:
//            BaseGameActivity

public abstract class LayoutGameActivity extends BaseGameActivity
{

    public LayoutGameActivity()
    {
    }

    protected abstract int getLayoutID();

    protected abstract int getRenderSurfaceViewID();

    protected void onSetContentView()
    {
        super.setContentView(getLayoutID());
        mRenderSurfaceView = (RenderSurfaceView)findViewById(getRenderSurfaceViewID());
        mRenderSurfaceView.setRenderer(mEngine, this);
    }
}
