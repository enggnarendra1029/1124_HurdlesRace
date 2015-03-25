// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;


// Referenced classes of package org.andengine.util.adt.list:
//            ISortedList, IList, ListUtils

public class UniqueList
    implements ISortedList
{

    private final IList mList;

    public UniqueList(IList ilist)
    {
        mList = ilist;
    }

    public void add(int i, Comparable comparable)
    {
        if (indexOf(comparable) < 0)
        {
            mList.add(comparable);
        }
    }

    public volatile void add(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        add(i, (Comparable)obj);
    }

    public void add(Comparable comparable)
    {
        int i = indexOf(comparable);
        if (i < 0)
        {
            mList.add(ListUtils.encodeInsertionIndex(i), comparable);
        }
    }

    public volatile void add(Object obj)
    {
        add((Comparable)obj);
    }

    public void clear()
    {
        mList.clear();
    }

    public Comparable get(int i)
        throws IndexOutOfBoundsException
    {
        return (Comparable)mList.get(i);
    }

    public volatile Object get(int i)
        throws IndexOutOfBoundsException
    {
        return get(i);
    }

    public int indexOf(Comparable comparable)
    {
        return mList.indexOf(comparable);
    }

    public volatile int indexOf(Object obj)
    {
        return indexOf((Comparable)obj);
    }

    public boolean isEmpty()
    {
        return mList.isEmpty();
    }

    public Comparable remove(int i)
    {
        return (Comparable)mList.remove(i);
    }

    public volatile Object remove(int i)
        throws IndexOutOfBoundsException
    {
        return remove(i);
    }

    public boolean remove(Comparable comparable)
    {
        return mList.remove(comparable);
    }

    public volatile boolean remove(Object obj)
    {
        return remove((Comparable)obj);
    }

    public Comparable removeFirst()
    {
        return (Comparable)mList.removeFirst();
    }

    public volatile Object removeFirst()
    {
        return removeFirst();
    }

    public Comparable removeLast()
    {
        return (Comparable)mList.removeLast();
    }

    public volatile Object removeLast()
    {
        return removeLast();
    }

    public void set(int i, Comparable comparable)
        throws IndexOutOfBoundsException
    {
        mList.set(i, comparable);
    }

    public volatile void set(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        set(i, (Comparable)obj);
    }

    public int size()
    {
        return mList.size();
    }
}
