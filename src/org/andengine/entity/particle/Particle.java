// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle;

import org.andengine.engine.camera.Camera;
import org.andengine.engine.handler.physics.PhysicsHandler;
import org.andengine.entity.IEntity;
import org.andengine.opengl.util.GLState;

public class Particle
{

    private static final int EXPIRETIME_NEVER = -1;
    private IEntity mEntity;
    private float mExpireTime;
    boolean mExpired;
    private float mLifeTime;
    private final PhysicsHandler mPhysicsHandler = new PhysicsHandler(null);

    public Particle()
    {
        mExpireTime = -1F;
    }

    public IEntity getEntity()
    {
        return mEntity;
    }

    public float getExpireTime()
    {
        return mExpireTime;
    }

    public float getLifeTime()
    {
        return mLifeTime;
    }

    public PhysicsHandler getPhysicsHandler()
    {
        return mPhysicsHandler;
    }

    public boolean isExpired()
    {
        return mExpired;
    }

    public void onDraw(GLState glstate, Camera camera)
    {
        if (!mExpired)
        {
            mEntity.onDraw(glstate, camera);
        }
    }

    protected void onUpdate(float f)
    {
label0:
        {
            if (!mExpired)
            {
                if (mExpireTime != -1F && f + mLifeTime >= mExpireTime)
                {
                    break label0;
                }
                mLifeTime = f + mLifeTime;
                mEntity.onUpdate(f);
                mPhysicsHandler.onUpdate(f);
            }
            return;
        }
        float f1 = mExpireTime - mLifeTime;
        mLifeTime = mExpireTime;
        mEntity.onUpdate(f1);
        mPhysicsHandler.onUpdate(f1);
        setExpired(true);
    }

    public void reset()
    {
        mEntity.reset();
        mPhysicsHandler.reset();
        mExpired = false;
        mExpireTime = -1F;
        mLifeTime = 0.0F;
    }

    public void setEntity(IEntity ientity)
    {
        mEntity = ientity;
        mPhysicsHandler.setEntity(ientity);
    }

    public void setExpireTime(float f)
    {
        mExpireTime = f;
    }

    public void setExpired(boolean flag)
    {
        mExpired = flag;
    }
}
