// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.entity.IEntity;
import org.andengine.entity.particle.Particle;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            BaseTripleValueParticleInitializer

public class ColorParticleInitializer extends BaseTripleValueParticleInitializer
{

    public ColorParticleInitializer(float f, float f1, float f2)
    {
        super(f, f, f1, f1, f2, f2);
    }

    public ColorParticleInitializer(float f, float f1, float f2, float f3, float f4, float f5)
    {
        super(f, f1, f2, f3, f4, f5);
    }

    public ColorParticleInitializer(Color color)
    {
        super(color.getRed(), color.getRed(), color.getGreen(), color.getGreen(), color.getBlue(), color.getBlue());
    }

    public ColorParticleInitializer(Color color, Color color1)
    {
        super(color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue());
    }

    protected void onInitializeParticle(Particle particle, float f, float f1, float f2)
    {
        particle.getEntity().setColor(f, f1, f2);
    }
}
