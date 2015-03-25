// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.BaseDoubleValueChangeModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public abstract class DoubleValueChangeEntityModifier extends BaseDoubleValueChangeModifier
    implements IEntityModifier
{

    public DoubleValueChangeEntityModifier(float f, float f1, float f2)
    {
        super(f, f1, f2);
    }

    public DoubleValueChangeEntityModifier(float f, float f1, float f2, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, f2, ientitymodifierlistener);
    }

    public DoubleValueChangeEntityModifier(DoubleValueChangeEntityModifier doublevaluechangeentitymodifier)
    {
        super(doublevaluechangeentitymodifier);
    }
}
