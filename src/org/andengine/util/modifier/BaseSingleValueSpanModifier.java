// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.util.modifier:
//            BaseDurationModifier

public abstract class BaseSingleValueSpanModifier extends BaseDurationModifier
{

    protected final IEaseFunction mEaseFunction;
    private float mFromValue;
    private float mValueSpan;

    public BaseSingleValueSpanModifier(float f, float f1, float f2)
    {
        this(f, f1, f2, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public BaseSingleValueSpanModifier(float f, float f1, float f2, IModifier.IModifierListener imodifierlistener)
    {
        this(f, f1, f2, imodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public BaseSingleValueSpanModifier(float f, float f1, float f2, IModifier.IModifierListener imodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, imodifierlistener);
        mFromValue = f1;
        mValueSpan = f2 - f1;
        mEaseFunction = ieasefunction;
    }

    public BaseSingleValueSpanModifier(float f, float f1, float f2, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, null, ieasefunction);
    }

    protected BaseSingleValueSpanModifier(BaseSingleValueSpanModifier basesinglevaluespanmodifier)
    {
        super(basesinglevaluespanmodifier);
        mFromValue = basesinglevaluespanmodifier.mFromValue;
        mValueSpan = basesinglevaluespanmodifier.mValueSpan;
        mEaseFunction = basesinglevaluespanmodifier.mEaseFunction;
    }

    public float getFromValue()
    {
        return mFromValue;
    }

    public float getToValue()
    {
        return mFromValue + mValueSpan;
    }

    protected void onManagedInitialize(Object obj)
    {
        onSetInitialValue(obj, mFromValue);
    }

    protected void onManagedUpdate(float f, Object obj)
    {
        float f1 = mEaseFunction.getPercentage(getSecondsElapsed(), mDuration);
        onSetValue(obj, f1, mFromValue + f1 * mValueSpan);
    }

    protected abstract void onSetInitialValue(Object obj, float f);

    protected abstract void onSetValue(Object obj, float f, float f1);

    public void reset(float f, float f1, float f2)
    {
        super.reset();
        mDuration = f;
        mFromValue = f1;
        mValueSpan = f2 - f1;
    }
}
