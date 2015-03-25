// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            MoveModifier, IEntityModifier

public class JumpModifier extends MoveModifier
{

    private static final int JUMPCOUNT_DEFAULT = 1;
    protected final int mJumpCount;
    protected final float mJumpHeight;

    public JumpModifier(float f, float f1, float f2, float f3, float f4, float f5)
    {
        this(f, f1, f2, f3, f4, f5, 1, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public JumpModifier(float f, float f1, float f2, float f3, float f4, float f5, int i)
    {
        this(f, f1, f2, f3, f4, f5, i, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public JumpModifier(float f, float f1, float f2, float f3, float f4, float f5, int i, 
            IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, f1, f2, f3, f4, f5, i, ientitymodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public JumpModifier(float f, float f1, float f2, float f3, float f4, float f5, int i, 
            IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, f1, f2, f3, f4, ientitymodifierlistener, ieasefunction);
        mJumpHeight = f5;
        mJumpCount = i;
    }

    public JumpModifier(float f, float f1, float f2, float f3, float f4, float f5, int i, 
            IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, i, null, ieasefunction);
    }

    public JumpModifier(float f, float f1, float f2, float f3, float f4, float f5, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, f1, f2, f3, f4, f5, 1, ientitymodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public JumpModifier(float f, float f1, float f2, float f3, float f4, float f5, IEntityModifier.IEntityModifierListener ientitymodifierlistener, 
            IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, 1, ientitymodifierlistener, ieasefunction);
    }

    public JumpModifier(float f, float f1, float f2, float f3, float f4, float f5, IEaseFunction ieasefunction)
    {
        this(f, f1, f2, f3, f4, f5, 1, ieasefunction);
    }

    public JumpModifier(JumpModifier jumpmodifier)
    {
        super(jumpmodifier);
        mJumpHeight = jumpmodifier.mJumpHeight;
        mJumpCount = jumpmodifier.mJumpCount;
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public JumpModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new JumpModifier(this);
    }

    public volatile MoveModifier deepCopy()
    {
        return deepCopy();
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    protected void onSetValues(IEntity ientity, float f, float f1, float f2)
    {
        float f3 = (f * (float)mJumpCount) % 1.0F;
        super.onSetValues(ientity, f, f1, f2 - f3 * (4F * mJumpHeight) * (1.0F - f3));
    }
}
