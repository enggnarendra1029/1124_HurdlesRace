// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.util.modifier:
//            BaseSingleValueSpanModifier

public abstract class BaseDoubleValueSpanModifier extends BaseSingleValueSpanModifier
{

    private float mFromValueB;
    private float mValueSpanB;

    public BaseDoubleValueSpanModifier(float f, float f1, float f2, float f3, float f4)
    {
        this(f, f1, f2, f3, f4, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public BaseDoubleValueSpanModifier(float f, float f1, float f2, float f3, float f4, IModifier.IModifierListener imodifierlistener)
    {
        this(f, f1, f2, f3, f4, imodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public BaseDoubleValueSpanModifier(float f, float f1, float f2, float f3, float f4, IModifier.IModifierListener imodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, imodifierlistener, ieasefunction);
        mFromValueB = f3;
        mValueSpanB = f4 - f3;
    }

    public BaseDoubleValueSpanModifier(float f, float f1, float f2, float f3, float f4, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, null, ieasefunction);
    }

    protected BaseDoubleValueSpanModifier(BaseDoubleValueSpanModifier basedoublevaluespanmodifier)
    {
        super(basedoublevaluespanmodifier);
        mFromValueB = basedoublevaluespanmodifier.mFromValueB;
        mValueSpanB = basedoublevaluespanmodifier.mValueSpanB;
    }

    public float getFromValue()
    {
        return super.getFromValue();
    }

    public float getFromValueA()
    {
        return super.getFromValue();
    }

    public float getFromValueB()
    {
        return mFromValueB;
    }

    public float getToValue()
    {
        return super.getToValue();
    }

    public float getToValueA()
    {
        return super.getToValue();
    }

    public float getToValueB()
    {
        return mFromValueB + mValueSpanB;
    }

    protected void onSetInitialValue(Object obj, float f)
    {
        onSetInitialValues(obj, f, mFromValueB);
    }

    protected abstract void onSetInitialValues(Object obj, float f, float f1);

    protected void onSetValue(Object obj, float f, float f1)
    {
        onSetValues(obj, f, f1, mFromValueB + f * mValueSpanB);
    }

    protected abstract void onSetValues(Object obj, float f, float f1, float f2);

    public void reset(float f, float f1, float f2)
    {
        super.reset(f, f1, f2);
    }

    public void reset(float f, float f1, float f2, float f3, float f4)
    {
        super.reset(f, f1, f2);
        mFromValueB = f3;
        mValueSpanB = f4 - f3;
    }
}
