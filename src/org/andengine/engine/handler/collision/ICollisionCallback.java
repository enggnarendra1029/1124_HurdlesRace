// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler.collision;

import org.andengine.entity.shape.IShape;

public interface ICollisionCallback
{

    public abstract boolean onCollision(IShape ishape, IShape ishape1);
}
