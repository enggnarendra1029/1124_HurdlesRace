// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Arrays;

public class LongArray
{

    public long items[];
    public boolean ordered;
    public int size;

    public LongArray()
    {
        this(true, 16);
    }

    public LongArray(int i)
    {
        this(true, i);
    }

    public LongArray(LongArray longarray)
    {
        ordered = longarray.ordered;
        size = longarray.size;
        items = new long[size];
        System.arraycopy(longarray.items, 0, items, 0, size);
    }

    public LongArray(boolean flag, int i)
    {
        ordered = flag;
        items = new long[i];
    }

    public LongArray(boolean flag, long al[])
    {
        this(flag, al.length);
        size = al.length;
        System.arraycopy(al, 0, items, 0, size);
    }

    public LongArray(long al[])
    {
        this(true, al);
    }

    public void add(long l)
    {
        long al[] = items;
        if (size == al.length)
        {
            al = resize(Math.max(8, (int)(1.75F * (float)size)));
        }
        int i = size;
        size = i + 1;
        al[i] = l;
    }

    public void addAll(LongArray longarray)
    {
        addAll(longarray, 0, longarray.size);
    }

    public void addAll(LongArray longarray, int i, int j)
    {
        if (i + j > longarray.size)
        {
            throw new IllegalArgumentException((new StringBuilder("offset + length must be <= size: ")).append(i).append(" + ").append(j).append(" <= ").append(longarray.size).toString());
        } else
        {
            addAll(longarray.items, i, j);
            return;
        }
    }

    public void addAll(long al[])
    {
        addAll(al, 0, al.length);
    }

    public void addAll(long al[], int i, int j)
    {
        long al1[] = items;
        int k = (j + size) - i;
        if (k >= al1.length)
        {
            al1 = resize(Math.max(8, (int)(1.75F * (float)k)));
        }
        System.arraycopy(al, i, al1, size, j);
        size = j + size;
    }

    public void clear()
    {
        size = 0;
    }

    public boolean contains(long l)
    {
        int i = -1 + size;
        long al[] = items;
        int j = i;
        do
        {
            if (j < 0)
            {
                int _tmp = j;
                return false;
            }
            int k = j - 1;
            if (al[j] == l)
            {
                return true;
            }
            j = k;
        } while (true);
    }

    public long[] ensureCapacity(int i)
    {
        int j = i + size;
        if (j >= items.length)
        {
            resize(Math.max(8, j));
        }
        return items;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof LongArray))
            {
                return false;
            }
            LongArray longarray = (LongArray)obj;
            int i = size;
            if (i != longarray.size)
            {
                return false;
            }
            int j = 0;
            while (j < i) 
            {
                if (items[j] != longarray.items[j])
                {
                    return false;
                }
                j++;
            }
        }
        return true;
    }

    public long first()
    {
        return items[0];
    }

    public long get(int i)
    {
        if (i >= size)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        } else
        {
            return items[i];
        }
    }

    public int indexOf(long l)
    {
        long al[];
        int i;
        int j;
        al = items;
        i = 0;
        j = size;
_L6:
        if (i < j) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        if (al[i] == l) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void insert(int i, long l)
    {
        long al[] = items;
        if (size == al.length)
        {
            al = resize(Math.max(8, (int)(1.75F * (float)size)));
        }
        if (ordered)
        {
            System.arraycopy(al, i, al, i + 1, size - i);
        } else
        {
            al[size] = al[i];
        }
        size = 1 + size;
        al[i] = l;
    }

    public int lastIndexOf(char c)
    {
        long al[];
        int i;
        al = items;
        i = -1 + size;
_L6:
        if (i >= 0) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        if (al[i] == (long)c) goto _L4; else goto _L3
_L3:
        i--;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public long peek()
    {
        return items[-1 + size];
    }

    public long pop()
    {
        long al[] = items;
        int i = -1 + size;
        size = i;
        return al[i];
    }

    public long random()
    {
        if (size == 0)
        {
            return 0L;
        } else
        {
            return items[MathUtils.random(0, -1 + size)];
        }
    }

    public long removeIndex(int i)
    {
        if (i >= size)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        }
        long al[] = items;
        long l = al[i];
        size = -1 + size;
        if (ordered)
        {
            System.arraycopy(al, i + 1, al, i, size - i);
            return l;
        } else
        {
            al[i] = al[size];
            return l;
        }
    }

    public boolean removeValue(long l)
    {
        long al[] = items;
        int i = 0;
        int j = size;
        do
        {
            if (i >= j)
            {
                return false;
            }
            if (al[i] == l)
            {
                removeIndex(i);
                return true;
            }
            i++;
        } while (true);
    }

    protected long[] resize(int i)
    {
        long al[] = new long[i];
        System.arraycopy(items, 0, al, 0, Math.min(size, al.length));
        items = al;
        return al;
    }

    public void reverse()
    {
        int i = 0;
        int j = -1 + size;
        int k = size / 2;
        do
        {
            if (i >= k)
            {
                return;
            }
            int l = j - i;
            long l1 = items[i];
            items[i] = items[l];
            items[l] = l1;
            i++;
        } while (true);
    }

    public void set(int i, long l)
    {
        if (i >= size)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        } else
        {
            items[i] = l;
            return;
        }
    }

    public void shrink()
    {
        resize(size);
    }

    public void shuffle()
    {
        int i = -1 + size;
        do
        {
            if (i < 0)
            {
                return;
            }
            int j = MathUtils.random(i);
            long l = items[i];
            items[i] = items[j];
            items[j] = l;
            i--;
        } while (true);
    }

    public void sort()
    {
        Arrays.sort(items, 0, size);
    }

    public void swap(int i, int j)
    {
        if (i >= size)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        }
        if (j >= size)
        {
            throw new IndexOutOfBoundsException(String.valueOf(j));
        } else
        {
            long al[] = items;
            long l = al[i];
            al[i] = al[j];
            al[j] = l;
            return;
        }
    }

    public long[] toArray()
    {
        long al[] = new long[size];
        System.arraycopy(items, 0, al, 0, size);
        return al;
    }

    public String toString()
    {
        if (size == 0)
        {
            return "[]";
        }
        long al[] = items;
        StringBuilder stringbuilder = new StringBuilder(32);
        stringbuilder.append('[');
        stringbuilder.append(al[0]);
        int i = 1;
        do
        {
            if (i >= size)
            {
                stringbuilder.append(']');
                return stringbuilder.toString();
            }
            stringbuilder.append(", ");
            stringbuilder.append(al[i]);
            i++;
        } while (true);
    }

    public String toString(String s)
    {
        if (size == 0)
        {
            return "";
        }
        long al[] = items;
        StringBuilder stringbuilder = new StringBuilder(32);
        stringbuilder.append(al[0]);
        int i = 1;
        do
        {
            if (i >= size)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append(s);
            stringbuilder.append(al[i]);
            i++;
        } while (true);
    }

    public void truncate(int i)
    {
        if (size > i)
        {
            size = i;
        }
    }
}
