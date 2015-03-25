// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background.modifier;

import org.andengine.util.modifier.IModifier;

public interface IBackgroundModifier
    extends IModifier
{
    public static interface IBackgroundModifierListener
        extends org.andengine.util.modifier.IModifier.IModifierListener
    {
    }


    public abstract IBackgroundModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
}
