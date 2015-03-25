// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;


public interface IList
{

    public abstract void add(int i, Object obj)
        throws IndexOutOfBoundsException;

    public abstract void add(Object obj);

    public abstract void clear();

    public abstract Object get(int i)
        throws IndexOutOfBoundsException;

    public abstract int indexOf(Object obj);

    public abstract boolean isEmpty();

    public abstract Object remove(int i)
        throws IndexOutOfBoundsException;

    public abstract boolean remove(Object obj);

    public abstract Object removeFirst();

    public abstract Object removeLast();

    public abstract void set(int i, Object obj)
        throws IndexOutOfBoundsException;

    public abstract int size();
}
