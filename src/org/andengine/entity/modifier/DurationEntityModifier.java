// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.BaseDurationModifier;

// Referenced classes of package org.andengine.entity.modifier:
//            IEntityModifier

public abstract class DurationEntityModifier extends BaseDurationModifier
    implements IEntityModifier
{

    public DurationEntityModifier(float f)
    {
        super(f);
    }

    public DurationEntityModifier(float f, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, ientitymodifierlistener);
    }

    protected DurationEntityModifier(DurationEntityModifier durationentitymodifier)
    {
        super(durationentitymodifier);
    }
}
