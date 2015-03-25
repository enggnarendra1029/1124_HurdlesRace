// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler;

import org.andengine.util.adt.list.SmartList;

// Referenced classes of package org.andengine.engine.handler:
//            IUpdateHandler

public class UpdateHandlerList extends SmartList
    implements IUpdateHandler
{

    private static final long serialVersionUID = 0x8548e80ee423d4a3L;

    public UpdateHandlerList()
    {
    }

    public UpdateHandlerList(int i)
    {
        super(i);
    }

    public void onUpdate(float f)
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return;
            }
            ((IUpdateHandler)get(i)).onUpdate(f);
            i--;
        } while (true);
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
            ((IUpdateHandler)get(i)).reset();
            i--;
        } while (true);
    }
}
