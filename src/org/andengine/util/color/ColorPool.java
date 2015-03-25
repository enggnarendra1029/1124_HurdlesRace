// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.color;

import org.andengine.util.adt.pool.GenericPool;

// Referenced classes of package org.andengine.util.color:
//            Color

public class ColorPool extends GenericPool
{

    public ColorPool()
    {
    }

    protected volatile Object onAllocatePoolItem()
    {
        return onAllocatePoolItem();
    }

    protected Color onAllocatePoolItem()
    {
        return new Color(Color.WHITE);
    }

    protected volatile void onHandleRecycleItem(Object obj)
    {
        onHandleRecycleItem((Color)obj);
    }

    protected void onHandleRecycleItem(Color color)
    {
        color.setChecking(Color.WHITE);
        super.onHandleRecycleItem(color);
    }
}
