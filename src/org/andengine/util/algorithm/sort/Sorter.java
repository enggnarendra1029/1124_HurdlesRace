// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.sort;

import java.util.Comparator;
import java.util.List;
import org.andengine.util.adt.list.IList;

public abstract class Sorter
{

    public Sorter()
    {
    }

    public abstract void sort(List list, int i, int j, Comparator comparator);

    public final void sort(List list, Comparator comparator)
    {
        sort(list, 0, list.size(), comparator);
    }

    public abstract void sort(IList ilist, int i, int j, Comparator comparator);

    public final void sort(IList ilist, Comparator comparator)
    {
        sort(ilist, 0, ilist.size(), comparator);
    }

    public abstract void sort(Object aobj[], int i, int j, Comparator comparator);

    public final void sort(Object aobj[], Comparator comparator)
    {
        sort(aobj, 0, aobj.length, comparator);
    }
}
