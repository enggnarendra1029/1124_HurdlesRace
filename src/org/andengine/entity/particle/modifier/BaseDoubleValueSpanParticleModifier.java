// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import org.andengine.entity.particle.Particle;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.particle.modifier:
//            BaseSingleValueSpanParticleModifier

public abstract class BaseDoubleValueSpanParticleModifier extends BaseSingleValueSpanParticleModifier
{

    private float mFromValueB;
    private float mValueSpanB;

    public BaseDoubleValueSpanParticleModifier(float f, float f1, float f2, float f3, float f4, float f5)
    {
        this(f, f1, f2, f3, f4, f5, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public BaseDoubleValueSpanParticleModifier(float f, float f1, float f2, float f3, float f4, float f5, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, ieasefunction);
        mFromValueB = f4;
        mValueSpanB = f5 - f4;
    }

    public void onSetInitialValue(Particle particle, float f)
    {
        onSetInitialValues(particle, f, mFromValueB);
    }

    protected abstract void onSetInitialValues(Particle particle, float f, float f1);

    protected void onSetValue(Particle particle, float f, float f1)
    {
        onSetValues(particle, f, f1, mFromValueB + f * mValueSpanB);
    }

    protected abstract void onSetValues(Particle particle, float f, float f1, float f2);

    public void reset(float f, float f1, float f2, float f3)
    {
        super.reset(f, f1, f2, f3);
    }

    public void reset(float f, float f1, float f2, float f3, float f4, float f5)
    {
        super.reset(f, f1, f4, f5);
        mFromValueB = f2;
        mValueSpanB = f3 - f2;
    }
}
