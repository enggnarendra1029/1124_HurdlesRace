// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.emitter;

import java.util.Random;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.entity.particle.emitter:
//            BaseRectangleParticleEmitter

public class RectangleParticleEmitter extends BaseRectangleParticleEmitter
{

    public RectangleParticleEmitter(float f, float f1, float f2, float f3)
    {
        super(f, f1, f2, f3);
    }

    public void getPositionOffset(float af[])
    {
        af[0] = (mCenterX - mWidthHalf) + MathUtils.RANDOM.nextFloat() * mWidth;
        af[1] = (mCenterY - mHeightHalf) + MathUtils.RANDOM.nextFloat() * mHeight;
    }
}
