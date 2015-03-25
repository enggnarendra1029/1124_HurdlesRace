// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler.physics;

import org.andengine.engine.handler.BaseEntityUpdateHandler;
import org.andengine.entity.IEntity;

public class PhysicsHandler extends BaseEntityUpdateHandler
{

    protected float mAccelerationX;
    protected float mAccelerationY;
    protected float mAngularVelocity;
    private boolean mEnabled;
    protected float mVelocityX;
    protected float mVelocityY;

    public PhysicsHandler(IEntity ientity)
    {
        super(ientity);
        mEnabled = true;
        mAccelerationX = 0.0F;
        mAccelerationY = 0.0F;
        mVelocityX = 0.0F;
        mVelocityY = 0.0F;
        mAngularVelocity = 0.0F;
    }

    public void accelerate(float f, float f1)
    {
        mAccelerationX = f + mAccelerationX;
        mAccelerationY = f1 + mAccelerationY;
    }

    public float getAccelerationX()
    {
        return mAccelerationX;
    }

    public float getAccelerationY()
    {
        return mAccelerationY;
    }

    public float getAngularVelocity()
    {
        return mAngularVelocity;
    }

    public float getVelocityX()
    {
        return mVelocityX;
    }

    public float getVelocityY()
    {
        return mVelocityY;
    }

    public boolean isEnabled()
    {
        return mEnabled;
    }

    protected void onUpdate(float f, IEntity ientity)
    {
        if (mEnabled)
        {
            float f1 = mAccelerationX;
            float f2 = mAccelerationY;
            if (f1 != 0.0F || f2 != 0.0F)
            {
                mVelocityX = mVelocityX + f1 * f;
                mVelocityY = mVelocityY + f2 * f;
            }
            float f3 = mAngularVelocity;
            if (f3 != 0.0F)
            {
                ientity.setRotation(ientity.getRotation() + f3 * f);
            }
            float f4 = mVelocityX;
            float f5 = mVelocityY;
            if (f4 != 0.0F || f5 != 0.0F)
            {
                ientity.setPosition(ientity.getX() + f4 * f, ientity.getY() + f5 * f);
            }
        }
    }

    public void reset()
    {
        mAccelerationX = 0.0F;
        mAccelerationY = 0.0F;
        mVelocityX = 0.0F;
        mVelocityY = 0.0F;
        mAngularVelocity = 0.0F;
    }

    public void setAcceleration(float f)
    {
        mAccelerationX = f;
        mAccelerationY = f;
    }

    public void setAcceleration(float f, float f1)
    {
        mAccelerationX = f;
        mAccelerationY = f1;
    }

    public void setAccelerationX(float f)
    {
        mAccelerationX = f;
    }

    public void setAccelerationY(float f)
    {
        mAccelerationY = f;
    }

    public void setAngularVelocity(float f)
    {
        mAngularVelocity = f;
    }

    public void setEnabled(boolean flag)
    {
        mEnabled = flag;
    }

    public void setVelocity(float f)
    {
        mVelocityX = f;
        mVelocityY = f;
    }

    public void setVelocity(float f, float f1)
    {
        mVelocityX = f;
        mVelocityY = f1;
    }

    public void setVelocityX(float f)
    {
        mVelocityX = f;
    }

    public void setVelocityY(float f)
    {
        mVelocityY = f;
    }
}
