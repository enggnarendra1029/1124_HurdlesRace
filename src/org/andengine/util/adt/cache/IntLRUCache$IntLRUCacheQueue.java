// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.cache;

import org.andengine.util.adt.pool.GenericPool;

// Referenced classes of package org.andengine.util.adt.cache:
//            IntLRUCache

static class _cls1.this._cls1
{

    private ode mHead;
    private final GenericPool mIntLRUCacheQueueNodePool = new GenericPool() {

        final IntLRUCache.IntLRUCacheQueue this$1;

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

        protected IntLRUCache.IntLRUCacheQueueNode onAllocatePoolItem()
        {
            return new IntLRUCache.IntLRUCacheQueueNode();
        }

        protected volatile void onHandleRecycleItem(Object obj)
        {
            onHandleRecycleItem((IntLRUCache.IntLRUCacheQueueNode)obj);
        }

        protected void onHandleRecycleItem(IntLRUCache.IntLRUCacheQueueNode intlrucachequeuenode)
        {
            intlrucachequeuenode.mKey = 0;
            intlrucachequeuenode.mPrevious = null;
            intlrucachequeuenode.mNext = null;
        }

            
            {
                this$1 = IntLRUCache.IntLRUCacheQueue.this;
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

    public ode add(int i)
    {
        ode ode = (ode)mIntLRUCacheQueueNodePool.obtainPoolItem();
        ode.mKey = i;
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

    public int poll()
    {
        ode ode = mHead;
        int i = mHead.mKey;
        if (i == 0)
        {
            throw new IllegalStateException();
        }
        if (mHead.mNext == null)
        {
            mHead = null;
            mTail = null;
        } else
        {
            mHead = mHead.mNext;
            mHead.mPrevious = null;
        }
        mIntLRUCacheQueueNodePool.recyclePoolItem(ode);
        return i;
    }

    _cls1.this._cls1()
    {
    }
}
