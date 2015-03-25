// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.badlogic.gdx.utils:
//            Array

public static class array
    implements Iterator
{

    private final Array array;
    int index;

    public boolean hasNext()
    {
        return index < array.size;
    }

    public Object next()
    {
        if (index >= array.size)
        {
            throw new NoSuchElementException(String.valueOf(index));
        } else
        {
            Object aobj[] = array.items;
            int i = index;
            index = i + 1;
            return aobj[i];
        }
    }

    public void remove()
    {
        index = -1 + index;
        array.removeIndex(index);
    }

    public void reset()
    {
        index = 0;
    }

    public (Array array1)
    {
        array = array1;
    }
}
