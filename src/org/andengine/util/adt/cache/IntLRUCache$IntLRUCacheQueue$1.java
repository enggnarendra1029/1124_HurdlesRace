// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.cache;

import org.andengine.util.adt.pool.GenericPool;

// Referenced classes of package org.andengine.util.adt.cache:
//            IntLRUCache

class this._cls1 extends GenericPool
{

    final e.mNext this$1;

    protected volatile Object onAllocatePoolItem()
    {
        return onAllocatePoolItem();
    }

    protected e onAllocatePoolItem()
    {
        return new e();
    }

    protected volatile void onHandleRecycleItem(Object obj)
    {
        onHandleRecycleItem((e)obj);
    }

    protected void onHandleRecycleItem(e e)
    {
        e.mKey = 0;
        e.mPrevious = null;
        e.mNext = null;
    }

    e()
    {
        this$1 = this._cls1.this;
        super();
    }
}
