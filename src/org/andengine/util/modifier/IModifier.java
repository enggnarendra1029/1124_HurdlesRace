// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import java.util.Comparator;
import org.andengine.util.exception.AndEngineRuntimeException;

public interface IModifier
{
    public static class DeepCopyNotSupportedException extends AndEngineRuntimeException
    {

        private static final long serialVersionUID = 0xaefb21b43a21e148L;

        public DeepCopyNotSupportedException()
        {
        }
    }

    public static interface IModifierListener
    {

        public abstract void onModifierFinished(IModifier imodifier, Object obj);

        public abstract void onModifierStarted(IModifier imodifier, Object obj);
    }


    public static final Comparator MODIFIER_COMPARATOR_DURATION_DESCENDING = new Comparator() {

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((IModifier)obj, (IModifier)obj1);
        }

        public int compare(IModifier imodifier, IModifier imodifier1)
        {
            float f = imodifier.getDuration();
            float f1 = imodifier1.getDuration();
            if (f < f1)
            {
                return 1;
            }
            return f <= f1 ? 0 : -1;
        }

    };

    public abstract void addModifierListener(IModifierListener imodifierlistener);

    public abstract IModifier deepCopy()
        throws DeepCopyNotSupportedException;

    public abstract float getDuration();

    public abstract float getSecondsElapsed();

    public abstract boolean isAutoUnregisterWhenFinished();

    public abstract boolean isFinished();

    public abstract float onUpdate(float f, Object obj);

    public abstract boolean removeModifierListener(IModifierListener imodifierlistener);

    public abstract void reset();

    public abstract void setAutoUnregisterWhenFinished(boolean flag);

}
