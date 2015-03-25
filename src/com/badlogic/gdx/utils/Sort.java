// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import java.util.Comparator;

// Referenced classes of package com.badlogic.gdx.utils:
//            ComparableTimSort, Array, TimSort

public class Sort
{

    private static Sort instance;
    private ComparableTimSort comparableTimSort;
    private TimSort timSort;

    public Sort()
    {
    }

    public static Sort instance()
    {
        if (instance == null)
        {
            instance = new Sort();
        }
        return instance;
    }

    public void sort(Array array)
    {
        if (comparableTimSort == null)
        {
            comparableTimSort = new ComparableTimSort();
        }
        comparableTimSort.doSort(array.items, 0, array.size);
    }

    public void sort(Array array, Comparator comparator)
    {
        if (timSort == null)
        {
            timSort = new TimSort();
        }
        timSort.doSort(array.items, comparator, 0, array.size);
    }

    public void sort(Object aobj[])
    {
        if (comparableTimSort == null)
        {
            comparableTimSort = new ComparableTimSort();
        }
        comparableTimSort.doSort(aobj, 0, aobj.length);
    }

    public void sort(Object aobj[], int i, int j)
    {
        if (comparableTimSort == null)
        {
            comparableTimSort = new ComparableTimSort();
        }
        comparableTimSort.doSort(aobj, i, j);
    }

    public void sort(Object aobj[], Comparator comparator)
    {
        if (timSort == null)
        {
            timSort = new TimSort();
        }
        timSort.doSort(aobj, comparator, 0, aobj.length);
    }

    public void sort(Object aobj[], Comparator comparator, int i, int j)
    {
        if (timSort == null)
        {
            timSort = new TimSort();
        }
        timSort.doSort(aobj, comparator, i, j);
    }
}
