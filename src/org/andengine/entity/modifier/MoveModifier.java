// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            DoubleValueSpanEntityModifier, IEntityModifier

public class MoveModifier extends DoubleValueSpanEntityModifier
{

    public MoveModifier(float f, float f1, float f2, float f3, float f4)
    {
        this(f, f1, f2, f3, f4, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public MoveModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, f2, f3, f4, ientitymodifierlistener, EaseLinear.getInstance());
    }

    public MoveModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, ientitymodifierlistener, ieasefunction);
    }

    public MoveModifier(float f, float f1, float f2, float f3, float f4, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, null, ieasefunction);
    }

    protected MoveModifier(MoveModifier movemodifier)
    {
        super(movemodifier);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public MoveModifier deepCopy()
    {
        return new MoveModifier(this);
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    protected volatile void onSetInitialValues(Object obj, float f, float f1)
    {
        onSetInitialValues((IEntity)obj, f, f1);
    }

    protected void onSetInitialValues(IEntity ientity, float f, float f1)
    {
        ientity.setPosition(f, f1);
    }

    protected volatile void onSetValues(Object obj, float f, float f1, float f2)
    {
        onSetValues((IEntity)obj, f, f1, f2);
    }

    protected void onSetValues(IEntity ientity, float f, float f1, float f2)
    {
        ientity.setPosition(f1, f2);
    }
}
