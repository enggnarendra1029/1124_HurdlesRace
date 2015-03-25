// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.cache.concurrent;

import org.andengine.util.adt.cache.IntLRUCache;

public class SynchronizedIntLRUCache extends IntLRUCache
{

    public SynchronizedIntLRUCache(int i)
    {
        super(i);
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        super.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public Object get(int i)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = super.get(i);
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public int getSize()
    {
        this;
        JVM INSTR monitorenter ;
        int i = super.getSize();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isEmpty()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = super.isEmpty();
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public Object put(int i, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1 = super.put(i, obj);
        this;
        JVM INSTR monitorexit ;
        return obj1;
        Exception exception;
        exception;
        throw exception;
    }
}
