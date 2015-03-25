// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util;

import com.badlogic.gdx.math.Vector2;
import org.andengine.util.adt.pool.GenericPool;

// Referenced classes of package org.andengine.extension.physics.box2d.util:
//            Vector2Pool

class  extends GenericPool
{

    protected Vector2 onAllocatePoolItem()
    {
        return new Vector2();
    }

    protected volatile Object onAllocatePoolItem()
    {
        return onAllocatePoolItem();
    }

    ()
    {
    }
}
