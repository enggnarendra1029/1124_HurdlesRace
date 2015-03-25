// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.emitter;

import android.util.FloatMath;
import java.util.Random;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.entity.particle.emitter:
//            BaseCircleParticleEmitter

public class CircleParticleEmitter extends BaseCircleParticleEmitter
{

    public CircleParticleEmitter(float f, float f1, float f2)
    {
        super(f, f1, f2);
    }

    public CircleParticleEmitter(float f, float f1, float f2, float f3)
    {
        super(f, f1, f2, f3);
    }

    public void getPositionOffset(float af[])
    {
        float f = 2.0F * (3.141593F * MathUtils.RANDOM.nextFloat());
        af[0] = mCenterX + FloatMath.cos(f) * mRadiusX * MathUtils.RANDOM.nextFloat();
        af[1] = mCenterY + FloatMath.sin(f) * mRadiusY * MathUtils.RANDOM.nextFloat();
    }
}
