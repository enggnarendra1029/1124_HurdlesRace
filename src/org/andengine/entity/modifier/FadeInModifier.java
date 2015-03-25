// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            AlphaModifier, IEntityModifier

public class FadeInModifier extends AlphaModifier
{

    public FadeInModifier(float f)
    {
        super(f, 0.0F, 1.0F, EaseLinear.getInstance());
    }

    public FadeInModifier(float f, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, 0.0F, 1.0F, ientitymodifierlistener, EaseLinear.getInstance());
    }

    public FadeInModifier(float f, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, 0.0F, 1.0F, ientitymodifierlistener, ieasefunction);
    }

    public FadeInModifier(float f, IEaseFunction ieasefunction)
    {
        super(f, 0.0F, 1.0F, ieasefunction);
    }

    protected FadeInModifier(FadeInModifier fadeinmodifier)
    {
        super(fadeinmodifier);
    }

    public volatile AlphaModifier deepCopy()
    {
        return deepCopy();
    }

    public FadeInModifier deepCopy()
    {
        return new FadeInModifier(this);
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
}
