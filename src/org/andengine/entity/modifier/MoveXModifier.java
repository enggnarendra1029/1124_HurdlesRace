// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            SingleValueSpanEntityModifier, IEntityModifier

public class MoveXModifier extends SingleValueSpanEntityModifier
{

    public MoveXModifier(float f, float f1, float f2)
    {
        this(f, f1, f2, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public MoveXModifier(float f, float f1, float f2, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, f2, ientitymodifierlistener, EaseLinear.getInstance());
    }

    public MoveXModifier(float f, float f1, float f2, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, ientitymodifierlistener, ieasefunction);
    }

    public MoveXModifier(float f, float f1, float f2, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, null, ieasefunction);
    }

    protected MoveXModifier(MoveXModifier movexmodifier)
    {
        super(movexmodifier);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public MoveXModifier deepCopy()
    {
        return new MoveXModifier(this);
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    protected volatile void onSetInitialValue(Object obj, float f)
    {
        onSetInitialValue((IEntity)obj, f);
    }

    protected void onSetInitialValue(IEntity ientity, float f)
    {
        ientity.setX(f);
    }

    protected volatile void onSetValue(Object obj, float f, float f1)
    {
        onSetValue((IEntity)obj, f, f1);
    }

    protected void onSetValue(IEntity ientity, float f, float f1)
    {
        ientity.setX(f1);
    }
}
