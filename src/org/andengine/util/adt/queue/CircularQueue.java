// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.queue;

import org.andengine.util.adt.list.CircularList;

// Referenced classes of package org.andengine.util.adt.queue:
//            IQueue

public class CircularQueue extends CircularList
    implements IQueue
{

    public CircularQueue()
    {
    }

    public CircularQueue(int i)
    {
        super(i);
    }

    public void enter(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        add(i, obj);
    }

    public void enter(Object obj)
    {
        add(obj);
    }

    public Object peek()
    {
        if (isEmpty())
        {
            return null;
        } else
        {
            return get(0);
        }
    }

    public Object poll()
    {
        if (isEmpty())
        {
            return null;
        } else
        {
            return remove(0);
        }
    }
}
