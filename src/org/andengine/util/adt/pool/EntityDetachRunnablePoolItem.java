// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.pool;

import org.andengine.entity.IEntity;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.util.adt.pool:
//            RunnablePoolItem

public class EntityDetachRunnablePoolItem extends RunnablePoolItem
{

    protected Callback mCallback;
    protected IEntity mEntity;

    public EntityDetachRunnablePoolItem()
    {
    }

    public void run()
    {
        mEntity.detachSelf();
        if (mCallback != null)
        {
            mCallback.onCallback(mEntity);
        }
    }

    public void setCallback(Callback callback)
    {
        mCallback = callback;
    }

    public void setEntity(IEntity ientity)
    {
        mEntity = ientity;
    }
}
