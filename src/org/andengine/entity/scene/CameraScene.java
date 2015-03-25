// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.shape.IAreaShape;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.entity.scene:
//            Scene

public class CameraScene extends Scene
{

    protected Camera mCamera;

    public CameraScene()
    {
        this(null);
    }

    public CameraScene(Camera camera)
    {
        mCamera = camera;
    }

    public void centerShapeInCamera(IAreaShape iareashape)
    {
        Camera camera = mCamera;
        iareashape.setPosition(0.5F * (camera.getWidth() - iareashape.getWidth()), 0.5F * (camera.getHeight() - iareashape.getHeight()));
    }

    public void centerShapeInCameraHorizontally(IAreaShape iareashape)
    {
        iareashape.setPosition(0.5F * (mCamera.getWidth() - iareashape.getWidth()), iareashape.getY());
    }

    public void centerShapeInCameraVertically(IAreaShape iareashape)
    {
        iareashape.setPosition(iareashape.getX(), 0.5F * (mCamera.getHeight() - iareashape.getHeight()));
    }

    public Camera getCamera()
    {
        return mCamera;
    }

    protected void onApplyMatrix(GLState glstate, Camera camera)
    {
        mCamera.onApplyCameraSceneMatrix(glstate);
    }

    protected boolean onChildSceneTouchEvent(TouchEvent touchevent)
    {
        if (mChildScene instanceof CameraScene)
        {
            mCamera.convertCameraSceneToSceneTouchEvent(touchevent);
            boolean flag = super.onChildSceneTouchEvent(touchevent);
            mCamera.convertSceneToCameraSceneTouchEvent(touchevent);
            return flag;
        } else
        {
            return super.onChildSceneTouchEvent(touchevent);
        }
    }

    public boolean onSceneTouchEvent(TouchEvent touchevent)
    {
        if (mCamera == null)
        {
            return false;
        }
        mCamera.convertSceneToCameraSceneTouchEvent(touchevent);
        if (super.onSceneTouchEvent(touchevent))
        {
            return true;
        } else
        {
            mCamera.convertCameraSceneToSceneTouchEvent(touchevent);
            return false;
        }
    }

    public void setCamera(Camera camera)
    {
        mCamera = camera;
    }
}
