// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;


// Referenced classes of package org.andengine.util.modifier:
//            BaseSingleValueChangeModifier

public abstract class BaseDoubleValueChangeModifier extends BaseSingleValueChangeModifier
{

    private float mValueChangeBPerSecond;

    public BaseDoubleValueChangeModifier(float f, float f1, float f2)
    {
        this(f, f1, f2, null);
    }

    public BaseDoubleValueChangeModifier(float f, float f1, float f2, IModifier.IModifierListener imodifierlistener)
    {
        super(f, f1, imodifierlistener);
        mValueChangeBPerSecond = f2 / f;
    }

    protected BaseDoubleValueChangeModifier(BaseDoubleValueChangeModifier basedoublevaluechangemodifier)
    {
        super(basedoublevaluechangemodifier);
        mValueChangeBPerSecond = basedoublevaluechangemodifier.mValueChangeBPerSecond;
    }

    protected void onChangeValue(float f, Object obj, float f1)
    {
        onChangeValues(f, obj, f1, f * mValueChangeBPerSecond);
    }

    protected abstract void onChangeValues(float f, Object obj, float f1, float f2);
}
