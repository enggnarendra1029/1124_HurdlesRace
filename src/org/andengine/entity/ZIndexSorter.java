// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity;

import java.util.Comparator;
import java.util.List;
import org.andengine.util.adt.list.IList;
import org.andengine.util.algorithm.sort.InsertionSorter;

// Referenced classes of package org.andengine.entity:
//            IEntity

public class ZIndexSorter extends InsertionSorter
{

    private static ZIndexSorter INSTANCE;
    private final Comparator mZIndexComparator = new Comparator() {

        final ZIndexSorter this$0;

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((IEntity)obj, (IEntity)obj1);
        }

        public int compare(IEntity ientity, IEntity ientity1)
        {
            return ientity.getZIndex() - ientity1.getZIndex();
        }

            
            {
                this$0 = ZIndexSorter.this;
                super();
            }
    };

    private ZIndexSorter()
    {
    }

    public static ZIndexSorter getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new ZIndexSorter();
        }
        return INSTANCE;
    }

    public void sort(List list)
    {
        sort(list, mZIndexComparator);
    }

    public void sort(List list, int i, int j)
    {
        sort(list, i, j, mZIndexComparator);
    }

    public void sort(IList ilist)
    {
        sort(ilist, mZIndexComparator);
    }

    public void sort(IList ilist, int i, int j)
    {
        sort(ilist, i, j, mZIndexComparator);
    }

    public void sort(IEntity aientity[])
    {
        sort(((Object []) (aientity)), mZIndexComparator);
    }

    public void sort(IEntity aientity[], int i, int j)
    {
        sort(((Object []) (aientity)), i, j, mZIndexComparator);
    }
}
