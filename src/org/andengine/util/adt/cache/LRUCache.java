// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.cache;

import java.util.HashMap;
import org.andengine.util.adt.pool.GenericPool;

public class LRUCache
{
    static class LRUCacheQueue
    {

        private LRUCacheQueueNode mHead;
        private final GenericPool mLRUCacheQueueNodePool = new _cls1();
        private LRUCacheQueueNode mTail;

        private LRUCacheQueueNode add(LRUCacheQueueNode lrucachequeuenode)
        {
            if (isEmpty())
            {
                mHead = lrucachequeuenode;
                mTail = mHead;
            } else
            {
                mTail.mNext = lrucachequeuenode;
                lrucachequeuenode.mPrevious = mTail;
                mTail = lrucachequeuenode;
            }
            return mTail;
        }

        public LRUCacheQueueNode add(Object obj)
        {
            LRUCacheQueueNode lrucachequeuenode = (LRUCacheQueueNode)mLRUCacheQueueNodePool.obtainPoolItem();
            lrucachequeuenode.mKey = obj;
            return add(lrucachequeuenode);
        }

        public boolean isEmpty()
        {
            return mHead == null;
        }

        public void moveToTail(LRUCacheQueueNode lrucachequeuenode)
        {
            LRUCacheQueueNode lrucachequeuenode1 = lrucachequeuenode.mNext;
            if (lrucachequeuenode1 == null)
            {
                return;
            }
            LRUCacheQueueNode lrucachequeuenode2 = lrucachequeuenode.mPrevious;
            lrucachequeuenode1.mPrevious = lrucachequeuenode2;
            if (lrucachequeuenode2 == null)
            {
                mHead = lrucachequeuenode1;
            } else
            {
                lrucachequeuenode2.mNext = lrucachequeuenode1;
            }
            mTail.mNext = lrucachequeuenode;
            lrucachequeuenode.mPrevious = mTail;
            lrucachequeuenode.mNext = null;
            mTail = lrucachequeuenode;
        }

        public Object poll()
        {
            LRUCacheQueueNode lrucachequeuenode = mHead;
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
            mLRUCacheQueueNodePool.recyclePoolItem(lrucachequeuenode);
            return obj;
        }

        LRUCacheQueue()
        {
        }
    }

    static class LRUCacheQueueNode
    {

        Object mKey;
        LRUCacheQueueNode mNext;
        LRUCacheQueueNode mPrevious;

        LRUCacheQueueNode()
        {
        }
    }

    static class LRUCacheValueHolder
    {

        LRUCacheQueueNode mLRUCacheQueueNode;
        Object mValue;

        LRUCacheValueHolder()
        {
        }
    }


    private final int mCapacity;
    private final LRUCacheQueue mLRUCacheQueue = new LRUCacheQueue();
    private final GenericPool mLRUCacheValueHolderPool = new GenericPool() {

        final LRUCache this$0;

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

        protected LRUCacheValueHolder onAllocatePoolItem()
        {
            return new LRUCacheValueHolder();
        }

        protected volatile void onHandleRecycleItem(Object obj)
        {
            onHandleRecycleItem((LRUCacheValueHolder)obj);
        }

        protected void onHandleRecycleItem(LRUCacheValueHolder lrucachevalueholder)
        {
            lrucachevalueholder.mLRUCacheQueueNode = null;
            lrucachevalueholder.mValue = null;
        }

            
            {
                this$0 = LRUCache.this;
                super();
            }
    };
    private final HashMap mMap;
    private int mSize;

    public LRUCache(int i)
    {
        mCapacity = i;
        mMap = new HashMap(i);
    }

    public void clear()
    {
        do
        {
            if (mLRUCacheQueue.isEmpty())
            {
                mSize = 0;
                return;
            }
            Object obj = mLRUCacheQueue.poll();
            LRUCacheValueHolder lrucachevalueholder = (LRUCacheValueHolder)mMap.remove(obj);
            mLRUCacheValueHolderPool.recyclePoolItem(lrucachevalueholder);
        } while (true);
    }

    public Object get(Object obj)
    {
        LRUCacheValueHolder lrucachevalueholder = (LRUCacheValueHolder)mMap.get(obj);
        if (lrucachevalueholder == null)
        {
            return null;
        } else
        {
            mLRUCacheQueue.moveToTail(lrucachevalueholder.mLRUCacheQueueNode);
            return lrucachevalueholder.mValue;
        }
    }

    public int getCapacity()
    {
        return mCapacity;
    }

    public int getSize()
    {
        return mSize;
    }

    public boolean isEmpty()
    {
        return mSize == 0;
    }

    public Object put(Object obj, Object obj1)
    {
        LRUCacheValueHolder lrucachevalueholder = (LRUCacheValueHolder)mMap.get(obj);
        if (lrucachevalueholder != null)
        {
            mLRUCacheQueue.moveToTail(lrucachevalueholder.mLRUCacheQueueNode);
            return lrucachevalueholder.mValue;
        }
        if (mSize >= mCapacity)
        {
            Object obj2 = mLRUCacheQueue.poll();
            mMap.remove(obj2);
            mSize = -1 + mSize;
        }
        LRUCacheQueueNode lrucachequeuenode = mLRUCacheQueue.add(obj);
        LRUCacheValueHolder lrucachevalueholder1 = (LRUCacheValueHolder)mLRUCacheValueHolderPool.obtainPoolItem();
        lrucachevalueholder1.mValue = obj1;
        lrucachevalueholder1.mLRUCacheQueueNode = lrucachequeuenode;
        mMap.put(obj, lrucachevalueholder1);
        mSize = 1 + mSize;
        return null;
    }

    // Unreferenced inner class org/andengine/util/adt/cache/LRUCache$LRUCacheQueue$1

/* anonymous class */
    class LRUCacheQueue._cls1 extends GenericPool
    {

        final LRUCacheQueue this$1;

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

        protected LRUCacheQueueNode onAllocatePoolItem()
        {
            return new LRUCacheQueueNode();
        }

        protected volatile void onHandleRecycleItem(Object obj)
        {
            onHandleRecycleItem((LRUCacheQueueNode)obj);
        }

        protected void onHandleRecycleItem(LRUCacheQueueNode lrucachequeuenode)
        {
            lrucachequeuenode.mKey = null;
            lrucachequeuenode.mPrevious = null;
            lrucachequeuenode.mNext = null;
        }

            
            {
                this$1 = LRUCacheQueue.this;
                super();
            }
    }

}
