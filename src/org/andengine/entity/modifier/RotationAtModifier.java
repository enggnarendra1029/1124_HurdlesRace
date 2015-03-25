// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            RotationModifier, IEntityModifier

public class RotationAtModifier extends RotationModifier
{

    private final float mRotationCenterX;
    private final float mRotationCenterY;

    public RotationAtModifier(float f, float f1, float f2, float f3, float f4)
    {
        this(f, f1, f2, f3, f4, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public RotationAtModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, f1, f2, f3, f4, ientitymodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public RotationAtModifier(float f, float f1, float f2, float f3, float f4, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, ientitymodifierlistener, ieasefunction);
        mRotationCenterX = f3;
        mRotationCenterY = f4;
    }

    public RotationAtModifier(float f, float f1, float f2, float f3, float f4, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, null, ieasefunction);
    }

    protected RotationAtModifier(RotationAtModifier rotationatmodifier)
    {
        super(rotationatmodifier);
        mRotationCenterX = rotationatmodifier.mRotationCenterX;
        mRotationCenterY = rotationatmodifier.mRotationCenterY;
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public RotationAtModifier deepCopy()
    {
        return new RotationAtModifier(this);
    }

    public volatile RotationModifier deepCopy()
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
        ientity.setRotationCenter(mRotationCenterX, mRotationCenterY);
    }
}
