// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;


// Referenced classes of package org.andengine.util.modifier:
//            BaseDurationModifier

public abstract class BaseSingleValueChangeModifier extends BaseDurationModifier
{

    private final float mValueChangePerSecond;

    public BaseSingleValueChangeModifier(float f, float f1)
    {
        this(f, f1, null);
    }

    public BaseSingleValueChangeModifier(float f, float f1, IModifier.IModifierListener imodifierlistener)
    {
        super(f, imodifierlistener);
        mValueChangePerSecond = f1 / f;
    }

    protected BaseSingleValueChangeModifier(BaseSingleValueChangeModifier basesinglevaluechangemodifier)
    {
        super(basesinglevaluechangemodifier);
        mValueChangePerSecond = basesinglevaluechangemodifier.mValueChangePerSecond;
    }

    protected abstract void onChangeValue(float f, Object obj, float f1);

    protected void onManagedInitialize(Object obj)
    {
    }

    protected void onManagedUpdate(float f, Object obj)
    {
        onChangeValue(f, obj, f * mValueChangePerSecond);
    }
}
