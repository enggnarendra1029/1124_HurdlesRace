// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import org.andengine.util.adt.list.SmartList;

// Referenced classes of package org.andengine.util.modifier:
//            IModifier

public abstract class BaseModifier
    implements IModifier
{

    private boolean mAutoUnregisterWhenFinished;
    protected boolean mFinished;
    private final SmartList mModifierListeners;

    public BaseModifier()
    {
        mAutoUnregisterWhenFinished = true;
        mModifierListeners = new SmartList(2);
    }

    public BaseModifier(IModifier.IModifierListener imodifierlistener)
    {
        mAutoUnregisterWhenFinished = true;
        mModifierListeners = new SmartList(2);
        addModifierListener(imodifierlistener);
    }

    protected static final void assertNoNullModifier(IModifier imodifier)
    {
        if (imodifier == null)
        {
            throw new IllegalArgumentException((new StringBuilder("Illegal 'null' ")).append(org/andengine/util/modifier/IModifier.getSimpleName()).append(" detected!").toString());
        } else
        {
            return;
        }
    }

    protected static final transient void assertNoNullModifier(IModifier aimodifier[])
    {
        int i = aimodifier.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            if (aimodifier[j] == null)
            {
                throw new IllegalArgumentException((new StringBuilder("Illegal 'null' ")).append(org/andengine/util/modifier/IModifier.getSimpleName()).append(" detected at position: '").append(j).append("'!").toString());
            }
            j++;
        } while (true);
    }

    public void addModifierListener(IModifier.IModifierListener imodifierlistener)
    {
        if (imodifierlistener != null)
        {
            mModifierListeners.add(imodifierlistener);
        }
    }

    public abstract IModifier deepCopy()
        throws IModifier.DeepCopyNotSupportedException;

    public final boolean isAutoUnregisterWhenFinished()
    {
        return mAutoUnregisterWhenFinished;
    }

    public boolean isFinished()
    {
        return mFinished;
    }

    protected void onModifierFinished(Object obj)
    {
        SmartList smartlist = mModifierListeners;
        int i = -1 + smartlist.size();
        do
        {
            if (i < 0)
            {
                return;
            }
            ((IModifier.IModifierListener)smartlist.get(i)).onModifierFinished(this, obj);
            i--;
        } while (true);
    }

    protected void onModifierStarted(Object obj)
    {
        SmartList smartlist = mModifierListeners;
        int i = -1 + smartlist.size();
        do
        {
            if (i < 0)
            {
                return;
            }
            ((IModifier.IModifierListener)smartlist.get(i)).onModifierStarted(this, obj);
            i--;
        } while (true);
    }

    public boolean removeModifierListener(IModifier.IModifierListener imodifierlistener)
    {
        if (imodifierlistener == null)
        {
            return false;
        } else
        {
            return mModifierListeners.remove(imodifierlistener);
        }
    }

    public final void setAutoUnregisterWhenFinished(boolean flag)
    {
        mAutoUnregisterWhenFinished = flag;
    }
}
