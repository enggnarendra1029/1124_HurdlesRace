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

public class ScaleModifier extends DoubleValueSpanEntityModifier
{

    public ScaleModifier(float f, float f1, float f2)
    {
        this(f, f1, f2, ((IEntityModifier.IEntityModifierListener) (null)), ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleModifier(float f, float f1, float f2, float f3, float f4)
    {
        this(f, f1, f2, f3, f4, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, f2, f3, f4, ientitymodifierlistener, EaseLinear.getInstance());
    }

    public ScaleModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, ientitymodifierlistener, ieasefunction);
    }

    public ScaleModifier(float f, float f1, float f2, float f3, float f4, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, null, ieasefunction);
    }

    public ScaleModifier(float f, float f1, float f2, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, f1, f2, f1, f2, ientitymodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleModifier(float f, float f1, float f2, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f1, f2, ientitymodifierlistener, ieasefunction);
    }

    public ScaleModifier(float f, float f1, float f2, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, ((IEntityModifier.IEntityModifierListener) (null)), ieasefunction);
    }

    protected ScaleModifier(ScaleModifier scalemodifier)
    {
        super(scalemodifier);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public ScaleModifier deepCopy()
    {
        return new ScaleModifier(this);
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
        ientity.setScale(f, f1);
    }

    protected volatile void onSetValues(Object obj, float f, float f1, float f2)
    {
        onSetValues((IEntity)obj, f, f1, f2);
    }

    protected void onSetValues(IEntity ientity, float f, float f1, float f2)
    {
        ientity.setScale(f1, f2);
    }
}
