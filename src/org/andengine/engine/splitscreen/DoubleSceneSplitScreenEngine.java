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

public class DoubleSceneSplitScreenEngine extends Engine
{

    private final Camera mSecondCamera;
    private Scene mSecondScene;

    public DoubleSceneSplitScreenEngine(EngineOptions engineoptions, Camera camera)
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

    public Scene getFirstScene()
    {
        return super.getScene();
    }

    public Scene getScene()
    {
        return super.getScene();
    }

    protected Scene getSceneFromSurfaceTouchEvent(TouchEvent touchevent)
    {
        if (touchevent.getX() <= (float)(mSurfaceWidth >> 1))
        {
            return getFirstScene();
        } else
        {
            return getSecondScene();
        }
    }

    public Camera getSecondCamera()
    {
        return mSecondCamera;
    }

    public Scene getSecondScene()
    {
        return mSecondScene;
    }

    protected void onDrawScene(GLState glstate, Camera camera)
    {
        Camera camera1 = getSecondCamera();
        int i = mSurfaceWidth >> 1;
        int j = mSurfaceHeight;
        glstate.enableScissorTest();
        if (super.mScene != null)
        {
            GLES20.glScissor(0, 0, i, j);
            GLES20.glViewport(0, 0, i, j);
            super.mScene.onDraw(glstate, camera);
            camera.onDrawHUD(glstate);
        }
        if (mSecondScene != null)
        {
            GLES20.glScissor(i, 0, i, j);
            GLES20.glViewport(i, 0, i, j);
            mSecondScene.onDraw(glstate, camera1);
            camera1.onDrawHUD(glstate);
        }
        glstate.disableScissorTest();
    }

    protected void onUpdateCameraSurface()
    {
        int i = mSurfaceWidth >> 1;
        getFirstCamera().setSurfaceSize(0, 0, i, mSurfaceHeight);
        getSecondCamera().setSurfaceSize(i, 0, i, mSurfaceHeight);
    }

    protected void onUpdateScene(float f)
    {
        super.onUpdateScene(f);
        if (mSecondScene != null)
        {
            mSecondScene.onUpdate(f);
        }
    }

    protected void onUpdateUpdateHandlers(float f)
    {
        super.onUpdateUpdateHandlers(f);
        getSecondCamera().onUpdate(f);
    }

    public void setFirstScene(Scene scene)
    {
        super.setScene(scene);
    }

    public void setScene(Scene scene)
    {
        setFirstScene(scene);
    }

    public void setSecondScene(Scene scene)
    {
        mSecondScene = scene;
    }
}
