// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity;

import org.andengine.util.call.ParameterCallable;

// Referenced classes of package org.andengine.entity:
//            IEntity

public interface IEntityParameterCallable
    extends ParameterCallable
{

    public abstract void call(IEntity ientity);
}
