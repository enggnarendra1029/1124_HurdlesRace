// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.engine.handler.physics.PhysicsHandler;
import org.andengine.entity.particle.Particle;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            BaseDoubleValueParticleInitializer

public class VelocityParticleInitializer extends BaseDoubleValueParticleInitializer
{

    public VelocityParticleInitializer(float f)
    {
        this(f, f, f, f);
    }

    public VelocityParticleInitializer(float f, float f1)
    {
        this(f, f, f1, f1);
    }

    public VelocityParticleInitializer(float f, float f1, float f2, float f3)
    {
        super(f, f1, f2, f3);
    }

    public float getMaxVelocityX()
    {
        return mMaxValue;
    }

    public float getMaxVelocityY()
    {
        return mMaxValueB;
    }

    public float getMinVelocityX()
    {
        return mMinValue;
    }

    public float getMinVelocityY()
    {
        return mMinValueB;
    }

    public void onInitializeParticle(Particle particle, float f, float f1)
    {
        particle.getPhysicsHandler().setVelocity(f, f1);
    }

    public void setVelocity(float f, float f1, float f2, float f3)
    {
        mMinValue = f;
        mMaxValue = f1;
        mMinValueB = f2;
        mMaxValueB = f3;
    }

    public void setVelocityX(float f)
    {
        mMinValue = f;
        mMaxValue = f;
    }

    public void setVelocityX(float f, float f1)
    {
        mMinValue = f;
        mMaxValue = f1;
    }

    public void setVelocityY(float f)
    {
        mMinValueB = f;
        mMaxValueB = f;
    }

    public void setVelocityY(float f, float f1)
    {
        mMinValueB = f;
        mMaxValueB = f1;
    }
}
