// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.entity.particle.Particle;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            BaseDoubleValueParticleInitializer

public abstract class BaseTripleValueParticleInitializer extends BaseDoubleValueParticleInitializer
{

    protected float mMaxValueC;
    protected float mMinValueC;

    public BaseTripleValueParticleInitializer(float f, float f1, float f2, float f3, float f4, float f5)
    {
        super(f, f1, f2, f3);
        mMinValueC = f4;
        mMaxValueC = f5;
    }

    protected float getRandomValueC()
    {
        if (mMinValueC == mMaxValueC)
        {
            return mMaxValueC;
        } else
        {
            return MathUtils.random(mMinValueC, mMaxValueC);
        }
    }

    protected final void onInitializeParticle(Particle particle, float f, float f1)
    {
        onInitializeParticle(particle, f, f1, getRandomValueC());
    }

    protected abstract void onInitializeParticle(Particle particle, float f, float f1, float f2);
}
