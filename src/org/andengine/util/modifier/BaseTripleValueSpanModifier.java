// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.util.modifier:
//            BaseDoubleValueSpanModifier

public abstract class BaseTripleValueSpanModifier extends BaseDoubleValueSpanModifier
{

    private float mFromValueC;
    private float mValueSpanC;

    public BaseTripleValueSpanModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IModifier.IModifierListener imodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, imodifierlistener, ieasefunction);
        mFromValueC = f5;
        mValueSpanC = f6 - f5;
    }

    public BaseTripleValueSpanModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, f6, null, ieasefunction);
    }

    protected BaseTripleValueSpanModifier(BaseTripleValueSpanModifier basetriplevaluespanmodifier)
    {
        super(basetriplevaluespanmodifier);
        mFromValueC = basetriplevaluespanmodifier.mFromValueC;
        mValueSpanC = basetriplevaluespanmodifier.mValueSpanC;
    }

    public float getFromValueC()
    {
        return mFromValueC;
    }

    public float getToValueC()
    {
        return mFromValueC + mValueSpanC;
    }

    protected void onSetInitialValues(Object obj, float f, float f1)
    {
        onSetInitialValues(obj, f, f1, mFromValueC);
    }

    protected abstract void onSetInitialValues(Object obj, float f, float f1, float f2);

    protected void onSetValues(Object obj, float f, float f1, float f2)
    {
        onSetValues(obj, f, f1, f2, mFromValueC + f * mValueSpanC);
    }

    protected abstract void onSetValues(Object obj, float f, float f1, float f2, float f3);

    public void reset(float f, float f1, float f2, float f3, float f4)
    {
        super.reset(f, f1, f2, f3, f4);
    }

    public void reset(float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        super.reset(f, f1, f2, f3, f4);
        mFromValueC = f5;
        mValueSpanC = f6 - f5;
    }
}
