// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera;

import org.andengine.input.touch.TouchEvent;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.engine.camera:
//            BoundCamera, Camera

public class ZoomCamera extends BoundCamera
{

    protected float mZoomFactor;

    public ZoomCamera(float f, float f1, float f2, float f3)
    {
        super(f, f1, f2, f3);
        mZoomFactor = 1.0F;
    }

    protected void applySceneToCameraSceneOffset(TouchEvent touchevent)
    {
        float f = mZoomFactor;
        if (f != 1.0F)
        {
            Camera.VERTICES_TMP[0] = touchevent.getX();
            Camera.VERTICES_TMP[1] = touchevent.getY();
            MathUtils.scaleAroundCenter(Camera.VERTICES_TMP, f, f, getCenterX(), getCenterY());
            touchevent.set(Camera.VERTICES_TMP[0], Camera.VERTICES_TMP[1]);
        }
        super.applySceneToCameraSceneOffset(touchevent);
    }

    protected void applySceneToCameraSceneOffset(float af[])
    {
        float f = mZoomFactor;
        if (f != 1.0F)
        {
            MathUtils.scaleAroundCenter(af, f, f, getCenterX(), getCenterY());
        }
        super.applySceneToCameraSceneOffset(af);
    }

    public float getHeight()
    {
        return super.getHeight() / mZoomFactor;
    }

    public float getWidth()
    {
        return super.getWidth() / mZoomFactor;
    }

    public float getXMax()
    {
        if (mZoomFactor == 1.0F)
        {
            return super.getXMax();
        } else
        {
            float f = getCenterX();
            return f + (super.getXMax() - f) / mZoomFactor;
        }
    }

    public float getXMin()
    {
        if (mZoomFactor == 1.0F)
        {
            return super.getXMin();
        } else
        {
            float f = getCenterX();
            return f - (f - super.getXMin()) / mZoomFactor;
        }
    }

    public float getYMax()
    {
        if (mZoomFactor == 1.0F)
        {
            return super.getYMax();
        } else
        {
            float f = getCenterY();
            return f + (super.getYMax() - f) / mZoomFactor;
        }
    }

    public float getYMin()
    {
        if (mZoomFactor == 1.0F)
        {
            return super.getYMin();
        } else
        {
            float f = getCenterY();
            return f - (f - super.getYMin()) / mZoomFactor;
        }
    }

    public float getZoomFactor()
    {
        return mZoomFactor;
    }

    public void setZoomFactor(float f)
    {
        mZoomFactor = f;
        if (mBoundsEnabled)
        {
            ensureInBounds();
        }
    }

    protected void unapplySceneToCameraSceneOffset(TouchEvent touchevent)
    {
        super.unapplySceneToCameraSceneOffset(touchevent);
        float f = mZoomFactor;
        if (f != 1.0F)
        {
            Camera.VERTICES_TMP[0] = touchevent.getX();
            Camera.VERTICES_TMP[1] = touchevent.getY();
            MathUtils.revertScaleAroundCenter(Camera.VERTICES_TMP, f, f, getCenterX(), getCenterY());
            touchevent.set(Camera.VERTICES_TMP[0], Camera.VERTICES_TMP[1]);
        }
    }

    protected void unapplySceneToCameraSceneOffset(float af[])
    {
        super.unapplySceneToCameraSceneOffset(af);
        float f = mZoomFactor;
        if (f != 1.0F)
        {
            MathUtils.revertScaleAroundCenter(af, f, f, getCenterX(), getCenterY());
        }
    }
}
