// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import org.andengine.entity.particle.Particle;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.particle.modifier:
//            BaseDoubleValueSpanParticleModifier

public abstract class BaseTripleValueSpanParticleModifier extends BaseDoubleValueSpanParticleModifier
{

    private float mFromValueC;
    private float mValueSpanC;

    public BaseTripleValueSpanParticleModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7)
    {
        this(f, f1, f2, f3, f4, f5, f6, f7, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public BaseTripleValueSpanParticleModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, f5, ieasefunction);
        mFromValueC = f6;
        mValueSpanC = f7 - f6;
    }

    public void onSetInitialValues(Particle particle, float f, float f1)
    {
        onSetInitialValues(particle, f, f1, mFromValueC);
    }

    protected abstract void onSetInitialValues(Particle particle, float f, float f1, float f2);

    protected void onSetValues(Particle particle, float f, float f1, float f2)
    {
        onSetValues(particle, f, f1, f2, mFromValueC + f * mValueSpanC);
    }

    protected abstract void onSetValues(Particle particle, float f, float f1, float f2, float f3);

    public void reset(float f, float f1, float f2, float f3, float f4, float f5)
    {
        super.reset(f, f1, f2, f3, f4, f5);
    }

    public void reset(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7)
    {
        super.reset(f, f1, f2, f3, f6, f7);
        mFromValueC = f4;
        mValueSpanC = f5 - f4;
    }
}
