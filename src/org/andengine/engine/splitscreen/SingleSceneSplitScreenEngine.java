// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.splitscreen;

import android.opengl.GLES20;
import org.andengine.engine.Engine;
import org.andengine.engine.camera.Camera;
import org.andengine.engine.options.EngineOptions;
import org.andengine.entity.scene.Scene;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.util.GLState;

public class SingleSceneSplitScreenEngine extends Engine
{

    private final Camera mSecondCamera;

    public SingleSceneSplitScreenEngine(EngineOptions engineoptions, Camera camera)
    {
        super(engineoptions);
        mSecondCamera = camera;
    }

    protected void convertSurfaceToSceneTouchEvent(Camera camera, TouchEvent touchevent)
    {
        int i = mSurfaceWidth >> 1;
        if (camera == getFirstCamera())
        {
            camera.convertSurfaceToSceneTouchEvent(touchevent, i, mSurfaceHeight);
            return;
        } else
        {
            touchevent.offset(-i, 0.0F);
            camera.convertSurfaceToSceneTouchEvent(touchevent, i, mSurfaceHeight);
            return;
        }
    }

    public Camera getCamera()
    {
        return super.mCamera;
    }

    protected Camera getCameraFromSurfaceTouchEvent(TouchEvent touchevent)
    {
        if (touchevent.getX() <= (float)(mSurfaceWidth >> 1))
        {
            return getFirstCamera();
        } else
        {
            return getSecondCamera();
        }
    }

    public Camera getFirstCamera()
    {
        return super.mCamera;
    }

    public Camera getSecondCamera()
    {
        return mSecondCamera;
    }

    protected void onDrawScene(GLState glstate, Camera camera)
    {
        if (super.mScene != null)
        {
            Camera camera1 = getSecondCamera();
            int i = mSurfaceWidth >> 1;
            int j = mSurfaceHeight;
            glstate.enableScissorTest();
            GLES20.glScissor(0, 0, i, j);
            GLES20.glViewport(0, 0, i, j);
            super.mScene.onDraw(glstate, camera);
            camera.onDrawHUD(glstate);
            GLES20.glScissor(i, 0, i, j);
            GLES20.glViewport(i, 0, i, j);
            super.mScene.onDraw(glstate, camera1);
            camera1.onDrawHUD(glstate);
            glstate.disableScissorTest();
        }
    }

    protected void onUpdateCameraSurface()
    {
        int i = mSurfaceWidth >> 1;
        getFirstCamera().setSurfaceSize(0, 0, i, mSurfaceHeight);
        getSecondCamera().setSurfaceSize(i, 0, i, mSurfaceHeight);
    }

    protected void onUpdateUpdateHandlers(float f)
    {
        super.onUpdateUpdateHandlers(f);
        getSecondCamera().onUpdate(f);
    }
}
