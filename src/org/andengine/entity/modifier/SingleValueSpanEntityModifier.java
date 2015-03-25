// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.BaseSingleValueSpanModifier;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public abstract class SingleValueSpanEntityModifier extends BaseSingleValueSpanModifier
    implements IEntityModifier
{

    public SingleValueSpanEntityModifier(float f, float f1, float f2)
    {
        super(f, f1, f2);
    }

    public SingleValueSpanEntityModifier(float f, float f1, float f2, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, f2, ientitymodifierlistener);
    }

    public SingleValueSpanEntityModifier(float f, float f1, float f2, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, ientitymodifierlistener, ieasefunction);
    }

    public SingleValueSpanEntityModifier(float f, float f1, float f2, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, ieasefunction);
    }

    protected SingleValueSpanEntityModifier(SingleValueSpanEntityModifier singlevaluespanentitymodifier)
    {
        super(singlevaluespanentitymodifier);
    }
}
