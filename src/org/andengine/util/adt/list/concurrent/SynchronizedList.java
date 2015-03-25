// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list.concurrent;

import org.andengine.util.adt.list.IList;

public class SynchronizedList
    implements IList
{

    protected final IList mList;

    public SynchronizedList(IList ilist)
    {
        mList = ilist;
    }

    public void add(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        this;
        JVM INSTR monitorenter ;
        mList.add(i, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void add(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        mList.add(obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        mList.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public Object get(int i)
        throws IndexOutOfBoundsException
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = mList.get(i);
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public int indexOf(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        int i = mList.indexOf(obj);
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
        boolean flag = mList.isEmpty();
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public Object remove(int i)
        throws IndexOutOfBoundsException
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = mList.remove(i);
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean remove(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mList.remove(obj);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public Object removeFirst()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = mList.removeFirst();
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public Object removeLast()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = mList.removeLast();
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public void set(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        this;
        JVM INSTR monitorenter ;
        mList.set(i, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int size()
    {
        this;
        JVM INSTR monitorenter ;
        int i = mList.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }
}
