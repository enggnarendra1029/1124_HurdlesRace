// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.queue.concurrent;

import org.andengine.util.adt.queue.IQueue;

public class SynchronizedQueue
    implements IQueue
{

    private final IQueue mQueue;

    public SynchronizedQueue(IQueue iqueue)
    {
        mQueue = iqueue;
    }

    public void add(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        this;
        JVM INSTR monitorenter ;
        mQueue.add(i, obj);
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
        mQueue.add(obj);
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
        mQueue.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void enter(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        this;
        JVM INSTR monitorenter ;
        mQueue.enter(i, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void enter(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        mQueue.enter(obj);
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
        Object obj = mQueue.get(i);
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
        int i = mQueue.indexOf(obj);
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
        boolean flag = mQueue.isEmpty();
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public Object peek()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = mQueue.peek();
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public Object poll()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = mQueue.poll();
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public Object remove(int i)
        throws IndexOutOfBoundsException
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = mQueue.remove(i);
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
        boolean flag = mQueue.remove(obj);
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
        Object obj = mQueue.removeFirst();
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
        Object obj = mQueue.removeLast();
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
        mQueue.set(i, obj);
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
        int i = mQueue.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }
}
