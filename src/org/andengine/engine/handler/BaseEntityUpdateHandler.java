// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler;

import org.andengine.entity.IEntity;

// Referenced classes of package org.andengine.engine.handler:
//            IUpdateHandler

public abstract class BaseEntityUpdateHandler
    implements IUpdateHandler
{

    private IEntity mEntity;

    public BaseEntityUpdateHandler(IEntity ientity)
    {
        mEntity = ientity;
    }

    public IEntity getEntity()
    {
        return mEntity;
    }

    public final void onUpdate(float f)
    {
        onUpdate(f, mEntity);
    }

    protected abstract void onUpdate(float f, IEntity ientity);

    public void reset()
    {
    }

    public void setEntity(IEntity ientity)
    {
        mEntity = ientity;
    }
}
