// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler.collision;

import java.util.ArrayList;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.entity.shape.IShape;
import org.andengine.util.adt.list.ListUtils;

// Referenced classes of package org.andengine.engine.handler.collision:
//            ICollisionCallback

public class CollisionHandler
    implements IUpdateHandler
{

    private final IShape mCheckShape;
    private final ICollisionCallback mCollisionCallback;
    private final ArrayList mTargetStaticEntities;

    public CollisionHandler(ICollisionCallback icollisioncallback, IShape ishape, ArrayList arraylist)
        throws IllegalArgumentException
    {
        if (icollisioncallback == null)
        {
            throw new IllegalArgumentException("pCollisionCallback must not be null!");
        }
        if (ishape == null)
        {
            throw new IllegalArgumentException("pCheckShape must not be null!");
        }
        if (arraylist == null)
        {
            throw new IllegalArgumentException("pTargetStaticEntities must not be null!");
        } else
        {
            mCollisionCallback = icollisioncallback;
            mCheckShape = ishape;
            mTargetStaticEntities = arraylist;
            return;
        }
    }

    public CollisionHandler(ICollisionCallback icollisioncallback, IShape ishape, IShape ishape1)
        throws IllegalArgumentException
    {
        this(icollisioncallback, ishape, ListUtils.toList(ishape1));
    }

    public void onUpdate(float f)
    {
        IShape ishape = mCheckShape;
        ArrayList arraylist = mTargetStaticEntities;
        int i = arraylist.size();
        do
        {
            int j;
            for (j = 0; j >= i || ishape.collidesWith((IShape)arraylist.get(j)) && !mCollisionCallback.onCollision(ishape, (IShape)arraylist.get(j));)
            {
                return;
            }

            j++;
        } while (true);
    }

    public void reset()
    {
    }
}
