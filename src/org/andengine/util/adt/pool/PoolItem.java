// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.pool;


// Referenced classes of package org.andengine.util.adt.pool:
//            Pool

public abstract class PoolItem
{

    Pool mParent;
    boolean mRecycled;

    public PoolItem()
    {
        mRecycled = true;
    }

    public Pool getParent()
    {
        return mParent;
    }

    public boolean isFromPool(Pool pool)
    {
        return pool == mParent;
    }

    public boolean isRecycled()
    {
        return mRecycled;
    }

    protected void onObtain()
    {
    }

    protected void onRecycle()
    {
    }

    public void recycle()
    {
        if (mParent == null)
        {
            throw new IllegalStateException("Item already recycled!");
        } else
        {
            mParent.recycle(this);
            return;
        }
    }
}
