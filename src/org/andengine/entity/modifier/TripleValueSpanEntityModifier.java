// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.BaseTripleValueSpanModifier;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public abstract class TripleValueSpanEntityModifier extends BaseTripleValueSpanModifier
    implements IEntityModifier
{

    public TripleValueSpanEntityModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, f5, f6, ientitymodifierlistener, ieasefunction);
    }

    public TripleValueSpanEntityModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, f5, f6, ieasefunction);
    }

    protected TripleValueSpanEntityModifier(TripleValueSpanEntityModifier triplevaluespanentitymodifier)
    {
        super(triplevaluespanentitymodifier);
    }
}
