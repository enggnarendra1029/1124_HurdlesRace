// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.BaseSingleValueChangeModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public abstract class SingleValueChangeEntityModifier extends BaseSingleValueChangeModifier
    implements IEntityModifier
{

    public SingleValueChangeEntityModifier(float f, float f1)
    {
        super(f, f1);
    }

    public SingleValueChangeEntityModifier(float f, float f1, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, ientitymodifierlistener);
    }

    protected SingleValueChangeEntityModifier(SingleValueChangeEntityModifier singlevaluechangeentitymodifier)
    {
        super(singlevaluechangeentitymodifier);
    }
}
