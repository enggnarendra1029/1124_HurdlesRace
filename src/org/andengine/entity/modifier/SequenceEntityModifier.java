// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.SequenceModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public class SequenceEntityModifier extends SequenceModifier
    implements IEntityModifier
{
    public static interface ISubSequenceShapeModifierListener
        extends org.andengine.util.modifier.SequenceModifier.ISubSequenceModifierListener
    {
    }


    public transient SequenceEntityModifier(IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEntityModifier aientitymodifier[])
        throws IllegalArgumentException
    {
        super(ientitymodifierlistener, aientitymodifier);
    }

    public transient SequenceEntityModifier(ISubSequenceShapeModifierListener isubsequenceshapemodifierlistener, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEntityModifier aientitymodifier[])
        throws IllegalArgumentException
    {
        super(isubsequenceshapemodifierlistener, ientitymodifierlistener, aientitymodifier);
    }

    public transient SequenceEntityModifier(ISubSequenceShapeModifierListener isubsequenceshapemodifierlistener, IEntityModifier aientitymodifier[])
        throws IllegalArgumentException
    {
        super(isubsequenceshapemodifierlistener, aientitymodifier);
    }

    protected SequenceEntityModifier(SequenceEntityModifier sequenceentitymodifier)
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        super(sequenceentitymodifier);
    }

    public transient SequenceEntityModifier(IEntityModifier aientitymodifier[])
        throws IllegalArgumentException
    {
        super(aientitymodifier);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public SequenceEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new SequenceEntityModifier(this);
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public volatile SequenceModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }
}
