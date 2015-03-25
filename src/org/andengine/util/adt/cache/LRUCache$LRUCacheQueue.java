// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.cache;

import org.andengine.util.adt.pool.GenericPool;

// Referenced classes of package org.andengine.util.adt.cache:
//            LRUCache

static class _cls1.this._cls1
{

    private ode mHead;
    private final GenericPool mLRUCacheQueueNodePool = new GenericPool() {

        final LRUCache.LRUCacheQueue this$1;

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

        protected LRUCache.LRUCacheQueueNode onAllocatePoolItem()
        {
            return new LRUCache.LRUCacheQueueNode();
        }

        protected volatile void onHandleRecycleItem(Object obj)
        {
            onHandleRecycleItem((LRUCache.LRUCacheQueueNode)obj);
        }

        protected void onHandleRecycleItem(LRUCache.LRUCacheQueueNode lrucachequeuenode)
        {
            lrucachequeuenode.mKey = null;
            lrucachequeuenode.mPrevious = null;
            lrucachequeuenode.mNext = null;
        }

            
            {
                this$1 = LRUCache.LRUCacheQueue.this;
                super();
            }
    };
    private ode mTail;

    private ode add(ode ode)
    {
        if (isEmpty())
        {
            mHead = ode;
            mTail = mHead;
        } else
        {
            mTail.mNext = ode;
            ode.mPrevious = mTail;
            mTail = ode;
        }
        return mTail;
    }

    public ode add(Object obj)
    {
        ode ode = (ode)mLRUCacheQueueNodePool.obtainPoolItem();
        ode.mKey = obj;
        return add(ode);
    }

    public boolean isEmpty()
    {
        return mHead == null;
    }

    public void moveToTail(ode ode)
    {
        ode ode1 = ode.mNext;
        if (ode1 == null)
        {
            return;
        }
        ode ode2 = ode.mPrevious;
        ode1.mPrevious = ode2;
        if (ode2 == null)
        {
            mHead = ode1;
        } else
        {
            ode2.mNext = ode1;
        }
        mTail.mNext = ode;
        ode.mPrevious = mTail;
        ode.mNext = null;
        mTail = ode;
    }

    public Object poll()
    {
        ode ode = mHead;
        Object obj = mHead.mKey;
        if (mHead.mNext == null)
        {
            mHead = null;
            mTail = null;
        } else
        {
            mHead = mHead.mNext;
            mHead.mPrevious = null;
        }
        mLRUCacheQueueNodePool.recyclePoolItem(ode);
        return obj;
    }

    _cls1.this._cls1()
    {
    }
}
