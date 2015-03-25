// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.pool;

import java.util.ArrayList;
import java.util.Collections;
import org.andengine.util.debug.Debug;

public abstract class GenericPool
{

    private final int mAvailableItemCountMaximum;
    private final ArrayList mAvailableItems;
    private final int mGrowth;
    private int mUnrecycledItemCount;

    public GenericPool()
    {
        this(0);
    }

    public GenericPool(int i)
    {
        this(i, 1);
    }

    public GenericPool(int i, int j)
    {
        this(i, j, 0x7fffffff);
    }

    public GenericPool(int i, int j, int k)
    {
        if (j <= 0)
        {
            throw new IllegalArgumentException("pGrowth must be greater than 0!");
        }
        if (k < 0)
        {
            throw new IllegalArgumentException("pAvailableItemsMaximum must be at least 0!");
        }
        mGrowth = j;
        mAvailableItemCountMaximum = k;
        mAvailableItems = new ArrayList(i);
        if (i > 0)
        {
            batchAllocatePoolItems(i);
        }
    }

    public void batchAllocatePoolItems(int i)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int j;
        int k;
        arraylist = mAvailableItems;
        j = mAvailableItemCountMaximum;
        k = arraylist.size();
        int i1;
        int l = j - k;
        if (i < l)
        {
            l = i;
        }
        i1 = l - 1;
_L2:
        if (i1 < 0)
        {
            return;
        }
        arraylist.add(onHandleAllocatePoolItem());
        i1--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public int getAvailableItemCount()
    {
        this;
        JVM INSTR monitorenter ;
        int i = mAvailableItems.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public int getAvailableItemCountMaximum()
    {
        return mAvailableItemCountMaximum;
    }

    public int getUnrecycledItemCount()
    {
        this;
        JVM INSTR monitorenter ;
        int i = mUnrecycledItemCount;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public Object obtainPoolItem()
    {
        this;
        JVM INSTR monitorenter ;
        if (mAvailableItems.size() <= 0) goto _L2; else goto _L1
_L1:
        Object obj = mAvailableItems.remove(-1 + mAvailableItems.size());
_L5:
        onHandleObtainItem(obj);
        mUnrecycledItemCount = 1 + mUnrecycledItemCount;
        this;
        JVM INSTR monitorexit ;
        return obj;
_L2:
        if (mGrowth != 1 && mAvailableItemCountMaximum != 0) goto _L4; else goto _L3
_L3:
        obj = onHandleAllocatePoolItem();
_L6:
        Debug.v((new StringBuilder(String.valueOf(getClass().getName()))).append("<").append(obj.getClass().getSimpleName()).append("> was exhausted, with ").append(mUnrecycledItemCount).append(" item not yet recycled. Allocated ").append(mGrowth).append(" more.").toString());
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L4:
        Object obj1;
        batchAllocatePoolItems(mGrowth);
        obj1 = mAvailableItems.remove(-1 + mAvailableItems.size());
        obj = obj1;
          goto _L6
    }

    protected abstract Object onAllocatePoolItem();

    protected Object onHandleAllocatePoolItem()
    {
        return onAllocatePoolItem();
    }

    protected void onHandleObtainItem(Object obj)
    {
    }

    protected void onHandleRecycleItem(Object obj)
    {
    }

    public void recyclePoolItem(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("Cannot recycle null item!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        onHandleRecycleItem(obj);
        if (mAvailableItems.size() < mAvailableItemCountMaximum)
        {
            mAvailableItems.add(obj);
        }
        mUnrecycledItemCount = -1 + mUnrecycledItemCount;
        if (mUnrecycledItemCount < 0)
        {
            Debug.e("More items recycled than obtained!");
        }
        this;
        JVM INSTR monitorexit ;
    }

    public void shufflePoolItems()
    {
        this;
        JVM INSTR monitorenter ;
        Collections.shuffle(mAvailableItems);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
