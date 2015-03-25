// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util;

import com.badlogic.gdx.math.Vector2;
import org.andengine.util.adt.pool.GenericPool;

public class Vector2Pool
{

    private static final GenericPool POOL = new GenericPool() {

        protected Vector2 onAllocatePoolItem()
        {
            return new Vector2();
        }

        protected volatile Object onAllocatePoolItem()
        {
            return onAllocatePoolItem();
        }

    };

    public Vector2Pool()
    {
    }

    public static Vector2 obtain()
    {
        return (Vector2)POOL.obtainPoolItem();
    }

    public static Vector2 obtain(float f, float f1)
    {
        return ((Vector2)POOL.obtainPoolItem()).set(f, f1);
    }

    public static Vector2 obtain(Vector2 vector2)
    {
        return ((Vector2)POOL.obtainPoolItem()).set(vector2);
    }

    public static void recycle(Vector2 vector2)
    {
        POOL.recyclePoolItem(vector2);
    }

}
