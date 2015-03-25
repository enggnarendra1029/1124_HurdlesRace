// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.pool;

import android.util.SparseArray;

// Referenced classes of package org.andengine.util.adt.pool:
//            GenericPool

public class MultiPool
{

    private final SparseArray mPools = new SparseArray();

    public MultiPool()
    {
    }

    public Object obtainPoolItem(int i)
    {
        GenericPool genericpool = (GenericPool)mPools.get(i);
        if (genericpool == null)
        {
            return null;
        } else
        {
            return genericpool.obtainPoolItem();
        }
    }

    public void recyclePoolItem(int i, Object obj)
    {
        GenericPool genericpool = (GenericPool)mPools.get(i);
        if (genericpool != null)
        {
            genericpool.recyclePoolItem(obj);
        }
    }

    public void registerPool(int i, GenericPool genericpool)
    {
        mPools.put(i, genericpool);
    }
}
