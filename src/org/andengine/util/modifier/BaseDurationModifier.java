// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;


// Referenced classes of package org.andengine.util.modifier:
//            BaseModifier

public abstract class BaseDurationModifier extends BaseModifier
{

    protected float mDuration;
    private float mSecondsElapsed;

    public BaseDurationModifier(float f)
    {
        mDuration = f;
    }

    public BaseDurationModifier(float f, IModifier.IModifierListener imodifierlistener)
    {
        super(imodifierlistener);
        mDuration = f;
    }

    protected BaseDurationModifier(BaseDurationModifier basedurationmodifier)
    {
        this(basedurationmodifier.mDuration);
    }

    public float getDuration()
    {
        return mDuration;
    }

    public float getSecondsElapsed()
    {
        return mSecondsElapsed;
    }

    protected abstract void onManagedInitialize(Object obj);

    protected abstract void onManagedUpdate(float f, Object obj);

    public final float onUpdate(float f, Object obj)
    {
        boolean flag = mFinished;
        float f1 = 0.0F;
        if (!flag)
        {
            if (mSecondsElapsed == 0.0F)
            {
                onManagedInitialize(obj);
                onModifierStarted(obj);
            }
            if (f + mSecondsElapsed < mDuration)
            {
                f1 = f;
            } else
            {
                f1 = mDuration - mSecondsElapsed;
            }
            mSecondsElapsed = f1 + mSecondsElapsed;
            onManagedUpdate(f1, obj);
            if (mDuration != -1F && mSecondsElapsed >= mDuration)
            {
                mSecondsElapsed = mDuration;
                mFinished = true;
                onModifierFinished(obj);
                return f1;
            }
        }
        return f1;
    }

    public void reset()
    {
        mFinished = false;
        mSecondsElapsed = 0.0F;
    }
}
