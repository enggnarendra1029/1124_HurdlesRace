// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.pool;

import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.util.adt.list.ShiftList;
import org.andengine.util.adt.queue.IQueue;
import org.andengine.util.adt.queue.concurrent.SynchronizedQueue;

// Referenced classes of package org.andengine.util.adt.pool:
//            Pool, PoolItem

public abstract class PoolUpdateHandler
    implements IUpdateHandler
{

    private final Pool mPool;
    private final IQueue mScheduledPoolItemQueue;

    public PoolUpdateHandler()
    {
        mScheduledPoolItemQueue = new SynchronizedQueue(new ShiftList());
        mPool = new Pool() {

            final PoolUpdateHandler this$0;

            protected volatile Object onAllocatePoolItem()
            {
                return onAllocatePoolItem();
            }

            protected PoolItem onAllocatePoolItem()
            {
                return PoolUpdateHandler.this.onAllocatePoolItem();
            }

            
            {
                this$0 = PoolUpdateHandler.this;
                super();
            }
        };
    }

    public PoolUpdateHandler(int i)
    {
        mScheduledPoolItemQueue = new SynchronizedQueue(new ShiftList());
        mPool = new Pool(i) {

            final PoolUpdateHandler this$0;

            protected volatile Object onAllocatePoolItem()
            {
                return onAllocatePoolItem();
            }

            protected PoolItem onAllocatePoolItem()
            {
                return PoolUpdateHandler.this.onAllocatePoolItem();
            }

            
            {
                this$0 = PoolUpdateHandler.this;
                super(i);
            }
        };
    }

    public PoolUpdateHandler(int i, int j)
    {
        mScheduledPoolItemQueue = new SynchronizedQueue(new ShiftList());
        mPool = new Pool(i, j) {

            final PoolUpdateHandler this$0;

            protected volatile Object onAllocatePoolItem()
            {
                return onAllocatePoolItem();
            }

            protected PoolItem onAllocatePoolItem()
            {
                return PoolUpdateHandler.this.onAllocatePoolItem();
            }

            
            {
                this$0 = PoolUpdateHandler.this;
                super(i, j);
            }
        };
    }

    public PoolUpdateHandler(int i, int j, int k)
    {
        mScheduledPoolItemQueue = new SynchronizedQueue(new ShiftList());
        mPool = new Pool(i, j, k) {

            final PoolUpdateHandler this$0;

            protected volatile Object onAllocatePoolItem()
            {
                return onAllocatePoolItem();
            }

            protected PoolItem onAllocatePoolItem()
            {
                return PoolUpdateHandler.this.onAllocatePoolItem();
            }

            
            {
                this$0 = PoolUpdateHandler.this;
                super(i, j, k);
            }
        };
    }

    public PoolItem obtainPoolItem()
    {
        return (PoolItem)mPool.obtainPoolItem();
    }

    protected abstract PoolItem onAllocatePoolItem();

    protected abstract void onHandlePoolItem(PoolItem poolitem);

    public void onUpdate(float f)
    {
        IQueue iqueue = mScheduledPoolItemQueue;
        Pool pool = mPool;
        do
        {
            PoolItem poolitem = (PoolItem)iqueue.poll();
            if (poolitem == null)
            {
                return;
            }
            onHandlePoolItem(poolitem);
            pool.recyclePoolItem(poolitem);
        } while (true);
    }

    public void postPoolItem(PoolItem poolitem)
    {
        if (poolitem == null)
        {
            throw new IllegalArgumentException("PoolItem already recycled!");
        }
        if (!mPool.ownsPoolItem(poolitem))
        {
            throw new IllegalArgumentException("PoolItem from another pool!");
        } else
        {
            mScheduledPoolItemQueue.enter(poolitem);
            return;
        }
    }

    public void reset()
    {
        IQueue iqueue = mScheduledPoolItemQueue;
        Pool pool = mPool;
        do
        {
            PoolItem poolitem = (PoolItem)iqueue.poll();
            if (poolitem == null)
            {
                return;
            }
            pool.recyclePoolItem(poolitem);
        } while (true);
    }
}
