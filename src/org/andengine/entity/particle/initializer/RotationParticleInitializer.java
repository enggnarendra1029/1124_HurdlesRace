// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.entity.IEntity;
import org.andengine.entity.particle.Particle;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            BaseSingleValueParticleInitializer

public class RotationParticleInitializer extends BaseSingleValueParticleInitializer
{

    public RotationParticleInitializer(float f)
    {
        this(f, f);
    }

    public RotationParticleInitializer(float f, float f1)
    {
        super(f, f1);
    }

    public float getMaxRotation()
    {
        return mMaxValue;
    }

    public float getMinRotation()
    {
        return mMinValue;
    }

    public void onInitializeParticle(Particle particle, float f)
    {
        particle.getEntity().setRotation(f);
    }

    public void setRotation(float f)
    {
        mMinValue = f;
        mMaxValue = f;
    }

    public void setRotation(float f, float f1)
    {
        mMinValue = f;
        mMaxValue = f1;
    }
}
