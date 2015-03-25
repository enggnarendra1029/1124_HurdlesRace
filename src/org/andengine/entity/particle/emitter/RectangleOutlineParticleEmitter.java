// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.emitter;

import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.entity.particle.emitter:
//            BaseRectangleParticleEmitter

public class RectangleOutlineParticleEmitter extends BaseRectangleParticleEmitter
{

    public RectangleOutlineParticleEmitter(float f, float f1, float f2, float f3)
    {
        super(f, f1, f2, f3);
    }

    public void getPositionOffset(float af[])
    {
        af[0] = mCenterX + (float)MathUtils.randomSign() * mWidthHalf;
        af[1] = mCenterY + (float)MathUtils.randomSign() * mHeightHalf;
    }
}
