// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera;

import org.andengine.engine.camera.hud.HUD;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.engine.handler.UpdateHandlerList;
import org.andengine.entity.IEntity;
import org.andengine.entity.primitive.Line;
import org.andengine.entity.shape.RectangularShape;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.transformation.Transformation;
import org.andengine.util.algorithm.collision.RectangularShapeCollisionChecker;
import org.andengine.util.math.MathUtils;

public class Camera
    implements IUpdateHandler
{

    private static final int UPDATEHANDLERS_CAPACITY_DEFAULT = 4;
    static final float VERTICES_TMP[] = new float[2];
    protected float mCameraSceneRotation;
    private IEntity mChaseEntity;
    private HUD mHUD;
    protected boolean mResizeOnSurfaceSizeChanged;
    protected float mRotation;
    protected int mSurfaceHeight;
    protected int mSurfaceWidth;
    protected int mSurfaceX;
    protected int mSurfaceY;
    protected UpdateHandlerList mUpdateHandlers;
    protected float mXMax;
    protected float mXMin;
    protected float mYMax;
    protected float mYMin;
    private float mZFar;
    private float mZNear;

    public Camera(float f, float f1, float f2, float f3)
    {
        mZNear = -1F;
        mZFar = 1.0F;
        mRotation = 0.0F;
        mCameraSceneRotation = 0.0F;
        set(f, f1, f + f2, f1 + f3);
    }

    private void allocateUpdateHandlers()
    {
        mUpdateHandlers = new UpdateHandlerList(4);
    }

    private void applyCameraSceneRotation(TouchEvent touchevent)
    {
        float f = -mCameraSceneRotation;
        if (f != 0.0F)
        {
            VERTICES_TMP[0] = touchevent.getX();
            VERTICES_TMP[1] = touchevent.getY();
            MathUtils.rotateAroundCenter(VERTICES_TMP, f, 0.5F * (mXMax - mXMin), 0.5F * (mYMax - mYMin));
            touchevent.set(VERTICES_TMP[0], VERTICES_TMP[1]);
        }
    }

    private void applyCameraSceneRotation(float af[])
    {
        float f = -mCameraSceneRotation;
        if (f != 0.0F)
        {
            MathUtils.rotateAroundCenter(af, f, 0.5F * (mXMax - mXMin), 0.5F * (mYMax - mYMin));
        }
    }

    private static void applyRotation(GLState glstate, float f, float f1, float f2)
    {
        glstate.translateProjectionGLMatrixf(f, f1, 0.0F);
        glstate.rotateProjectionGLMatrixf(f2, 0.0F, 0.0F, 1.0F);
        glstate.translateProjectionGLMatrixf(-f, -f1, 0.0F);
    }

    private void applySceneRotation(TouchEvent touchevent)
    {
        float f = mRotation;
        if (f != 0.0F)
        {
            VERTICES_TMP[0] = touchevent.getX();
            VERTICES_TMP[1] = touchevent.getY();
            MathUtils.rotateAroundCenter(VERTICES_TMP, -f, getCenterX(), getCenterY());
            touchevent.set(VERTICES_TMP[0], VERTICES_TMP[1]);
        }
    }

    private void applySceneRotation(float af[])
    {
        float f = mRotation;
        if (f != 0.0F)
        {
            MathUtils.rotateAroundCenter(af, -f, getCenterX(), getCenterY());
        }
    }

    private void convertAxisAlignedSceneToSurfaceTouchEvent(TouchEvent touchevent, int i, int j)
    {
        float f = getXMin();
        float f1 = getXMax();
        float f2 = getYMin();
        float f3 = getYMax();
        float f4 = (touchevent.getX() - f) / (f1 - f);
        float f5 = (touchevent.getY() - f2) / (f3 - f2);
        touchevent.set(f4 * (float)i, f5 * (float)j);
    }

    private void convertAxisAlignedSurfaceToSceneTouchEvent(TouchEvent touchevent, float f, float f1)
    {
        float f2 = getXMin();
        float f3 = getXMax();
        float f4 = getYMin();
        float f5 = getYMax();
        touchevent.set(f2 + f * (f3 - f2), f4 + f1 * (f5 - f4));
    }

    private void unapplyCameraSceneRotation(TouchEvent touchevent)
    {
        float f = -mCameraSceneRotation;
        if (f != 0.0F)
        {
            VERTICES_TMP[0] = touchevent.getX();
            VERTICES_TMP[1] = touchevent.getY();
            MathUtils.revertRotateAroundCenter(VERTICES_TMP, f, 0.5F * (mXMax - mXMin), 0.5F * (mYMax - mYMin));
            touchevent.set(VERTICES_TMP[0], VERTICES_TMP[1]);
        }
    }

    private void unapplyCameraSceneRotation(float af[])
    {
        float f = -mCameraSceneRotation;
        if (f != 0.0F)
        {
            MathUtils.revertRotateAroundCenter(af, f, 0.5F * (mXMax - mXMin), 0.5F * (mYMax - mYMin));
        }
    }

    private void unapplySceneRotation(TouchEvent touchevent)
    {
        float f = mRotation;
        if (f != 0.0F)
        {
            VERTICES_TMP[0] = touchevent.getX();
            VERTICES_TMP[1] = touchevent.getY();
            MathUtils.revertRotateAroundCenter(VERTICES_TMP, f, getCenterX(), getCenterY());
            touchevent.set(VERTICES_TMP[0], VERTICES_TMP[1]);
        }
    }

    private void unapplySceneRotation(float af[])
    {
        float f = mRotation;
        if (f != 0.0F)
        {
            MathUtils.revertRotateAroundCenter(af, f, getCenterX(), getCenterY());
        }
    }

    protected void applySceneToCameraSceneOffset(TouchEvent touchevent)
    {
        touchevent.offset(-mXMin, -mYMin);
    }

    protected void applySceneToCameraSceneOffset(float af[])
    {
        af[0] = af[0] - mXMin;
        af[1] = af[1] - mYMin;
    }

    public void clearUpdateHandlers()
    {
        if (mUpdateHandlers == null)
        {
            return;
        } else
        {
            mUpdateHandlers.clear();
            return;
        }
    }

    public void convertCameraSceneToSceneTouchEvent(TouchEvent touchevent)
    {
        unapplyCameraSceneRotation(touchevent);
        unapplySceneToCameraSceneOffset(touchevent);
        applySceneRotation(touchevent);
    }

    public void convertSceneToCameraSceneTouchEvent(TouchEvent touchevent)
    {
        unapplySceneRotation(touchevent);
        applySceneToCameraSceneOffset(touchevent);
        applyCameraSceneRotation(touchevent);
    }

    public void convertSceneToSurfaceTouchEvent(TouchEvent touchevent, int i, int j)
    {
        float f;
label0:
        {
            convertAxisAlignedSceneToSurfaceTouchEvent(touchevent, i, j);
            f = mRotation;
            if (f != 0.0F)
            {
                if (f != 180F)
                {
                    break label0;
                }
                touchevent.set((float)i - touchevent.getX(), (float)j - touchevent.getY());
            }
            return;
        }
        VERTICES_TMP[0] = touchevent.getX();
        VERTICES_TMP[1] = touchevent.getY();
        MathUtils.revertRotateAroundCenter(VERTICES_TMP, f, i >> 1, j >> 1);
        touchevent.set(VERTICES_TMP[0], VERTICES_TMP[1]);
    }

    public void convertSurfaceToSceneTouchEvent(TouchEvent touchevent, int i, int j)
    {
        float f = touchevent.getX();
        float f1 = touchevent.getY();
        float f2 = mRotation;
        float f3;
        float f4;
        if (f2 == 0.0F)
        {
            f3 = f / (float)i;
            f4 = f1 / (float)j;
        } else
        if (f2 == 180F)
        {
            f3 = 1.0F - f / (float)i;
            f4 = 1.0F - f1 / (float)j;
        } else
        {
            VERTICES_TMP[0] = f;
            VERTICES_TMP[1] = f1;
            MathUtils.rotateAroundCenter(VERTICES_TMP, f2, i >> 1, j >> 1);
            f3 = VERTICES_TMP[0] / (float)i;
            f4 = VERTICES_TMP[1] / (float)j;
        }
        convertAxisAlignedSurfaceToSceneTouchEvent(touchevent, f3, f4);
    }

    public float[] getCameraSceneCoordinatesFromSceneCoordinates(float f, float f1)
    {
        VERTICES_TMP[0] = f;
        VERTICES_TMP[1] = f1;
        return getCameraSceneCoordinatesFromSceneCoordinates(VERTICES_TMP);
    }

    public float[] getCameraSceneCoordinatesFromSceneCoordinates(float af[])
    {
        unapplySceneRotation(af);
        applySceneToCameraSceneOffset(af);
        applyCameraSceneRotation(af);
        return af;
    }

    public float getCameraSceneRotation()
    {
        return mCameraSceneRotation;
    }

    public float getCenterX()
    {
        return 0.5F * (mXMin + mXMax);
    }

    public float getCenterY()
    {
        return 0.5F * (mYMin + mYMax);
    }

    public HUD getHUD()
    {
        return mHUD;
    }

    public float getHeight()
    {
        return mYMax - mYMin;
    }

    public float getHeightRaw()
    {
        return mYMax - mYMin;
    }

    public float getRotation()
    {
        return mRotation;
    }

    public float[] getSceneCoordinatesFromCameraSceneCoordinates(float f, float f1)
    {
        VERTICES_TMP[0] = f;
        VERTICES_TMP[1] = f1;
        return getSceneCoordinatesFromCameraSceneCoordinates(VERTICES_TMP);
    }

    public float[] getSceneCoordinatesFromCameraSceneCoordinates(float af[])
    {
        unapplyCameraSceneRotation(af);
        unapplySceneToCameraSceneOffset(af);
        applySceneRotation(af);
        return af;
    }

    public int getSurfaceHeight()
    {
        return mSurfaceHeight;
    }

    public int getSurfaceWidth()
    {
        return mSurfaceWidth;
    }

    public int getSurfaceX()
    {
        return mSurfaceX;
    }

    public int getSurfaceY()
    {
        return mSurfaceY;
    }

    public float getWidth()
    {
        return mXMax - mXMin;
    }

    public float getWidthRaw()
    {
        return mXMax - mXMin;
    }

    public float getXMax()
    {
        return mXMax;
    }

    public float getXMin()
    {
        return mXMin;
    }

    public float getYMax()
    {
        return mYMax;
    }

    public float getYMin()
    {
        return mYMin;
    }

    public float getZFar()
    {
        return mZFar;
    }

    public float getZNear()
    {
        return mZNear;
    }

    public boolean hasHUD()
    {
        return mHUD != null;
    }

    public boolean isLineVisible(Line line)
    {
        return RectangularShapeCollisionChecker.isVisible(this, line);
    }

    public boolean isRectangularShapeVisible(float f, float f1, float f2, float f3, Transformation transformation)
    {
        return RectangularShapeCollisionChecker.isVisible(this, f, f1, f2, f3, transformation);
    }

    public boolean isRectangularShapeVisible(RectangularShape rectangularshape)
    {
        return RectangularShapeCollisionChecker.isVisible(this, rectangularshape);
    }

    public boolean isResizeOnSurfaceSizeChanged()
    {
        return mResizeOnSurfaceSizeChanged;
    }

    public boolean isRotated()
    {
        return mRotation != 0.0F;
    }

    public void offsetCenter(float f, float f1)
    {
        setCenter(f + getCenterX(), f1 + getCenterY());
    }

    public void onApplyCameraSceneMatrix(GLState glstate)
    {
        float f = getWidthRaw();
        float f1 = getHeightRaw();
        glstate.orthoProjectionGLMatrixf(0.0F, f, f1, 0.0F, mZNear, mZFar);
        float f2 = mCameraSceneRotation;
        if (f2 != 0.0F)
        {
            applyRotation(glstate, f * 0.5F, f1 * 0.5F, f2);
        }
    }

    public void onApplySceneBackgroundMatrix(GLState glstate)
    {
        float f = getWidthRaw();
        float f1 = getHeightRaw();
        glstate.orthoProjectionGLMatrixf(0.0F, f, f1, 0.0F, mZNear, mZFar);
        float f2 = mRotation;
        if (f2 != 0.0F)
        {
            applyRotation(glstate, f * 0.5F, f1 * 0.5F, f2);
        }
    }

    public void onApplySceneMatrix(GLState glstate)
    {
        glstate.orthoProjectionGLMatrixf(getXMin(), getXMax(), getYMax(), getYMin(), mZNear, mZFar);
        float f = mRotation;
        if (f != 0.0F)
        {
            applyRotation(glstate, getCenterX(), getCenterY(), f);
        }
    }

    public void onDrawHUD(GLState glstate)
    {
        if (mHUD != null)
        {
            mHUD.onDraw(glstate, this);
        }
    }

    protected void onSurfaceSizeChanged(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1)
    {
        if (mResizeOnSurfaceSizeChanged)
        {
            float f = (float)k1 / (float)k;
            float f1 = (float)l1 / (float)l;
            float f2 = getCenterX();
            float f3 = getCenterY();
            float f4 = f * getWidthRaw();
            float f5 = f1 * getHeightRaw();
            float f6 = f4 * 0.5F;
            float f7 = f5 * 0.5F;
            set(f2 - f6, f3 - f7, f2 + f6, f3 + f7);
        }
        mSurfaceX = i1;
        mSurfaceY = j1;
        mSurfaceWidth = k1;
        mSurfaceHeight = l1;
    }

    protected void onSurfaceSizeInitialized(int i, int j, int k, int l)
    {
        mSurfaceX = i;
        mSurfaceY = j;
        mSurfaceWidth = k;
        mSurfaceHeight = l;
    }

    public void onUpdate(float f)
    {
        if (mUpdateHandlers != null)
        {
            mUpdateHandlers.onUpdate(f);
        }
        if (mHUD != null)
        {
            mHUD.onUpdate(f);
        }
        updateChaseEntity();
    }

    public void registerUpdateHandler(IUpdateHandler iupdatehandler)
    {
        if (mUpdateHandlers == null)
        {
            allocateUpdateHandlers();
        }
        mUpdateHandlers.add(iupdatehandler);
    }

    public void reset()
    {
    }

    public void set(float f, float f1, float f2, float f3)
    {
        mXMin = f;
        mXMax = f2;
        mYMin = f1;
        mYMax = f3;
    }

    public void setCameraSceneRotation(float f)
    {
        mCameraSceneRotation = f;
    }

    public void setCenter(float f, float f1)
    {
        float f2 = f - getCenterX();
        float f3 = f1 - getCenterY();
        mXMin = f2 + mXMin;
        mXMax = f2 + mXMax;
        mYMin = f3 + mYMin;
        mYMax = f3 + mYMax;
    }

    public void setChaseEntity(IEntity ientity)
    {
        mChaseEntity = ientity;
    }

    public void setHUD(HUD hud)
    {
        mHUD = hud;
        if (hud != null)
        {
            hud.setCamera(this);
        }
    }

    public void setResizeOnSurfaceSizeChanged(boolean flag)
    {
        mResizeOnSurfaceSizeChanged = flag;
    }

    public void setRotation(float f)
    {
        mRotation = f;
    }

    public void setSurfaceSize(int i, int j, int k, int l)
    {
        if (mSurfaceHeight == 0 && mSurfaceWidth == 0)
        {
            onSurfaceSizeInitialized(i, j, k, l);
        } else
        if (mSurfaceWidth != k || mSurfaceHeight != l)
        {
            onSurfaceSizeChanged(mSurfaceX, mSurfaceY, mSurfaceWidth, mSurfaceHeight, i, j, k, l);
            return;
        }
    }

    public void setXMax(float f)
    {
        mXMax = f;
    }

    public void setXMin(float f)
    {
        mXMin = f;
    }

    public void setYMax(float f)
    {
        mYMax = f;
    }

    public void setYMin(float f)
    {
        mYMin = f;
    }

    public void setZClippingPlanes(float f, float f1)
    {
        mZNear = f;
        mZFar = f1;
    }

    public void setZFar(float f)
    {
        mZFar = f;
    }

    public void setZNear(float f)
    {
        mZNear = f;
    }

    protected void unapplySceneToCameraSceneOffset(TouchEvent touchevent)
    {
        touchevent.offset(mXMin, mYMin);
    }

    protected void unapplySceneToCameraSceneOffset(float af[])
    {
        af[0] = af[0] + mXMin;
        af[1] = af[1] + mYMin;
    }

    public boolean unregisterUpdateHandler(IUpdateHandler iupdatehandler)
    {
        if (mUpdateHandlers == null)
        {
            return false;
        } else
        {
            return mUpdateHandlers.remove(iupdatehandler);
        }
    }

    public boolean unregisterUpdateHandlers(org.andengine.engine.handler.IUpdateHandler.IUpdateHandlerMatcher iupdatehandlermatcher)
    {
        if (mUpdateHandlers == null)
        {
            return false;
        } else
        {
            return mUpdateHandlers.removeAll(iupdatehandlermatcher);
        }
    }

    public void updateChaseEntity()
    {
        if (mChaseEntity != null)
        {
            float af[] = mChaseEntity.getSceneCenterCoordinates();
            setCenter(af[0], af[1]);
        }
    }

}
