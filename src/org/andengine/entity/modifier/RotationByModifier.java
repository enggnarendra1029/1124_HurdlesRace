// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            SingleValueChangeEntityModifier, IEntityModifier

public class RotationByModifier extends SingleValueChangeEntityModifier
{

    public RotationByModifier(float f, float f1)
    {
        super(f, f1);
    }

    public RotationByModifier(float f, float f1, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, ientitymodifierlistener);
    }

    protected RotationByModifier(RotationByModifier rotationbymodifier)
    {
        super(rotationbymodifier);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public RotationByModifier deepCopy()
    {
        return new RotationByModifier(this);
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    protected volatile void onChangeValue(float f, Object obj, float f1)
    {
        onChangeValue(f, (IEntity)obj, f1);
    }

    protected void onChangeValue(float f, IEntity ientity, float f1)
    {
        ientity.setRotation(f1 + ientity.getRotation());
    }
}
