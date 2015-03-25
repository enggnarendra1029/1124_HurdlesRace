// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background.modifier;

import org.andengine.entity.scene.background.IBackground;
import org.andengine.util.color.Color;
import org.andengine.util.modifier.BaseTripleValueSpanModifier;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.scene.background.modifier:
//            IBackgroundModifier

public class ColorBackgroundModifier extends BaseTripleValueSpanModifier
    implements IBackgroundModifier
{

    public ColorBackgroundModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        this(f, f1, f2, f3, f4, f5, f6, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ColorBackgroundModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener)
    {
        super(f, f1, f2, f3, f4, f5, f6, ibackgroundmodifierlistener, EaseLinear.getInstance());
    }

    public ColorBackgroundModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, f5, f6, ibackgroundmodifierlistener, ieasefunction);
    }

    public ColorBackgroundModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, f6, null, ieasefunction);
    }

    public ColorBackgroundModifier(float f, Color color, Color color1)
    {
        this(f, color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue(), null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ColorBackgroundModifier(float f, Color color, Color color1, IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener)
    {
        super(f, color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue(), ibackgroundmodifierlistener, EaseLinear.getInstance());
    }

    public ColorBackgroundModifier(float f, Color color, Color color1, IBackgroundModifier.IBackgroundModifierListener ibackgroundmodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue(), ibackgroundmodifierlistener, ieasefunction);
    }

    public ColorBackgroundModifier(float f, Color color, Color color1, IEaseFunction ieasefunction)
    {
        this(f, color.getRed(), color1.getRed(), color.getGreen(), color1.getGreen(), color.getBlue(), color1.getBlue(), null, ieasefunction);
    }

    protected ColorBackgroundModifier(ColorBackgroundModifier colorbackgroundmodifier)
    {
        super(colorbackgroundmodifier);
    }

    public ColorBackgroundModifier deepCopy()
    {
        return new ColorBackgroundModifier(this);
    }

    public volatile IBackgroundModifier deepCopy()
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
        onSetInitialValues((IBackground)obj, f, f1, f2);
    }

    protected void onSetInitialValues(IBackground ibackground, float f, float f1, float f2)
    {
        ibackground.setColor(f, f1, f2);
    }

    protected volatile void onSetValues(Object obj, float f, float f1, float f2, float f3)
    {
        onSetValues((IBackground)obj, f, f1, f2, f3);
    }

    protected void onSetValues(IBackground ibackground, float f, float f1, float f2, float f3)
    {
        ibackground.setColor(f1, f2, f3);
    }
}
