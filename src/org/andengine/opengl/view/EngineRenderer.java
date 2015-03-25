// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.view;

import android.opengl.GLES20;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.andengine.engine.Engine;
import org.andengine.engine.options.EngineOptions;
import org.andengine.engine.options.RenderOptions;
import org.andengine.opengl.util.GLState;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.view:
//            ConfigChooser, IRendererListener

public class EngineRenderer
    implements android.opengl.GLSurfaceView.Renderer
{

    final ConfigChooser mConfigChooser;
    final Engine mEngine;
    final GLState mGLState = new GLState();
    final boolean mMultiSampling;
    final IRendererListener mRendererListener;

    public EngineRenderer(Engine engine, ConfigChooser configchooser, IRendererListener irendererlistener)
    {
        mEngine = engine;
        mConfigChooser = configchooser;
        mRendererListener = irendererlistener;
        mMultiSampling = mEngine.getEngineOptions().getRenderOptions().isMultiSampling();
    }

    public void onDrawFrame(GL10 gl10)
    {
        org/andengine/opengl/util/GLState;
        JVM INSTR monitorenter ;
        if (mMultiSampling && mConfigChooser.isCoverageMultiSampling())
        {
            GLES20.glClear(32768);
        }
        mEngine.onDrawFrame(mGLState);
_L1:
        org/andengine/opengl/util/GLState;
        JVM INSTR monitorexit ;
        return;
        InterruptedException interruptedexception;
        interruptedexception;
        Debug.e("GLThread interrupted!", interruptedexception);
          goto _L1
        Exception exception;
        exception;
        org/andengine/opengl/util/GLState;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onSurfaceChanged(GL10 gl10, int i, int j)
    {
        mEngine.setSurfaceSize(i, j);
        GLES20.glViewport(0, 0, i, j);
        mGLState.loadProjectionGLMatrixIdentity();
        if (mRendererListener != null)
        {
            mRendererListener.onSurfaceChanged(mGLState, i, j);
        }
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eglconfig)
    {
        org/andengine/opengl/util/GLState;
        JVM INSTR monitorenter ;
        RenderOptions renderoptions = mEngine.getEngineOptions().getRenderOptions();
        mGLState.reset(renderoptions, mConfigChooser, eglconfig);
        mGLState.disableDepthTest();
        mGLState.enableBlend();
        mGLState.setDitherEnabled(renderoptions.isDithering());
        if (mRendererListener != null)
        {
            mRendererListener.onSurfaceCreated(mGLState);
        }
        org/andengine/opengl/util/GLState;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        org/andengine/opengl/util/GLState;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
