// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;

import java.util.ArrayList;
import java.util.List;
import org.andengine.util.adt.queue.IQueue;
import org.andengine.util.adt.queue.concurrent.SynchronizedQueue;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.util.adt.list:
//            IList

public final class ListUtils
{

    public ListUtils()
    {
    }

    public static final int encodeInsertionIndex(int i)
    {
        return -1 + -i;
    }

    public static final Object random(List list)
    {
        return list.get(MathUtils.random(0, -1 + list.size()));
    }

    public static void swap(List list, int i, int j)
    {
        Object obj = list.get(i);
        list.set(i, list.get(j));
        list.set(j, obj);
    }

    public static void swap(IList ilist, int i, int j)
    {
        Object obj = ilist.get(i);
        ilist.set(i, ilist.get(j));
        ilist.set(j, obj);
    }

    public static final IQueue synchronizedQueue(IQueue iqueue)
    {
        return new SynchronizedQueue(iqueue);
    }

    public static final ArrayList toList(Object obj)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(obj);
        return arraylist;
    }

    public static final transient ArrayList toList(Object aobj[])
    {
        ArrayList arraylist = new ArrayList();
        int i = aobj.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return arraylist;
            }
            arraylist.add(aobj[j]);
            j++;
        } while (true);
    }
}
