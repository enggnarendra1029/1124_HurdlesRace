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

public class QuadraticBezierCurveMoveModifier extends DurationEntityModifier
{

    private final IEaseFunction mEaseFunction;
    private final float mX1;
    private final float mX2;
    private final float mX3;
    private final float mY1;
    private final float mY2;
    private final float mY3;

    public QuadraticBezierCurveMoveModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        this(f, f1, f2, f3, f4, f5, f6, ((IEaseFunction) (EaseLinear.getInstance())), null);
    }

    public QuadraticBezierCurveMoveModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, f1, f2, f3, f4, f5, f6, ((IEaseFunction) (EaseLinear.getInstance())), ientitymodifierlistener);
    }

    public QuadraticBezierCurveMoveModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, f6, ieasefunction, null);
    }

    public QuadraticBezierCurveMoveModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEaseFunction ieasefunction, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, ientitymodifierlistener);
        mX1 = f1;
        mY1 = f2;
        mX2 = f3;
        mY2 = f4;
        mX3 = f5;
        mY3 = f6;
        mEaseFunction = ieasefunction;
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public QuadraticBezierCurveMoveModifier deepCopy()
    {
        return new QuadraticBezierCurveMoveModifier(mDuration, mX1, mY1, mX2, mY2, mX3, mY3, mEaseFunction);
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
        float f5 = f1 * (2.0F * f2);
        ientity.setPosition(f4 * mX1 + f5 * mX2 + f3 * mX3, f4 * mY1 + f5 * mY2 + f3 * mY3);
    }
}
