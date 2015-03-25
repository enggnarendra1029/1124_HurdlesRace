// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.map;

import java.util.Arrays;

public class MultiKey
{

    private final int mCachedHashCode;
    private final Object mKeys[];

    public transient MultiKey(Object aobj[])
    {
        mKeys = aobj;
        mCachedHashCode = hash(aobj);
    }

    public static transient int hash(Object aobj[])
    {
        int i = 0;
        int j = aobj.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                return i;
            }
            Object obj = aobj[k];
            if (obj != null)
            {
                i ^= obj.hashCode();
            }
            k++;
        } while (true);
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj instanceof MultiKey)
        {
            MultiKey multikey = (MultiKey)obj;
            return Arrays.equals(mKeys, multikey.mKeys);
        } else
        {
            return false;
        }
    }

    public Object getKey(int i)
    {
        return mKeys[i];
    }

    public Object[] getKeys()
    {
        return mKeys;
    }

    public int hashCode()
    {
        return mCachedHashCode;
    }

    public int size()
    {
        return mKeys.length;
    }

    public String toString()
    {
        return (new StringBuilder("MultiKey")).append(Arrays.asList(mKeys).toString()).toString();
    }
}
