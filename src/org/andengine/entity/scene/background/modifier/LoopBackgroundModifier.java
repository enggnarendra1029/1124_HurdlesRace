// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background.modifier;

import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.LoopModifier;

// Referenced classes of package org.andengine.entity.scene.background.modifier:
//            IBackgroundModifier

public class LoopBackgroundModifier extends LoopModifier
    implements IBackgroundModifier
{
    public static interface ILoopBackgroundModifierListener
        extends org.andengine.util.modifier.LoopModifier.ILoopModifierListener
    {
    }


    public LoopBackgroundModifier(IBackgroundModifier ibackgroundmodifier)
    {
        super(ibackgroundmodifier);
    }

    public LoopBackgroundModifier(IBackgroundModifier ibackgroundmodifier, int i)
    {
        super(ibackgroundmodifier, i);
    }

    public LoopBackgroundModifier(IBackgroundModifier ibackgroundmodifier, int i, IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener)
    {
        super(ibackgroundmodifier, i, ibackgroundmodifierlistener);
    }

    public LoopBackgroundModifier(IBackgroundModifier ibackgroundmodifier, int i, ILoopBackgroundModifierListener iloopbackgroundmodifierlistener)
    {
        super(ibackgroundmodifier, i, iloopbackgroundmodifierlistener, null);
    }

    public LoopBackgroundModifier(IBackgroundModifier ibackgroundmodifier, int i, ILoopBackgroundModifierListener iloopbackgroundmodifierlistener, IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener)
    {
        super(ibackgroundmodifier, i, iloopbackgroundmodifierlistener, ibackgroundmodifierlistener);
    }

    protected LoopBackgroundModifier(LoopBackgroundModifier loopbackgroundmodifier)
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        super(loopbackgroundmodifier);
    }

    public volatile IBackgroundModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public LoopBackgroundModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new LoopBackgroundModifier(this);
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
