// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.color.Color;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            TripleValueSpanEntityModifier, IEntityModifier

public class ColorModifier extends TripleValueSpanEntityModifier
{

    public ColorModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        this(f, f1, f2, f3, f4, f5, f6, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ColorModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, f1, f2, f3, f4, f5, f6, ientitymodifierlistener, EaseLinear.getInstance());
    }

    public ColorModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, f5, f6, ientitymodifierlistener, ieasefunction);
    }

    public ColorModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, f6, null, ieasefunction);
    }

    public ColorModifier(float f, Color color, Color color1)
    {
        this(f, color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue(), null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ColorModifier(float f, Color color, Color color1, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue(), ientitymodifierlistener, EaseLinear.getInstance());
    }

    public ColorModifier(float f, Color color, Color color1, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue(), ientitymodifierlistener, ieasefunction);
    }

    public ColorModifier(float f, Color color, Color color1, IEaseFunction ieasefunction)
    {
        this(f, color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue(), null, ieasefunction);
    }

    protected ColorModifier(ColorModifier colormodifier)
    {
        super(colormodifier);
    }

    public ColorModifier deepCopy()
    {
        return new ColorModifier(this);
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

    protected volatile void onSetInitialValues(Object obj, float f, float f1, float f2)
    {
        onSetInitialValues((IEntity)obj, f, f1, f2);
    }

    protected void onSetInitialValues(IEntity ientity, float f, float f1, float f2)
    {
        ientity.setColor(f, f1, f2);
    }

    protected volatile void onSetValues(Object obj, float f, float f1, float f2, float f3)
    {
        onSetValues((IEntity)obj, f, f1, f2, f3);
    }

    protected void onSetValues(IEntity ientity, float f, float f1, float f2, float f3)
    {
        ientity.setColor(f1, f2, f3);
    }
}
