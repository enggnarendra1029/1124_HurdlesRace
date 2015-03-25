// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import java.util.Random;
import org.andengine.entity.particle.Particle;
import org.andengine.entity.particle.initializer.IParticleInitializer;
import org.andengine.util.math.MathUtils;

public class ExpireParticleInitializer
    implements IParticleInitializer
{

    private float mMaxLifeTime;
    private float mMinLifeTime;

    public ExpireParticleInitializer(float f)
    {
        this(f, f);
    }

    public ExpireParticleInitializer(float f, float f1)
    {
        mMinLifeTime = f;
        mMaxLifeTime = f1;
    }

    public float getMaxLifeTime()
    {
        return mMaxLifeTime;
    }

    public float getMinLifeTime()
    {
        return mMinLifeTime;
    }

    public void onInitializeParticle(Particle particle)
    {
        particle.setExpireTime(MathUtils.RANDOM.nextFloat() * (mMaxLifeTime - mMinLifeTime) + mMinLifeTime);
    }

    public void setLifeTime(float f)
    {
        mMinLifeTime = f;
        mMaxLifeTime = f;
    }

    public void setLifeTime(float f, float f1)
    {
        mMinLifeTime = f;
        mMaxLifeTime = f1;
    }
}
