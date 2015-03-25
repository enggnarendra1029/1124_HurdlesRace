// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.entity.particle.Particle;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            IParticleInitializer

public abstract class BaseSingleValueParticleInitializer
    implements IParticleInitializer
{

    protected float mMaxValue;
    protected float mMinValue;

    public BaseSingleValueParticleInitializer(float f, float f1)
    {
        mMinValue = f;
        mMaxValue = f1;
    }

    protected float getRandomValue()
    {
        if (mMinValue == mMaxValue)
        {
            return mMaxValue;
        } else
        {
            return MathUtils.random(mMinValue, mMaxValue);
        }
    }

    public final void onInitializeParticle(Particle particle)
    {
        onInitializeParticle(particle, getRandomValue());
    }

    protected abstract void onInitializeParticle(Particle particle, float f);
}
