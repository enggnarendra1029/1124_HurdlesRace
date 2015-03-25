// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.pool;


// Referenced classes of package org.andengine.util.adt.pool:
//            PoolUpdateHandler, RunnablePoolItem, PoolItem

public abstract class RunnablePoolUpdateHandler extends PoolUpdateHandler
{

    public RunnablePoolUpdateHandler()
    {
    }

    public RunnablePoolUpdateHandler(int i)
    {
        super(i);
    }

    public RunnablePoolUpdateHandler(int i, int j)
    {
        super(i, j);
    }

    public RunnablePoolUpdateHandler(int i, int j, int k)
    {
        super(i, j, k);
    }

    protected volatile PoolItem onAllocatePoolItem()
    {
        return onAllocatePoolItem();
    }

    protected abstract RunnablePoolItem onAllocatePoolItem();

    protected volatile void onHandlePoolItem(PoolItem poolitem)
    {
        onHandlePoolItem((RunnablePoolItem)poolitem);
    }

    protected void onHandlePoolItem(RunnablePoolItem runnablepoolitem)
    {
        runnablepoolitem.run();
    }
}
