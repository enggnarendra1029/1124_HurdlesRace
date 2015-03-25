// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.engine.handler.physics.PhysicsHandler;
import org.andengine.entity.particle.Particle;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            BaseDoubleValueParticleInitializer

public class AccelerationParticleInitializer extends BaseDoubleValueParticleInitializer
{

    public AccelerationParticleInitializer(float f)
    {
        this(f, f);
    }

    public AccelerationParticleInitializer(float f, float f1)
    {
        this(f, f, f1, f1);
    }

    public AccelerationParticleInitializer(float f, float f1, float f2, float f3)
    {
        super(f, f1, f2, f3);
    }

    public float getMaxAccelerationX()
    {
        return mMaxValue;
    }

    public float getMaxAccelerationY()
    {
        return mMaxValueB;
    }

    public float getMinAccelerationX()
    {
        return mMinValue;
    }

    public float getMinAccelerationY()
    {
        return mMinValueB;
    }

    public void onInitializeParticle(Particle particle, float f, float f1)
    {
        particle.getPhysicsHandler().accelerate(f, f1);
    }

    public void setAcceleration(float f, float f1, float f2, float f3)
    {
        mMinValue = f;
        mMaxValue = f1;
        mMinValueB = f2;
        mMaxValueB = f3;
    }

    public void setAccelerationX(float f)
    {
        mMinValue = f;
        mMaxValue = f;
    }

    public void setAccelerationX(float f, float f1)
    {
        mMinValue = f;
        mMaxValue = f1;
    }

    public void setAccelerationY(float f)
    {
        mMinValueB = f;
        mMaxValueB = f;
    }

    public void setAccelerationY(float f, float f1)
    {
        mMinValueB = f;
        mMaxValueB = f1;
    }
}
