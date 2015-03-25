// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            DurationEntityModifier, IEntityModifier

public class DelayModifier extends DurationEntityModifier
{

    public DelayModifier(float f)
    {
        super(f);
    }

    public DelayModifier(float f, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, ientitymodifierlistener);
    }

    protected DelayModifier(DelayModifier delaymodifier)
    {
        super(delaymodifier);
    }

    public DelayModifier deepCopy()
    {
        return new DelayModifier(this);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    protected volatile void onManagedInitialize(Object obj)
    {
        onManagedInitialize((IEntity)obj);
    }

    protected void onManagedInitialize(IEntity ientity)
    {
    }

    protected volatile void onManagedUpdate(float f, Object obj)
    {
        onManagedUpdate(f, (IEntity)obj);
    }

    protected void onManagedUpdate(float f, IEntity ientity)
    {
    }
}
