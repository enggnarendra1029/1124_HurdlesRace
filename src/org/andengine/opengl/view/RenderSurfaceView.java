// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.view;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import org.andengine.engine.Engine;
import org.andengine.engine.options.EngineOptions;
import org.andengine.engine.options.RenderOptions;
import org.andengine.engine.options.resolutionpolicy.IResolutionPolicy;

// Referenced classes of package org.andengine.opengl.view:
//            ConfigChooser, EngineRenderer, IRendererListener

public class RenderSurfaceView extends GLSurfaceView
{

    private ConfigChooser mConfigChooser;
    private EngineRenderer mEngineRenderer;

    public RenderSurfaceView(Context context)
    {
        super(context);
        setEGLContextClientVersion(2);
    }

    public RenderSurfaceView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setEGLContextClientVersion(2);
    }

    public ConfigChooser getConfigChooser()
        throws IllegalStateException
    {
        if (mConfigChooser == null)
        {
            throw new IllegalStateException((new StringBuilder(String.valueOf(org/andengine/opengl/view/ConfigChooser.getSimpleName()))).append(" not yet set.").toString());
        } else
        {
            return mConfigChooser;
        }
    }

    protected void onMeasure(int i, int j)
    {
        if (isInEditMode())
        {
            super.onMeasure(i, j);
            return;
        } else
        {
            mEngineRenderer.mEngine.getEngineOptions().getResolutionPolicy().onMeasure(this, i, j);
            return;
        }
    }

    public void setMeasuredDimensionProxy(int i, int j)
    {
        setMeasuredDimension(i, j);
    }

    public void setRenderer(Engine engine, IRendererListener irendererlistener)
    {
        if (mConfigChooser == null)
        {
            mConfigChooser = new ConfigChooser(engine.getEngineOptions().getRenderOptions().isMultiSampling());
        }
        setEGLConfigChooser(mConfigChooser);
        setOnTouchListener(engine);
        mEngineRenderer = new EngineRenderer(engine, mConfigChooser, irendererlistener);
        setRenderer(((android.opengl.GLSurfaceView.Renderer) (mEngineRenderer)));
    }
}
