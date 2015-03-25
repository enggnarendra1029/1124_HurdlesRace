// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import org.andengine.entity.particle.Particle;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.particle.modifier:
//            IParticleModifier

public abstract class BaseSingleValueSpanParticleModifier
    implements IParticleModifier
{

    private float mDuration;
    private final IEaseFunction mEaseFunction;
    private float mFromTime;
    private float mFromValue;
    private float mToTime;
    private float mValueSpan;

    public BaseSingleValueSpanParticleModifier(float f, float f1, float f2, float f3)
    {
        this(f, f1, f2, f3, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public BaseSingleValueSpanParticleModifier(float f, float f1, float f2, float f3, IEaseFunction ieasefunction)
    {
        mFromTime = f;
        mToTime = f1;
        mDuration = f1 - f;
        mFromValue = f2;
        mValueSpan = f3 - f2;
        mEaseFunction = ieasefunction;
    }

    public void onInitializeParticle(Particle particle)
    {
        onSetInitialValue(particle, mFromValue);
    }

    protected abstract void onSetInitialValue(Particle particle, float f);

    protected abstract void onSetValue(Particle particle, float f, float f1);

    public void onUpdateParticle(Particle particle)
    {
        float f = particle.getLifeTime();
        if (f > mFromTime && f < mToTime)
        {
            float f1 = mEaseFunction.getPercentage(f - mFromTime, mDuration);
            onSetValue(particle, f1, mFromValue + f1 * mValueSpan);
        }
    }

    public void reset(float f, float f1, float f2, float f3)
    {
        mFromValue = f;
        mFromTime = f2;
        mToTime = f3;
        mValueSpan = f1 - f;
        mDuration = f3 - f2;
    }
}
