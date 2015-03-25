// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity;

import java.util.Comparator;

// Referenced classes of package org.andengine.entity:
//            ZIndexSorter, IEntity

class this._cls0
    implements Comparator
{

    final ZIndexSorter this$0;

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((IEntity)obj, (IEntity)obj1);
    }

    public int compare(IEntity ientity, IEntity ientity1)
    {
        return ientity.getZIndex() - ientity1.getZIndex();
    }

    ()
    {
        this$0 = ZIndexSorter.this;
        super();
    }
}
