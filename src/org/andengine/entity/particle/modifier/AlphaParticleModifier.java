// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import org.andengine.entity.IEntity;
import org.andengine.entity.particle.Particle;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.particle.modifier:
//            BaseSingleValueSpanParticleModifier

public class AlphaParticleModifier extends BaseSingleValueSpanParticleModifier
{

    public AlphaParticleModifier(float f, float f1, float f2, float f3)
    {
        this(f, f1, f2, f3, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public AlphaParticleModifier(float f, float f1, float f2, float f3, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, ieasefunction);
    }

    protected void onSetInitialValue(Particle particle, float f)
    {
        particle.getEntity().setAlpha(f);
    }

    protected void onSetValue(Particle particle, float f, float f1)
    {
        particle.getEntity().setAlpha(f1);
    }
}
