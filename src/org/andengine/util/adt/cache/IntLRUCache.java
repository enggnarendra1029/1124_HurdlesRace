// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.cache;

import android.util.SparseArray;
import org.andengine.util.adt.pool.GenericPool;

public class IntLRUCache
{
    static class IntLRUCacheQueue
    {

        private IntLRUCacheQueueNode mHead;
        private final GenericPool mIntLRUCacheQueueNodePool = new _cls1();
        private IntLRUCacheQueueNode mTail;

        private IntLRUCacheQueueNode add(IntLRUCacheQueueNode intlrucachequeuenode)
        {
            if (isEmpty())
            {
                mHead = intlrucachequeuenode;
                mTail = mHead;
            } else
            {
                mTail.mNext = intlrucachequeuenode;
                intlrucachequeuenode.mPrevious = mTail;
                mTail = intlrucachequeuenode;
            }
            return mTail;
        }

        public IntLRUCacheQueueNode add(int i)
        {
            IntLRUCacheQueueNode intlrucachequeuenode = (IntLRUCacheQueueNode)mIntLRUCacheQueueNodePool.obtainPoolItem();
            intlrucachequeuenode.mKey = i;
            return add(intlrucachequeuenode);
        }

        public boolean isEmpty()
        {
            return mHead == null;
        }

        public void moveToTail(IntLRUCacheQueueNode intlrucachequeuenode)
        {
            IntLRUCacheQueueNode intlrucachequeuenode1 = intlrucachequeuenode.mNext;
            if (intlrucachequeuenode1 == null)
            {
                return;
            }
            IntLRUCacheQueueNode intlrucachequeuenode2 = intlrucachequeuenode.mPrevious;
            intlrucachequeuenode1.mPrevious = intlrucachequeuenode2;
            if (intlrucachequeuenode2 == null)
            {
                mHead = intlrucachequeuenode1;
            } else
            {
                intlrucachequeuenode2.mNext = intlrucachequeuenode1;
            }
            mTail.mNext = intlrucachequeuenode;
            intlrucachequeuenode.mPrevious = mTail;
            intlrucachequeuenode.mNext = null;
            mTail = intlrucachequeuenode;
        }

        public int poll()
        {
            IntLRUCacheQueueNode intlrucachequeuenode = mHead;
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
            mIntLRUCacheQueueNodePool.recyclePoolItem(intlrucachequeuenode);
            return i;
        }

        IntLRUCacheQueue()
        {
        }
    }

    static class IntLRUCacheQueueNode
    {

        int mKey;
        IntLRUCacheQueueNode mNext;
        IntLRUCacheQueueNode mPrevious;

        IntLRUCacheQueueNode()
        {
        }
    }

    static class IntLRUCacheValueHolder
    {

        IntLRUCacheQueueNode mIntLRUCacheQueueNode;
        Object mValue;

        IntLRUCacheValueHolder()
        {
        }
    }


    private final int mCapacity;
    private final IntLRUCacheQueue mIntLRUCacheQueue = new IntLRUCacheQueue();
    private final GenericPool mIntLRUCacheValueHolderPool = new GenericPool() {

        final IntLRUCache this$0;

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

        protected IntLRUCacheValueHolder onAllocatePoolItem()
        {
            return new IntLRUCacheValueHolder();
        }

        protected volatile void onHandleRecycleItem(Object obj)
        {
            onHandleRecycleItem((IntLRUCacheValueHolder)obj);
        }

        protected void onHandleRecycleItem(IntLRUCacheValueHolder intlrucachevalueholder)
        {
            intlrucachevalueholder.mIntLRUCacheQueueNode = null;
            intlrucachevalueholder.mValue = null;
        }

            
            {
                this$0 = IntLRUCache.this;
                super();
            }
    };
    private int mSize;
    private final SparseArray mSparseArray;

    public IntLRUCache(int i)
    {
        mCapacity = i;
        mSparseArray = new SparseArray(i);
    }

    public void clear()
    {
        do
        {
            if (mIntLRUCacheQueue.isEmpty())
            {
                mSize = 0;
                return;
            }
            int i = mIntLRUCacheQueue.poll();
            IntLRUCacheValueHolder intlrucachevalueholder = (IntLRUCacheValueHolder)mSparseArray.get(i);
            if (intlrucachevalueholder == null)
            {
                throw new IllegalArgumentException();
            }
            mSparseArray.remove(i);
            mIntLRUCacheValueHolderPool.recyclePoolItem(intlrucachevalueholder);
        } while (true);
    }

    public Object get(int i)
    {
        IntLRUCacheValueHolder intlrucachevalueholder = (IntLRUCacheValueHolder)mSparseArray.get(i);
        if (intlrucachevalueholder == null)
        {
            return null;
        } else
        {
            mIntLRUCacheQueue.moveToTail(intlrucachevalueholder.mIntLRUCacheQueueNode);
            return intlrucachevalueholder.mValue;
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

    public Object put(int i, Object obj)
    {
        IntLRUCacheValueHolder intlrucachevalueholder = (IntLRUCacheValueHolder)mSparseArray.get(i);
        if (intlrucachevalueholder != null)
        {
            mIntLRUCacheQueue.moveToTail(intlrucachevalueholder.mIntLRUCacheQueueNode);
            return intlrucachevalueholder.mValue;
        }
        if (mSize >= mCapacity)
        {
            int j = mIntLRUCacheQueue.poll();
            mSparseArray.remove(j);
            mSize = -1 + mSize;
        }
        IntLRUCacheQueueNode intlrucachequeuenode = mIntLRUCacheQueue.add(i);
        IntLRUCacheValueHolder intlrucachevalueholder1 = (IntLRUCacheValueHolder)mIntLRUCacheValueHolderPool.obtainPoolItem();
        intlrucachevalueholder1.mValue = obj;
        intlrucachevalueholder1.mIntLRUCacheQueueNode = intlrucachequeuenode;
        mSparseArray.put(i, intlrucachevalueholder1);
        mSize = 1 + mSize;
        return null;
    }

    // Unreferenced inner class org/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue$1

/* anonymous class */
    class IntLRUCacheQueue._cls1 extends GenericPool
    {

        final IntLRUCacheQueue this$1;

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

        protected IntLRUCacheQueueNode onAllocatePoolItem()
        {
            return new IntLRUCacheQueueNode();
        }

        protected volatile void onHandleRecycleItem(Object obj)
        {
            onHandleRecycleItem((IntLRUCacheQueueNode)obj);
        }

        protected void onHandleRecycleItem(IntLRUCacheQueueNode intlrucachequeuenode)
        {
            intlrucachequeuenode.mKey = 0;
            intlrucachequeuenode.mPrevious = null;
            intlrucachequeuenode.mNext = null;
        }

            
            {
                this$1 = IntLRUCacheQueue.this;
                super();
            }
    }

}
