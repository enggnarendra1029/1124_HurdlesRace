// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background.modifier;

import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ParallelModifier;

// Referenced classes of package org.andengine.entity.scene.background.modifier:
//            IBackgroundModifier

public class ParallelBackgroundModifier extends ParallelModifier
    implements IBackgroundModifier
{

    public transient ParallelBackgroundModifier(IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener, IBackgroundModifier aibackgroundmodifier[])
        throws IllegalArgumentException
    {
        super(ibackgroundmodifierlistener, aibackgroundmodifier);
    }

    protected ParallelBackgroundModifier(ParallelBackgroundModifier parallelbackgroundmodifier)
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        super(parallelbackgroundmodifier);
    }

    public transient ParallelBackgroundModifier(IBackgroundModifier aibackgroundmodifier[])
        throws IllegalArgumentException
    {
        super(aibackgroundmodifier);
    }

    public volatile IBackgroundModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public ParallelBackgroundModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new ParallelBackgroundModifier(this);
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
