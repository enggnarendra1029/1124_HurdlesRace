// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.pool;

import org.andengine.entity.IEntity;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.util.adt.pool:
//            RunnablePoolUpdateHandler, EntityDetachRunnablePoolItem, RunnablePoolItem

public class EntityDetachRunnablePoolUpdateHandler extends RunnablePoolUpdateHandler
{

    public EntityDetachRunnablePoolUpdateHandler()
    {
    }

    public EntityDetachRunnablePoolUpdateHandler(int i)
    {
        super(i);
    }

    public EntityDetachRunnablePoolUpdateHandler(int i, int j)
    {
        super(i, j);
    }

    public EntityDetachRunnablePoolUpdateHandler(int i, int j, int k)
    {
        super(i, j, k);
    }

    protected EntityDetachRunnablePoolItem onAllocatePoolItem()
    {
        return new EntityDetachRunnablePoolItem();
    }

    protected volatile RunnablePoolItem onAllocatePoolItem()
    {
        return onAllocatePoolItem();
    }

    public void scheduleDetach(IEntity ientity)
    {
        scheduleDetach(ientity, null);
    }

    public void scheduleDetach(IEntity ientity, Callback callback)
    {
        EntityDetachRunnablePoolItem entitydetachrunnablepoolitem = (EntityDetachRunnablePoolItem)obtainPoolItem();
        entitydetachrunnablepoolitem.setEntity(ientity);
        entitydetachrunnablepoolitem.setCallback(callback);
        postPoolItem(entitydetachrunnablepoolitem);
    }
}
