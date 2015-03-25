// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            DurationEntityModifier, IEntityModifier

public class CubicBezierCurveMoveModifier extends DurationEntityModifier
{

    private final IEaseFunction mEaseFunction;
    private final float mX1;
    private final float mX2;
    private final float mX3;
    private final float mX4;
    private final float mY1;
    private final float mY2;
    private final float mY3;
    private final float mY4;

    public CubicBezierCurveMoveModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, float f8)
    {
        this(f, f1, f2, f3, f4, f5, f6, f7, f8, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public CubicBezierCurveMoveModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, float f8, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, f1, f2, f3, f4, f5, f6, f7, f8, ientitymodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public CubicBezierCurveMoveModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, float f8, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, ientitymodifierlistener);
        mX1 = f1;
        mY1 = f2;
        mX2 = f3;
        mY2 = f4;
        mX3 = f5;
        mY3 = f6;
        mX4 = f7;
        mY4 = f8;
        mEaseFunction = ieasefunction;
    }

    public CubicBezierCurveMoveModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, float f8, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, f6, f7, f8, null, ieasefunction);
    }

    public CubicBezierCurveMoveModifier deepCopy()
    {
        return new CubicBezierCurveMoveModifier(mDuration, mX1, mY1, mX2, mY2, mX3, mY3, mX4, mY4, mEaseFunction);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    protected volatile void onManagedInitialize(Object obj)
    {
        onManagedInitialize((IEntity)obj);
    }

    protected void onManagedInitialize(IEntity ientity)
    {
    }

    protected volatile void onManagedUpdate(float f, Object obj)
    {
        onManagedUpdate(f, (IEntity)obj);
    }

    protected void onManagedUpdate(float f, IEntity ientity)
    {
        float f1 = mEaseFunction.getPercentage(getSecondsElapsed(), mDuration);
        float f2 = 1.0F - f1;
        float f3 = f1 * f1;
        float f4 = f2 * f2;
        float f5 = f4 * f2;
        float f6 = f3 * f1;
        float f7 = f1 * (3F * f4);
        float f8 = f3 * (3F * f2);
        ientity.setPosition(f5 * mX1 + f7 * mX2 + f8 * mX3 + f6 * mX4, f5 * mY1 + f7 * mY2 + f8 * mY3 + f6 * mY4);
    }
}
