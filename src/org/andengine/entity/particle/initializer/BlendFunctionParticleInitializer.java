// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.initializer;

import org.andengine.entity.particle.Particle;
import org.andengine.entity.shape.IShape;

// Referenced classes of package org.andengine.entity.particle.initializer:
//            IParticleInitializer

public class BlendFunctionParticleInitializer
    implements IParticleInitializer
{

    protected int mBlendFunctionDestination;
    protected int mBlendFunctionSource;

    public BlendFunctionParticleInitializer(int i, int j)
    {
        mBlendFunctionSource = i;
        mBlendFunctionDestination = j;
    }

    public void onInitializeParticle(Particle particle)
    {
        ((IShape)particle.getEntity()).setBlendFunction(mBlendFunctionSource, mBlendFunctionDestination);
    }
}
