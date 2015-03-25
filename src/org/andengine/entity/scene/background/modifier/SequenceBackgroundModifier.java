// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background.modifier;

import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.SequenceModifier;

// Referenced classes of package org.andengine.entity.scene.background.modifier:
//            IBackgroundModifier

public class SequenceBackgroundModifier extends SequenceModifier
    implements IBackgroundModifier
{
    public static interface ISubSequenceBackgroundModifierListener
        extends org.andengine.util.modifier.SequenceModifier.ISubSequenceModifierListener
    {
    }


    public transient SequenceBackgroundModifier(IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener, IBackgroundModifier aibackgroundmodifier[])
        throws IllegalArgumentException
    {
        super(ibackgroundmodifierlistener, aibackgroundmodifier);
    }

    public transient SequenceBackgroundModifier(ISubSequenceBackgroundModifierListener isubsequencebackgroundmodifierlistener, IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener, IBackgroundModifier aibackgroundmodifier[])
        throws IllegalArgumentException
    {
        super(isubsequencebackgroundmodifierlistener, ibackgroundmodifierlistener, aibackgroundmodifier);
    }

    public transient SequenceBackgroundModifier(ISubSequenceBackgroundModifierListener isubsequencebackgroundmodifierlistener, IBackgroundModifier aibackgroundmodifier[])
        throws IllegalArgumentException
    {
        super(isubsequencebackgroundmodifierlistener, aibackgroundmodifier);
    }

    protected SequenceBackgroundModifier(SequenceBackgroundModifier sequencebackgroundmodifier)
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        super(sequencebackgroundmodifier);
    }

    public transient SequenceBackgroundModifier(IBackgroundModifier aibackgroundmodifier[])
        throws IllegalArgumentException
    {
        super(aibackgroundmodifier);
    }

    public volatile IBackgroundModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public SequenceBackgroundModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new SequenceBackgroundModifier(this);
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
