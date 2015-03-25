// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera;


// Referenced classes of package org.andengine.engine.camera:
//            Camera

public class BoundCamera extends Camera
{

    protected float mBoundsCenterX;
    protected float mBoundsCenterY;
    protected boolean mBoundsEnabled;
    protected float mBoundsHeight;
    protected float mBoundsWidth;
    protected float mBoundsXMax;
    protected float mBoundsXMin;
    protected float mBoundsYMax;
    protected float mBoundsYMin;

    public BoundCamera(float f, float f1, float f2, float f3)
    {
        super(f, f1, f2, f3);
    }

    public BoundCamera(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7)
    {
        super(f, f1, f2, f3);
        setBounds(f4, f6, f5, f7);
        mBoundsEnabled = true;
    }

    protected void ensureInBounds()
    {
        float f;
        float f1;
        if (mBoundsWidth < getWidth())
        {
            f = mBoundsCenterX;
        } else
        {
            f = getBoundedX(getCenterX());
        }
        if (mBoundsHeight < getHeight())
        {
            f1 = mBoundsCenterY;
        } else
        {
            f1 = getBoundedY(getCenterY());
        }
        super.setCenter(f, f1);
    }

    protected float getBoundedX(float f)
    {
        float f1;
        float f2;
        boolean flag1;
        f1 = mBoundsXMin - getXMin();
        boolean flag;
        if (f1 > 0.0F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f2 = getXMax() - mBoundsXMax;
        if (f2 > 0.0F)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        if (!flag1) goto _L4; else goto _L3
_L3:
        f = f1 + (f - f2);
_L6:
        return f;
_L4:
        return f + f1;
_L2:
        if (flag1)
        {
            return f - f2;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected float getBoundedY(float f)
    {
        float f1;
        float f2;
        boolean flag1;
        f1 = mBoundsYMin - getYMin();
        boolean flag;
        if (f1 > 0.0F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f2 = getYMax() - mBoundsYMax;
        if (f2 > 0.0F)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        if (!flag1) goto _L4; else goto _L3
_L3:
        f = f1 + (f - f2);
_L6:
        return f;
_L4:
        return f + f1;
_L2:
        if (flag1)
        {
            return f - f2;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public float getBoundsHeight()
    {
        return mBoundsHeight;
    }

    public float getBoundsWidth()
    {
        return mBoundsWidth;
    }

    public float getBoundsXMax()
    {
        return mBoundsXMax;
    }

    public float getBoundsXMin()
    {
        return mBoundsXMin;
    }

    public float getBoundsYMax()
    {
        return mBoundsYMax;
    }

    public float getBoundsYMin()
    {
        return mBoundsYMin;
    }

    public boolean isBoundsEnabled()
    {
        return mBoundsEnabled;
    }

    public void setBounds(float f, float f1, float f2, float f3)
    {
        mBoundsXMin = f;
        mBoundsXMax = f2;
        mBoundsYMin = f1;
        mBoundsYMax = f3;
        mBoundsWidth = mBoundsXMax - mBoundsXMin;
        mBoundsHeight = mBoundsYMax - mBoundsYMin;
        mBoundsCenterX = mBoundsXMin + 0.5F * mBoundsWidth;
        mBoundsCenterY = mBoundsYMin + 0.5F * mBoundsHeight;
    }

    public void setBoundsEnabled(boolean flag)
    {
        mBoundsEnabled = flag;
    }

    public void setCenter(float f, float f1)
    {
        super.setCenter(f, f1);
        if (mBoundsEnabled)
        {
            ensureInBounds();
        }
    }
}
