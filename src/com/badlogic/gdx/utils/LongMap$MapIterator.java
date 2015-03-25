// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;


// Referenced classes of package com.badlogic.gdx.utils:
//            LongMap

private static class reset
{

    static final int INDEX_ILLEGAL = -2;
    static final int INDEX_ZERO = -1;
    int currentIndex;
    public boolean hasNext;
    final LongMap map;
    int nextIndex;

    void findNextIndex()
    {
        hasNext = false;
        long al[] = map.keyTable;
        int i = map.capacity + map.stashSize;
        do
        {
            int j = 1 + nextIndex;
            nextIndex = j;
            if (j >= i)
            {
                return;
            }
        } while (al[nextIndex] == 0L);
        hasNext = true;
    }

    public void remove()
    {
        LongMap longmap;
        if (currentIndex == -1 && map.hasZeroValue)
        {
            map.zeroValue = null;
            map.hasZeroValue = false;
        } else
        {
            if (currentIndex < 0)
            {
                throw new IllegalStateException("next must be called before remove.");
            }
            if (currentIndex >= map.capacity)
            {
                map.removeStashIndex(currentIndex);
            } else
            {
                map.keyTable[currentIndex] = 0L;
                map.valueTable[currentIndex] = null;
            }
        }
        currentIndex = -2;
        longmap = map;
        longmap.size = -1 + longmap.size;
    }

    public void reset()
    {
        currentIndex = -2;
        nextIndex = -1;
        if (map.hasZeroValue)
        {
            hasNext = true;
            return;
        } else
        {
            findNextIndex();
            return;
        }
    }

    public (LongMap longmap)
    {
        map = longmap;
        reset();
    }
}
