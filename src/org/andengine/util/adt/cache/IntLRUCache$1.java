// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.cache;

import org.andengine.util.adt.pool.GenericPool;

// Referenced classes of package org.andengine.util.adt.cache:
//            IntLRUCache

class it> extends GenericPool
{

    final IntLRUCache this$0;

    protected volatile Object onAllocatePoolItem()
    {
        return onAllocatePoolItem();
    }

    protected tLRUCacheValueHolder onAllocatePoolItem()
    {
        return new tLRUCacheValueHolder();
    }

    protected volatile void onHandleRecycleItem(Object obj)
    {
        onHandleRecycleItem((tLRUCacheValueHolder)obj);
    }

    protected void onHandleRecycleItem(tLRUCacheValueHolder tlrucachevalueholder)
    {
        tlrucachevalueholder.mIntLRUCacheQueueNode = null;
        tlrucachevalueholder.mValue = null;
    }

    tLRUCacheValueHolder()
    {
        this$0 = IntLRUCache.this;
        super();
    }
}
