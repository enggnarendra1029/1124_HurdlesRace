// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import org.andengine.util.modifier.util.ModifierUtils;

// Referenced classes of package org.andengine.util.modifier:
//            BaseModifier, IModifier

public class SequenceModifier extends BaseModifier
    implements IModifier.IModifierListener
{
    public static interface ISubSequenceModifierListener
    {

        public abstract void onSubSequenceFinished(IModifier imodifier, Object obj, int i);

        public abstract void onSubSequenceStarted(IModifier imodifier, Object obj, int i);
    }


    private int mCurrentSubSequenceModifierIndex;
    private final float mDuration;
    private boolean mFinishedCached;
    private float mSecondsElapsed;
    private ISubSequenceModifierListener mSubSequenceModifierListener;
    private final IModifier mSubSequenceModifiers[];

    public transient SequenceModifier(IModifier.IModifierListener imodifierlistener, IModifier aimodifier[])
        throws IllegalArgumentException
    {
        this(null, imodifierlistener, aimodifier);
    }

    public transient SequenceModifier(ISubSequenceModifierListener isubsequencemodifierlistener, IModifier.IModifierListener imodifierlistener, IModifier aimodifier[])
        throws IllegalArgumentException
    {
        super(imodifierlistener);
        if (aimodifier.length == 0)
        {
            throw new IllegalArgumentException("pModifiers must not be empty!");
        } else
        {
            BaseModifier.assertNoNullModifier(aimodifier);
            mSubSequenceModifierListener = isubsequencemodifierlistener;
            mSubSequenceModifiers = aimodifier;
            mDuration = ModifierUtils.getSequenceDurationOfModifier(aimodifier);
            aimodifier[0].addModifierListener(this);
            return;
        }
    }

    public transient SequenceModifier(ISubSequenceModifierListener isubsequencemodifierlistener, IModifier aimodifier[])
        throws IllegalArgumentException
    {
        this(isubsequencemodifierlistener, null, aimodifier);
    }

    protected SequenceModifier(SequenceModifier sequencemodifier)
        throws IModifier.DeepCopyNotSupportedException
    {
        mDuration = sequencemodifier.mDuration;
        IModifier aimodifier[] = sequencemodifier.mSubSequenceModifiers;
        mSubSequenceModifiers = new IModifier[aimodifier.length];
        IModifier aimodifier1[] = mSubSequenceModifiers;
        int i = -1 + aimodifier1.length;
        do
        {
            if (i < 0)
            {
                aimodifier1[0].addModifierListener(this);
                return;
            }
            aimodifier1[i] = aimodifier[i].deepCopy();
            i--;
        } while (true);
    }

    public transient SequenceModifier(IModifier aimodifier[])
        throws IllegalArgumentException
    {
        this(null, null, aimodifier);
    }

    public volatile IModifier deepCopy()
        throws IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public SequenceModifier deepCopy()
        throws IModifier.DeepCopyNotSupportedException
    {
        return new SequenceModifier(this);
    }

    public float getDuration()
    {
        return mDuration;
    }

    public float getSecondsElapsed()
    {
        return mSecondsElapsed;
    }

    public ISubSequenceModifierListener getSubSequenceModifierListener()
    {
        return mSubSequenceModifierListener;
    }

    public void onModifierFinished(IModifier imodifier, Object obj)
    {
        if (mSubSequenceModifierListener != null)
        {
            mSubSequenceModifierListener.onSubSequenceFinished(imodifier, obj, mCurrentSubSequenceModifierIndex);
        }
        imodifier.removeModifierListener(this);
        mCurrentSubSequenceModifierIndex = 1 + mCurrentSubSequenceModifierIndex;
        if (mCurrentSubSequenceModifierIndex < mSubSequenceModifiers.length)
        {
            mSubSequenceModifiers[mCurrentSubSequenceModifierIndex].addModifierListener(this);
            return;
        } else
        {
            mFinished = true;
            mFinishedCached = true;
            onModifierFinished(obj);
            return;
        }
    }

    public void onModifierStarted(IModifier imodifier, Object obj)
    {
        if (mCurrentSubSequenceModifierIndex == 0)
        {
            onModifierStarted(obj);
        }
        if (mSubSequenceModifierListener != null)
        {
            mSubSequenceModifierListener.onSubSequenceStarted(imodifier, obj, mCurrentSubSequenceModifierIndex);
        }
    }

    public float onUpdate(float f, Object obj)
    {
        if (mFinished)
        {
            return 0.0F;
        }
        float f1 = f;
        mFinishedCached = false;
        do
        {
            if (f1 <= 0.0F || mFinishedCached)
            {
                mFinishedCached = false;
                float f2 = f - f1;
                mSecondsElapsed = f2 + mSecondsElapsed;
                return f2;
            }
            f1 -= mSubSequenceModifiers[mCurrentSubSequenceModifierIndex].onUpdate(f1, obj);
        } while (true);
    }

    public void reset()
    {
        IModifier aimodifier[];
        int i;
        if (isFinished())
        {
            mSubSequenceModifiers[-1 + mSubSequenceModifiers.length].removeModifierListener(this);
        } else
        {
            mSubSequenceModifiers[mCurrentSubSequenceModifierIndex].removeModifierListener(this);
        }
        mCurrentSubSequenceModifierIndex = 0;
        mFinished = false;
        mSecondsElapsed = 0.0F;
        mSubSequenceModifiers[0].addModifierListener(this);
        aimodifier = mSubSequenceModifiers;
        i = -1 + aimodifier.length;
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

    public void setSubSequenceModifierListener(ISubSequenceModifierListener isubsequencemodifierlistener)
    {
        mSubSequenceModifierListener = isubsequencemodifierlistener;
    }
}
