// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;


// Referenced classes of package com.badlogic.gdx.utils:
//            LongMap, LongArray

public static class erator extends erator
{

    public long next()
    {
        long l;
        if (nextIndex == -1)
        {
            l = 0L;
        } else
        {
            l = map.keyTable[nextIndex];
        }
        currentIndex = nextIndex;
        findNextIndex();
        return l;
    }

    public volatile void remove()
    {
        super.remove();
    }

    public volatile void reset()
    {
        super.reset();
    }

    public LongArray toArray()
    {
        LongArray longarray = new LongArray(true, map.size);
        do
        {
            if (!hasNext)
            {
                return longarray;
            }
            longarray.add(next());
        } while (true);
    }

    public erator(LongMap longmap)
    {
        super(longmap);
    }
}
