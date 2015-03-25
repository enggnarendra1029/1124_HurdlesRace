// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.BaseDoubleValueSpanModifier;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public abstract class DoubleValueSpanEntityModifier extends BaseDoubleValueSpanModifier
    implements IEntityModifier
{

    public DoubleValueSpanEntityModifier(float f, float f1, float f2, float f3, float f4)
    {
        super(f, f1, f2, f3, f4);
    }

    public DoubleValueSpanEntityModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, f2, f3, f4, ientitymodifierlistener);
    }

    public DoubleValueSpanEntityModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, ientitymodifierlistener, ieasefunction);
    }

    public DoubleValueSpanEntityModifier(float f, float f1, float f2, float f3, float f4, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, ieasefunction);
    }

    protected DoubleValueSpanEntityModifier(DoubleValueSpanEntityModifier doublevaluespanentitymodifier)
    {
        super(doublevaluespanentitymodifier);
    }
}
