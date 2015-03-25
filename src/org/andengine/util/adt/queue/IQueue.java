// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.queue;

import org.andengine.util.adt.list.IList;

public interface IQueue
    extends IList
{

    public abstract void enter(int i, Object obj)
        throws IndexOutOfBoundsException;

    public abstract void enter(Object obj);

    public abstract Object peek();

    public abstract Object poll();
}
