// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import org.andengine.entity.particle.Particle;
import org.andengine.entity.particle.initializer.IParticleInitializer;

public interface IParticleModifier
    extends IParticleInitializer
{

    public abstract void onUpdateParticle(Particle particle);
}
