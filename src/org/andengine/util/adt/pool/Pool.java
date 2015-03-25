// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.pool;


// Referenced classes of package org.andengine.util.adt.pool:
//            GenericPool, PoolItem

public abstract class Pool extends GenericPool
{

    public Pool()
    {
    }

    public Pool(int i)
    {
        super(i);
    }

    public Pool(int i, int j)
    {
        super(i, j);
    }

    public Pool(int i, int j, int k)
    {
        super(i, j, k);
    }

    protected volatile Object onHandleAllocatePoolItem()
    {
        return onHandleAllocatePoolItem();
    }

    protected PoolItem onHandleAllocatePoolItem()
    {
        PoolItem poolitem = (PoolItem)super.onHandleAllocatePoolItem();
        poolitem.mParent = this;
        return poolitem;
    }

    protected volatile void onHandleObtainItem(Object obj)
    {
        onHandleObtainItem((PoolItem)obj);
    }

    protected void onHandleObtainItem(PoolItem poolitem)
    {
        poolitem.mRecycled = false;
        poolitem.onObtain();
    }

    protected volatile void onHandleRecycleItem(Object obj)
    {
        onHandleRecycleItem((PoolItem)obj);
    }

    protected void onHandleRecycleItem(PoolItem poolitem)
    {
        poolitem.onRecycle();
        poolitem.mRecycled = true;
    }

    public boolean ownsPoolItem(PoolItem poolitem)
    {
        this;
        JVM INSTR monitorenter ;
        Pool pool = poolitem.mParent;
        boolean flag;
        if (pool == this)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    void recycle(PoolItem poolitem)
    {
        recyclePoolItem(poolitem);
    }

    public volatile void recyclePoolItem(Object obj)
    {
        recyclePoolItem((PoolItem)obj);
    }

    public void recyclePoolItem(PoolItem poolitem)
    {
        this;
        JVM INSTR monitorenter ;
        if (poolitem.mParent == null)
        {
            throw new IllegalArgumentException("PoolItem not assigned to a pool!");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (!poolitem.isFromPool(this))
        {
            throw new IllegalArgumentException("PoolItem from another pool!");
        }
        if (poolitem.isRecycled())
        {
            throw new IllegalArgumentException("PoolItem already recycled!");
        }
        super.recyclePoolItem(poolitem);
        this;
        JVM INSTR monitorexit ;
    }
}
