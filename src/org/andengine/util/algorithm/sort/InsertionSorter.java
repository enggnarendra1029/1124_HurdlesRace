// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.sort;

import java.util.Comparator;
import java.util.List;
import org.andengine.util.adt.list.IList;

// Referenced classes of package org.andengine.util.algorithm.sort:
//            Sorter

public class InsertionSorter extends Sorter
{

    public InsertionSorter()
    {
    }

    public void sort(List list, int i, int j, Comparator comparator)
    {
        int k = i + 1;
_L3:
        Object obj;
        Object obj1;
        if (k >= j)
        {
            return;
        }
        obj = list.get(k);
        obj1 = list.get(k - 1);
        if (comparator.compare(obj, obj1) >= 0) goto _L2; else goto _L1
_L1:
        int l = k;
_L4:
        int i1;
        i1 = l - 1;
        list.set(l, obj1);
        if (i1 > i)
        {
            obj1 = list.get(i1 - 1);
            if (comparator.compare(obj, obj1) < 0)
            {
                break MISSING_BLOCK_LABEL_118;
            }
        }
        list.set(i1, obj);
_L2:
        k++;
          goto _L3
        l = i1;
          goto _L4
    }

    public void sort(IList ilist, int i, int j, Comparator comparator)
    {
        int k = i + 1;
_L3:
        Object obj;
        Object obj1;
        if (k >= j)
        {
            return;
        }
        obj = ilist.get(k);
        obj1 = ilist.get(k - 1);
        if (comparator.compare(obj, obj1) >= 0) goto _L2; else goto _L1
_L1:
        int l = k;
_L4:
        int i1;
        i1 = l - 1;
        ilist.set(l, obj1);
        if (i1 > i)
        {
            obj1 = ilist.get(i1 - 1);
            if (comparator.compare(obj, obj1) < 0)
            {
                break MISSING_BLOCK_LABEL_116;
            }
        }
        ilist.set(i1, obj);
_L2:
        k++;
          goto _L3
        l = i1;
          goto _L4
    }

    public void sort(Object aobj[], int i, int j, Comparator comparator)
    {
        int k = i + 1;
_L3:
        Object obj;
        Object obj1;
        if (k >= j)
        {
            return;
        }
        obj = aobj[k];
        obj1 = aobj[k - 1];
        if (comparator.compare(obj, obj1) >= 0) goto _L2; else goto _L1
_L1:
        int l = k;
_L4:
        int i1;
        i1 = l - 1;
        aobj[l] = obj1;
        if (i1 > i)
        {
            obj1 = aobj[i1 - 1];
            if (comparator.compare(obj, obj1) < 0)
            {
                break MISSING_BLOCK_LABEL_96;
            }
        }
        aobj[i1] = obj;
_L2:
        k++;
          goto _L3
        l = i1;
          goto _L4
    }
}
