// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.IMatcher;
import org.andengine.util.modifier.IModifier;

public interface IEntityModifier
    extends IModifier
{
    public static interface IEntityModifierListener
        extends org.andengine.util.modifier.IModifier.IModifierListener
    {
    }

    public static interface IEntityModifierMatcher
        extends IMatcher
    {
    }


    public abstract IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException;
}
