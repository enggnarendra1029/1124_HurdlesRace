// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.map;

import android.util.SparseArray;

public class Library
{

    protected final SparseArray mItems;

    public Library()
    {
        mItems = new SparseArray();
    }

    public Library(int i)
    {
        mItems = new SparseArray(i);
    }

    public void clear()
    {
        mItems.clear();
    }

    public Object get(int i)
    {
        return mItems.get(i);
    }

    public void put(int i, Object obj)
    {
        Object obj1 = mItems.get(i);
        if (obj1 == null)
        {
            mItems.put(i, obj);
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("ID: '")).append(i).append("' is already associated with item: '").append(obj1.toString()).append("'.").toString());
        }
    }

    public void remove(int i)
    {
        mItems.remove(i);
    }
}
