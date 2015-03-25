// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier;

import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.util.adt.list.SmartList;

// Referenced classes of package org.andengine.util.modifier:
//            IModifier

public class ModifierList extends SmartList
    implements IUpdateHandler
{

    private static final long serialVersionUID = 0x165918c8d0a83583L;
    private final Object mTarget;

    public ModifierList(Object obj)
    {
        mTarget = obj;
    }

    public ModifierList(Object obj, int i)
    {
        super(i);
        mTarget = obj;
    }

    public volatile boolean add(Object obj)
    {
        return add((IModifier)obj);
    }

    public boolean add(IModifier imodifier)
    {
        if (imodifier == null)
        {
            throw new IllegalArgumentException((new StringBuilder("Supplied ")).append(org/andengine/util/modifier/IModifier.getSimpleName()).append(" must not be null.").toString());
        } else
        {
            return super.add(imodifier);
        }
    }

    public Object getTarget()
    {
        return mTarget;
    }

    public void onUpdate(float f)
    {
        int i = size();
        if (i <= 0) goto _L2; else goto _L1
_L1:
        int j = i - 1;
_L5:
        if (j >= 0) goto _L3; else goto _L2
_L2:
        return;
_L3:
        IModifier imodifier = (IModifier)get(j);
        imodifier.onUpdate(f, mTarget);
        if (imodifier.isFinished() && imodifier.isAutoUnregisterWhenFinished())
        {
            remove(j);
        }
        j--;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void reset()
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return;
            }
            ((IModifier)get(i)).reset();
            i--;
        } while (true);
    }
}
