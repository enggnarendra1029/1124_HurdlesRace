// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.emitter;


// Referenced classes of package org.andengine.entity.particle.emitter:
//            BaseParticleEmitter

public abstract class BaseRectangleParticleEmitter extends BaseParticleEmitter
{

    protected float mHeight;
    protected float mHeightHalf;
    protected float mWidth;
    protected float mWidthHalf;

    public BaseRectangleParticleEmitter(float f, float f1, float f2)
    {
        this(f, f1, f2, f2);
    }

    public BaseRectangleParticleEmitter(float f, float f1, float f2, float f3)
    {
        super(f, f1);
        setWidth(f2);
        setHeight(f3);
    }

    public float getHeight()
    {
        return mHeight;
    }

    public float getWidth()
    {
        return mWidth;
    }

    public void setHeight(float f)
    {
        mHeight = f;
        mHeightHalf = 0.5F * f;
    }

    public void setWidth(float f)
    {
        mWidth = f;
        mWidthHalf = 0.5F * f;
    }
}
