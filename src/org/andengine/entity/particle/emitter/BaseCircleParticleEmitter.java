// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.emitter;


// Referenced classes of package org.andengine.entity.particle.emitter:
//            BaseParticleEmitter

public abstract class BaseCircleParticleEmitter extends BaseParticleEmitter
{

    protected float mRadiusX;
    protected float mRadiusY;

    public BaseCircleParticleEmitter(float f, float f1, float f2)
    {
        this(f, f1, f2, f2);
    }

    public BaseCircleParticleEmitter(float f, float f1, float f2, float f3)
    {
        super(f, f1);
        setRadiusX(f2);
        setRadiusY(f3);
    }

    public float getRadiusX()
    {
        return mRadiusX;
    }

    public float getRadiusY()
    {
        return mRadiusY;
    }

    public void setRadius(float f)
    {
        mRadiusX = f;
        mRadiusY = f;
    }

    public void setRadius(float f, float f1)
    {
        mRadiusX = f;
        mRadiusY = f1;
    }

    public void setRadiusX(float f)
    {
        mRadiusX = f;
    }

    public void setRadiusY(float f)
    {
        mRadiusY = f;
    }
}
