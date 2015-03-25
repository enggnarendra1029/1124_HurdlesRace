// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera;


// Referenced classes of package org.andengine.engine.camera:
//            ZoomCamera

public class SmoothCamera extends ZoomCamera
{

    protected float mMaxVelocityX;
    protected float mMaxVelocityY;
    protected float mMaxZoomFactorChange;
    protected float mTargetCenterX;
    protected float mTargetCenterY;
    protected float mTargetZoomFactor;

    public SmoothCamera(float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        super(f, f1, f2, f3);
        mMaxVelocityX = f4;
        mMaxVelocityY = f5;
        mMaxZoomFactorChange = f6;
        mTargetCenterX = getCenterX();
        mTargetCenterY = getCenterY();
        mTargetZoomFactor = 1.0F;
    }

    private float limitToMaxVelocityX(float f, float f1)
    {
        if (f > 0.0F)
        {
            return Math.min(f, f1 * mMaxVelocityX);
        } else
        {
            return Math.max(f, f1 * -mMaxVelocityX);
        }
    }

    private float limitToMaxVelocityY(float f, float f1)
    {
        if (f > 0.0F)
        {
            return Math.min(f, f1 * mMaxVelocityY);
        } else
        {
            return Math.max(f, f1 * -mMaxVelocityY);
        }
    }

    private float limitToMaxZoomFactorChange(float f, float f1)
    {
        if (f > 0.0F)
        {
            return Math.min(f, f1 * mMaxZoomFactorChange);
        } else
        {
            return Math.max(f, f1 * -mMaxZoomFactorChange);
        }
    }

    public float getMaxVelocityX()
    {
        return mMaxVelocityX;
    }

    public float getMaxVelocityY()
    {
        return mMaxVelocityY;
    }

    public float getMaxZoomFactorChange()
    {
        return mMaxZoomFactorChange;
    }

    public float getTargetCenterX()
    {
        return mTargetCenterX;
    }

    public float getTargetCenterY()
    {
        return mTargetCenterY;
    }

    public float getTargetZoomFactor()
    {
        return mTargetZoomFactor;
    }

    protected void onSmoothZoomFinished()
    {
    }

    protected void onSmoothZoomStarted()
    {
    }

    public void onUpdate(float f)
    {
        super.onUpdate(f);
        float f1 = getCenterX();
        float f2 = getCenterY();
        float f3 = mTargetCenterX;
        float f4 = mTargetCenterY;
        if (f1 != f3 || f2 != f4)
        {
            float f5 = limitToMaxVelocityX(f3 - f1, f);
            float f6 = limitToMaxVelocityY(f4 - f2, f);
            super.setCenter(f1 + f5, f2 + f6);
        }
        float f7 = getZoomFactor();
        float f8 = mTargetZoomFactor;
        if (f7 != f8)
        {
            super.setZoomFactor(f7 + limitToMaxZoomFactorChange(f8 - f7, f));
            if (mZoomFactor == mTargetZoomFactor)
            {
                onSmoothZoomFinished();
            }
        }
    }

    public void setCenter(float f, float f1)
    {
        mTargetCenterX = f;
        mTargetCenterY = f1;
    }

    public void setCenterDirect(float f, float f1)
    {
        super.setCenter(f, f1);
        mTargetCenterX = f;
        mTargetCenterY = f1;
    }

    public void setMaxVelocity(float f, float f1)
    {
        mMaxVelocityX = f;
        mMaxVelocityY = f1;
    }

    public void setMaxVelocityX(float f)
    {
        mMaxVelocityX = f;
    }

    public void setMaxVelocityY(float f)
    {
        mMaxVelocityY = f;
    }

    public void setMaxZoomFactorChange(float f)
    {
        mMaxZoomFactorChange = f;
    }

    public void setZoomFactor(float f)
    {
label0:
        {
            if (mTargetZoomFactor != f)
            {
                if (mTargetZoomFactor != mZoomFactor)
                {
                    break label0;
                }
                mTargetZoomFactor = f;
                onSmoothZoomStarted();
            }
            return;
        }
        mTargetZoomFactor = f;
    }

    public void setZoomFactorDirect(float f)
    {
        if (mTargetZoomFactor != mZoomFactor)
        {
            mTargetZoomFactor = f;
            super.setZoomFactor(f);
            onSmoothZoomFinished();
            return;
        } else
        {
            mTargetZoomFactor = f;
            super.setZoomFactor(f);
            return;
        }
    }
}
