// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.LoopModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public class LoopEntityModifier extends LoopModifier
    implements IEntityModifier
{
    public static interface ILoopEntityModifierListener
        extends org.andengine.util.modifier.LoopModifier.ILoopModifierListener
    {
    }


    public LoopEntityModifier(IEntityModifier.IEntityModifierListener ientitymodifierlistener, int i, ILoopEntityModifierListener iloopentitymodifierlistener, IEntityModifier ientitymodifier)
    {
        super(ientitymodifier, i, iloopentitymodifierlistener, ientitymodifierlistener);
    }

    public LoopEntityModifier(IEntityModifier ientitymodifier)
    {
        super(ientitymodifier);
    }

    public LoopEntityModifier(IEntityModifier ientitymodifier, int i)
    {
        super(ientitymodifier, i);
    }

    public LoopEntityModifier(IEntityModifier ientitymodifier, int i, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(ientitymodifier, i, ientitymodifierlistener);
    }

    public LoopEntityModifier(IEntityModifier ientitymodifier, int i, ILoopEntityModifierListener iloopentitymodifierlistener)
    {
        super(ientitymodifier, i, iloopentitymodifierlistener);
    }

    protected LoopEntityModifier(LoopEntityModifier loopentitymodifier)
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        super(loopentitymodifier);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public LoopEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new LoopEntityModifier(this);
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public volatile LoopModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }
}
