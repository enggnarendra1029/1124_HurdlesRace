// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;


// Referenced classes of package org.andengine.util.adt.list:
//            ISortedList, ListUtils, IList

public class SortedList
    implements ISortedList
{

    private static final int INDEX_INVALID = -1;
    private final IList mList;

    public SortedList(IList ilist)
    {
        mList = ilist;
    }

    private int binarySearch(int i, int j, Comparable comparable)
    {
        int k;
        int l;
        k = i;
        l = j - 1;
_L6:
        if (k <= l) goto _L2; else goto _L1
_L1:
        int i1 = ListUtils.encodeInsertionIndex(k);
_L4:
        return i1;
_L2:
        int j1;
        i1 = k + l >>> 1;
        j1 = comparable.compareTo((Comparable)mList.get(i1));
        if (j1 <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        k = i1 + 1;
        continue; /* Loop/switch isn't completed */
        if (j1 >= 0) goto _L4; else goto _L3
_L3:
        l = i1 - 1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private int binarySearch(Comparable comparable, boolean flag)
    {
        int i = mList.size();
        int j = binarySearch(0, i, comparable);
        if (j >= 0)
        {
            j = scanForEqualItem(0, i, j, comparable, flag);
        }
        return j;
    }

    private int scanForEqualItem(int i, int j, int k, Comparable comparable, boolean flag)
    {
        int l = k - 1;
_L11:
        if (l >= i && comparable.compareTo((Comparable)mList.get(l)) == 0) goto _L2; else goto _L1
_L1:
        int i1 = l + 1;
_L8:
        if (i1 < j) goto _L4; else goto _L3
_L3:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_130;
        }
_L6:
        return i1;
_L2:
        l--;
        continue; /* Loop/switch isn't completed */
_L4:
        Comparable comparable1;
        comparable1 = (Comparable)mList.get(i1);
        if (i1 > k)
        {
            break; /* Loop/switch isn't completed */
        }
        if (comparable.equals(comparable1)) goto _L6; else goto _L5
_L5:
        i1++;
        if (true) goto _L8; else goto _L7
_L7:
        if (comparable.compareTo(comparable1) == 0)
        {
            if (comparable.equals(comparable1))
            {
                return i1;
            }
        } else
        {
            return ListUtils.encodeInsertionIndex(i1);
        }
          goto _L5
        if (true) goto _L8; else goto _L9
_L9:
        return -1;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public void add(int i, Comparable comparable)
    {
        mList.add(comparable);
    }

    public volatile void add(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        add(i, (Comparable)obj);
    }

    public void add(Comparable comparable)
    {
        int i = binarySearch(comparable, true);
        if (i < 0)
        {
            mList.add(ListUtils.encodeInsertionIndex(i), comparable);
            return;
        } else
        {
            mList.add(i, comparable);
            return;
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
        return binarySearch(comparable, false);
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
        boolean flag;
        if (comparable == null)
        {
            flag = mList.remove(comparable);
        } else
        {
            int i = binarySearch(comparable, false);
            flag = false;
            if (i >= 0)
            {
                mList.remove(i);
                return true;
            }
        }
        return flag;
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
