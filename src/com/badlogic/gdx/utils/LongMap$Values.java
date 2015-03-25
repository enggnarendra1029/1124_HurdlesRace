// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import java.util.Iterator;

// Referenced classes of package com.badlogic.gdx.utils:
//            LongMap, Array

public static class ator extends ator
    implements Iterable, Iterator
{

    public boolean hasNext()
    {
        return hasNext;
    }

    public Iterator iterator()
    {
        return this;
    }

    public Object next()
    {
        Object obj;
        if (nextIndex == -1)
        {
            obj = map.zeroValue;
        } else
        {
            obj = map.valueTable[nextIndex];
        }
        currentIndex = nextIndex;
        findNextIndex();
        return obj;
    }

    public volatile void remove()
    {
        super.remove();
    }

    public volatile void reset()
    {
        super.reset();
    }

    public Array toArray()
    {
        Array array = new Array(true, map.size);
        do
        {
            if (!hasNext)
            {
                return array;
            }
            array.add(next());
        } while (true);
    }

    public ator(LongMap longmap)
    {
        super(longmap);
    }
}
