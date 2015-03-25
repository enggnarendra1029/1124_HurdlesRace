// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.touch.controller;

import org.andengine.util.adt.pool.RunnablePoolItem;
import org.andengine.util.adt.pool.RunnablePoolUpdateHandler;

// Referenced classes of package org.andengine.input.touch.controller:
//            BaseTouchController

class > extends RunnablePoolUpdateHandler
{

    final BaseTouchController this$0;

    protected uchEventRunnablePoolItem onAllocatePoolItem()
    {
        return new uchEventRunnablePoolItem(BaseTouchController.this);
    }

    protected volatile RunnablePoolItem onAllocatePoolItem()
    {
        return onAllocatePoolItem();
    }

    uchEventRunnablePoolItem()
    {
        this$0 = BaseTouchController.this;
        super();
    }
}
