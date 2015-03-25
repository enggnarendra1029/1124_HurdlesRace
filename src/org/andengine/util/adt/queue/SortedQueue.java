// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.queue;

import org.andengine.util.adt.list.SortedList;

// Referenced classes of package org.andengine.util.adt.queue:
//            ISortedQueue, IQueue

public class SortedQueue extends SortedList
    implements ISortedQueue
{

    public SortedQueue(IQueue iqueue)
    {
        super(iqueue);
    }

    public void enter(int i, Comparable comparable)
        throws IndexOutOfBoundsException
    {
        add(i, comparable);
    }

    public volatile void enter(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        enter(i, (Comparable)obj);
    }

    public void enter(Comparable comparable)
    {
        add(comparable);
    }

    public volatile void enter(Object obj)
    {
        enter((Comparable)obj);
    }

    public Comparable peek()
    {
        if (isEmpty())
        {
            return null;
        } else
        {
            return get(0);
        }
    }

    public volatile Object peek()
    {
        return peek();
    }

    public Comparable poll()
    {
        if (isEmpty())
        {
            return null;
        } else
        {
            return remove(0);
        }
    }

    public volatile Object poll()
    {
        return poll();
    }
}
