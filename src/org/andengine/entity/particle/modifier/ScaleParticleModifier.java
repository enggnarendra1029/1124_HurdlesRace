// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import org.andengine.entity.IEntity;
import org.andengine.entity.particle.Particle;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.particle.modifier:
//            BaseDoubleValueSpanParticleModifier

public class ScaleParticleModifier extends BaseDoubleValueSpanParticleModifier
{

    public ScaleParticleModifier(float f, float f1, float f2, float f3)
    {
        this(f, f1, f2, f3, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleParticleModifier(float f, float f1, float f2, float f3, float f4, float f5)
    {
        this(f, f1, f2, f3, f4, f5, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleParticleModifier(float f, float f1, float f2, float f3, float f4, float f5, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, f5, ieasefunction);
    }

    public ScaleParticleModifier(float f, float f1, float f2, float f3, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f2, f3, ieasefunction);
    }

    protected void onSetInitialValues(Particle particle, float f, float f1)
    {
        particle.getEntity().setScale(f, f1);
    }

    protected void onSetValues(Particle particle, float f, float f1, float f2)
    {
        particle.getEntity().setScale(f1, f2);
    }
}
