// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ParallelModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public class ParallelEntityModifier extends ParallelModifier
    implements IEntityModifier
{

    public transient ParallelEntityModifier(IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEntityModifier aientitymodifier[])
        throws IllegalArgumentException
    {
        super(ientitymodifierlistener, aientitymodifier);
    }

    protected ParallelEntityModifier(ParallelEntityModifier parallelentitymodifier)
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        super(parallelentitymodifier);
    }

    public transient ParallelEntityModifier(IEntityModifier aientitymodifier[])
        throws IllegalArgumentException
    {
        super(aientitymodifier);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public ParallelEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new ParallelEntityModifier(this);
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public volatile ParallelModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }
}
