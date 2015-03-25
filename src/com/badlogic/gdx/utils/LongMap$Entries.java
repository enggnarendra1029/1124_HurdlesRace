// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.badlogic.gdx.utils:
//            LongMap

public static class nit> extends tor
    implements Iterable, Iterator
{

    private tor.reset entry;

    public boolean hasNext()
    {
        return hasNext;
    }

    public Iterator iterator()
    {
        return this;
    }

    public hasNext next()
    {
        if (!hasNext)
        {
            throw new NoSuchElementException();
        }
        long al[] = map.keyTable;
        if (nextIndex == -1)
        {
            entry.y = 0L;
            entry.lue = map.zeroValue;
        } else
        {
            entry.y = al[nextIndex];
            entry.lue = map.valueTable[nextIndex];
        }
        currentIndex = nextIndex;
        findNextIndex();
        return entry;
    }

    public volatile Object next()
    {
        return next();
    }

    public volatile void remove()
    {
        super.remove();
    }

    public volatile void reset()
    {
        super.reset();
    }

    public tor(LongMap longmap)
    {
        super(longmap);
        entry = new nit>();
    }
}
