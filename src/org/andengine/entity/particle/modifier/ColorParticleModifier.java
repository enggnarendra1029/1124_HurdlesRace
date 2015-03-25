// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import org.andengine.entity.IEntity;
import org.andengine.entity.particle.Particle;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.particle.modifier:
//            BaseTripleValueSpanParticleModifier

public class ColorParticleModifier extends BaseTripleValueSpanParticleModifier
{

    public ColorParticleModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7)
    {
        this(f, f1, f2, f3, f4, f5, f6, f7, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ColorParticleModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, f5, f6, f7, ieasefunction);
    }

    protected void onSetInitialValues(Particle particle, float f, float f1, float f2)
    {
        particle.getEntity().setColor(f, f1, f2);
    }

    protected void onSetValues(Particle particle, float f, float f1, float f2, float f3)
    {
        particle.getEntity().setColor(f1, f2, f3);
    }
}
