// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.entity.IEntity;
import org.andengine.entity.particle.Particle;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            BaseSingleValueParticleInitializer

public class AlphaParticleInitializer extends BaseSingleValueParticleInitializer
{

    public AlphaParticleInitializer(float f)
    {
        super(f, f);
    }

    public AlphaParticleInitializer(float f, float f1)
    {
        super(f, f1);
    }

    protected void onInitializeParticle(Particle particle, float f)
    {
        particle.getEntity().setAlpha(f);
    }
}
