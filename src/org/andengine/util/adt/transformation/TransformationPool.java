// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.transformation;

import org.andengine.util.adt.pool.GenericPool;

// Referenced classes of package org.andengine.util.adt.transformation:
//            Transformation

public class TransformationPool
{

    private static final GenericPool POOL = new GenericPool() {

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

        protected Transformation onAllocatePoolItem()
        {
            return new Transformation();
        }

    };

    public TransformationPool()
    {
    }

    public static Transformation obtain()
    {
        return (Transformation)POOL.obtainPoolItem();
    }

    public static void recycle(Transformation transformation)
    {
        transformation.setToIdentity();
        POOL.recyclePoolItem(transformation);
    }

}
