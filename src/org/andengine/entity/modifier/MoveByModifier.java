// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            DoubleValueChangeEntityModifier, IEntityModifier

public class MoveByModifier extends DoubleValueChangeEntityModifier
{

    public MoveByModifier(float f, float f1, float f2)
    {
        super(f, f1, f2);
    }

    public MoveByModifier(float f, float f1, float f2, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, f2, ientitymodifierlistener);
    }

    protected MoveByModifier(DoubleValueChangeEntityModifier doublevaluechangeentitymodifier)
    {
        super(doublevaluechangeentitymodifier);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public MoveByModifier deepCopy()
    {
        return new MoveByModifier(this);
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    protected volatile void onChangeValues(float f, Object obj, float f1, float f2)
    {
        onChangeValues(f, (IEntity)obj, f1, f2);
    }

    protected void onChangeValues(float f, IEntity ientity, float f1, float f2)
    {
        ientity.setPosition(f1 + ientity.getX(), f2 + ientity.getY());
    }
}
