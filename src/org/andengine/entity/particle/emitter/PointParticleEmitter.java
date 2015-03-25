// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.emitter;


// Referenced classes of package org.andengine.entity.particle.emitter:
//            BaseParticleEmitter

public class PointParticleEmitter extends BaseParticleEmitter
{

    public PointParticleEmitter(float f, float f1)
    {
        super(f, f1);
    }

    public void getPositionOffset(float af[])
    {
        af[0] = mCenterX;
        af[1] = mCenterY;
    }
}
