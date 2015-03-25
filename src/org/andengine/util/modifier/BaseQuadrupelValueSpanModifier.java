// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.util.modifier:
//            BaseTripleValueSpanModifier

public abstract class BaseQuadrupelValueSpanModifier extends BaseTripleValueSpanModifier
{

    private float mFromValueD;
    private float mValueSpanD;

    public BaseQuadrupelValueSpanModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, float f8, IModifier.IModifierListener imodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, f5, f6, imodifierlistener, ieasefunction);
        mFromValueD = f7;
        mValueSpanD = f8 - f7;
    }

    public BaseQuadrupelValueSpanModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, float f8, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, f6, f7, f8, null, ieasefunction);
    }

    protected BaseQuadrupelValueSpanModifier(BaseQuadrupelValueSpanModifier basequadrupelvaluespanmodifier)
    {
        super(basequadrupelvaluespanmodifier);
        mFromValueD = basequadrupelvaluespanmodifier.mFromValueD;
        mValueSpanD = basequadrupelvaluespanmodifier.mValueSpanD;
    }

    protected void onSetInitialValues(Object obj, float f, float f1, float f2)
    {
        onSetInitialValues(obj, f, f1, f2, mFromValueD);
    }

    protected abstract void onSetInitialValues(Object obj, float f, float f1, float f2, float f3);

    protected void onSetValues(Object obj, float f, float f1, float f2, float f3)
    {
        onSetValues(obj, f, f1, f2, f3, mFromValueD + f * mValueSpanD);
    }

    protected abstract void onSetValues(Object obj, float f, float f1, float f2, float f3, float f4);

    public void reset(float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        super.reset(f, f1, f2, f3, f4, f5, f6);
    }

    public void reset(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, float f8)
    {
        super.reset(f, f1, f2, f3, f4, f5, f6);
        mFromValueD = f7;
        mValueSpanD = f8 - f7;
    }
}
