// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;


// Referenced classes of package org.andengine.util.modifier:
//            BaseModifier, IModifier

public class LoopModifier extends BaseModifier
    implements IModifier.IModifierListener
{
    public static interface ILoopModifierListener
    {

        public abstract void onLoopFinished(LoopModifier loopmodifier, int i, int j);

        public abstract void onLoopStarted(LoopModifier loopmodifier, int i, int j);
    }


    public static final int LOOP_CONTINUOUS = -1;
    private final float mDuration;
    private boolean mFinishedCached;
    private int mLoop;
    private final int mLoopCount;
    private ILoopModifierListener mLoopModifierListener;
    private final IModifier mModifier;
    private boolean mModifierStartedCalled;
    private float mSecondsElapsed;

    public LoopModifier(IModifier imodifier)
    {
        this(imodifier, -1);
    }

    public LoopModifier(IModifier imodifier, int i)
    {
        this(imodifier, i, null, null);
    }

    public LoopModifier(IModifier imodifier, int i, IModifier.IModifierListener imodifierlistener)
    {
        this(imodifier, i, null, imodifierlistener);
    }

    public LoopModifier(IModifier imodifier, int i, ILoopModifierListener iloopmodifierlistener)
    {
        this(imodifier, i, iloopmodifierlistener, null);
    }

    public LoopModifier(IModifier imodifier, int i, ILoopModifierListener iloopmodifierlistener, IModifier.IModifierListener imodifierlistener)
    {
        super(imodifierlistener);
        BaseModifier.assertNoNullModifier(imodifier);
        mModifier = imodifier;
        mLoopCount = i;
        mLoopModifierListener = iloopmodifierlistener;
        mLoop = 0;
        float f;
        if (i == -1)
        {
            f = (1.0F / 0.0F);
        } else
        {
            f = imodifier.getDuration() * (float)i;
        }
        mDuration = f;
        mModifier.addModifierListener(this);
    }

    protected LoopModifier(LoopModifier loopmodifier)
        throws IModifier.DeepCopyNotSupportedException
    {
        this(loopmodifier.mModifier.deepCopy(), loopmodifier.mLoopCount);
    }

    public volatile IModifier deepCopy()
        throws IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public LoopModifier deepCopy()
        throws IModifier.DeepCopyNotSupportedException
    {
        return new LoopModifier(this);
    }

    public float getDuration()
    {
        return mDuration;
    }

    public ILoopModifierListener getLoopModifierListener()
    {
        return mLoopModifierListener;
    }

    public float getSecondsElapsed()
    {
        return mSecondsElapsed;
    }

    public void onModifierFinished(IModifier imodifier, Object obj)
    {
        if (mLoopModifierListener != null)
        {
            mLoopModifierListener.onLoopFinished(this, mLoop, mLoopCount);
        }
        if (mLoopCount == -1)
        {
            mSecondsElapsed = 0.0F;
            mModifier.reset();
            return;
        }
        mLoop = 1 + mLoop;
        if (mLoop >= mLoopCount)
        {
            mFinished = true;
            mFinishedCached = true;
            onModifierFinished(obj);
            return;
        } else
        {
            mSecondsElapsed = 0.0F;
            mModifier.reset();
            return;
        }
    }

    public void onModifierStarted(IModifier imodifier, Object obj)
    {
        if (!mModifierStartedCalled)
        {
            mModifierStartedCalled = true;
            onModifierStarted(obj);
        }
        if (mLoopModifierListener != null)
        {
            mLoopModifierListener.onLoopStarted(this, mLoop, mLoopCount);
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
            f1 -= mModifier.onUpdate(f1, obj);
        } while (true);
    }

    public void reset()
    {
        mFinished = false;
        mLoop = 0;
        mSecondsElapsed = 0.0F;
        mModifierStartedCalled = false;
        mModifier.reset();
    }

    public void setLoopModifierListener(ILoopModifierListener iloopmodifierlistener)
    {
        mLoopModifierListener = iloopmodifierlistener;
    }
}
