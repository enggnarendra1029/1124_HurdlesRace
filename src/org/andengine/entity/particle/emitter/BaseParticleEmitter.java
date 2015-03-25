// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.emitter;


// Referenced classes of package org.andengine.entity.particle.emitter:
//            IParticleEmitter

public abstract class BaseParticleEmitter
    implements IParticleEmitter
{

    protected float mCenterX;
    protected float mCenterY;

    public BaseParticleEmitter(float f, float f1)
    {
        mCenterX = f;
        mCenterY = f1;
    }

    public float getCenterX()
    {
        return mCenterX;
    }

    public float getCenterY()
    {
        return mCenterY;
    }

    public void onUpdate(float f)
    {
    }

    public void reset()
    {
    }

    public void setCenter(float f, float f1)
    {
        mCenterX = f;
        mCenterY = f1;
    }

    public void setCenterX(float f)
    {
        mCenterX = f;
    }

    public void setCenterY(float f)
    {
        mCenterY = f;
    }
}
