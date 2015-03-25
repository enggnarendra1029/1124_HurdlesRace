// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import java.util.Arrays;

// Referenced classes of package org.andengine.util.modifier:
//            BaseModifier, IModifier

public class ParallelModifier extends BaseModifier
    implements IModifier.IModifierListener
{

    private final float mDuration;
    private boolean mFinishedCached;
    private final IModifier mModifiers[];
    private float mSecondsElapsed;

    public transient ParallelModifier(IModifier.IModifierListener imodifierlistener, IModifier aimodifier[])
        throws IllegalArgumentException
    {
        super(imodifierlistener);
        if (aimodifier.length == 0)
        {
            throw new IllegalArgumentException("pModifiers must not be empty!");
        } else
        {
            BaseModifier.assertNoNullModifier(aimodifier);
            Arrays.sort(aimodifier, MODIFIER_COMPARATOR_DURATION_DESCENDING);
            mModifiers = aimodifier;
            IModifier imodifier = aimodifier[0];
            mDuration = imodifier.getDuration();
            imodifier.addModifierListener(this);
            return;
        }
    }

    protected ParallelModifier(ParallelModifier parallelmodifier)
        throws IModifier.DeepCopyNotSupportedException
    {
        IModifier aimodifier[] = parallelmodifier.mModifiers;
        mModifiers = new IModifier[aimodifier.length];
        IModifier aimodifier1[] = mModifiers;
        int i = -1 + aimodifier1.length;
        do
        {
            if (i < 0)
            {
                IModifier imodifier = aimodifier1[0];
                mDuration = imodifier.getDuration();
                imodifier.addModifierListener(this);
                return;
            }
            aimodifier1[i] = aimodifier[i].deepCopy();
            i--;
        } while (true);
    }

    public transient ParallelModifier(IModifier aimodifier[])
        throws IllegalArgumentException
    {
        this(null, aimodifier);
    }

    public volatile IModifier deepCopy()
        throws IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public ParallelModifier deepCopy()
        throws IModifier.DeepCopyNotSupportedException
    {
        return new ParallelModifier(this);
    }

    public float getDuration()
    {
        return mDuration;
    }

    public float getSecondsElapsed()
    {
        return mSecondsElapsed;
    }

    public void onModifierFinished(IModifier imodifier, Object obj)
    {
        mFinished = true;
        mFinishedCached = true;
        onModifierFinished(obj);
    }

    public void onModifierStarted(IModifier imodifier, Object obj)
    {
        onModifierStarted(obj);
    }

    public float onUpdate(float f, Object obj)
    {
        float f1;
        IModifier aimodifier[];
        if (mFinished)
        {
            return 0.0F;
        }
        f1 = f;
        aimodifier = mModifiers;
        mFinishedCached = false;
_L2:
        if (f1 <= 0.0F || mFinishedCached)
        {
            mFinishedCached = false;
            float f2 = f - f1;
            mSecondsElapsed = f2 + mSecondsElapsed;
            return f2;
        }
        float f3 = 0.0F;
        int i = -1 + aimodifier.length;
        do
        {
label0:
            {
                if (i >= 0)
                {
                    break label0;
                }
                f1 -= f3;
            }
            if (true)
            {
                continue;
            }
            f3 = Math.max(f3, aimodifier[i].onUpdate(f, obj));
            i--;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void reset()
    {
        mFinished = false;
        mSecondsElapsed = 0.0F;
        IModifier aimodifier[] = mModifiers;
        int i = -1 + aimodifier.length;
        do
        {
            if (i < 0)
            {
                return;
            }
            aimodifier[i].reset();
            i--;
        } while (true);
    }
}
