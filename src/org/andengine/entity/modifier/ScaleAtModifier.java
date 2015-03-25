// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            ScaleModifier, IEntityModifier

public class ScaleAtModifier extends ScaleModifier
{

    private final float mScaleCenterX;
    private final float mScaleCenterY;

    public ScaleAtModifier(float f, float f1, float f2, float f3, float f4)
    {
        this(f, f1, f2, f3, f4, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleAtModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        this(f, f1, f2, f3, f4, f5, f6, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleAtModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, f1, f2, f3, f4, f5, f6, ientitymodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleAtModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, ientitymodifierlistener, ieasefunction);
        mScaleCenterX = f5;
        mScaleCenterY = f6;
    }

    public ScaleAtModifier(float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, f6, null, ieasefunction);
    }

    public ScaleAtModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, f1, f2, f3, f4, ientitymodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public ScaleAtModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f1, f2, f3, f4, ientitymodifierlistener, ieasefunction);
    }

    public ScaleAtModifier(float f, float f1, float f2, float f3, float f4, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, ((IEntityModifier.IEntityModifierListener) (null)), ieasefunction);
    }

    protected ScaleAtModifier(ScaleAtModifier scaleatmodifier)
    {
        super(scaleatmodifier);
        mScaleCenterX = scaleatmodifier.mScaleCenterX;
        mScaleCenterY = scaleatmodifier.mScaleCenterY;
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public ScaleAtModifier deepCopy()
    {
        return new ScaleAtModifier(this);
    }

    public volatile ScaleModifier deepCopy()
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
        super.onManagedInitialize(ientity);
        ientity.setScaleCenter(mScaleCenterX, mScaleCenterY);
    }
}
