// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.entity.particle.Particle;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            BaseSingleValueParticleInitializer

public abstract class BaseDoubleValueParticleInitializer extends BaseSingleValueParticleInitializer
{

    protected float mMaxValueB;
    protected float mMinValueB;

    public BaseDoubleValueParticleInitializer(float f, float f1, float f2, float f3)
    {
        super(f, f1);
        mMinValueB = f2;
        mMaxValueB = f3;
    }

    protected float getRandomValueB()
    {
        if (mMinValueB == mMaxValueB)
        {
            return mMaxValueB;
        } else
        {
            return MathUtils.random(mMinValueB, mMaxValueB);
        }
    }

    protected final void onInitializeParticle(Particle particle, float f)
    {
        onInitializeParticle(particle, f, getRandomValueB());
    }

    protected abstract void onInitializeParticle(Particle particle, float f, float f1);
}
