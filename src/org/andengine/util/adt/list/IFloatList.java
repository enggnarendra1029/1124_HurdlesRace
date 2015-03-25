// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;


public interface IFloatList
{

    public abstract void add(float f);

    public abstract void add(int i, float f)
        throws ArrayIndexOutOfBoundsException;

    public abstract void clear();

    public abstract float get(int i)
        throws ArrayIndexOutOfBoundsException;

    public abstract boolean isEmpty();

    public abstract float remove(int i)
        throws ArrayIndexOutOfBoundsException;

    public abstract int size();

    public abstract float[] toArray();
}
