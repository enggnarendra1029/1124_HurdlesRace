// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.badlogic.gdx.utils:
//            LongArray, Array

public class LongMap
{
    public static class Entries extends MapIterator
        implements Iterable, Iterator
    {

        private LongMap.Entry entry;

        public boolean hasNext()
        {
            return hasNext;
        }

        public Iterator iterator()
        {
            return this;
        }

        public LongMap.Entry next()
        {
            if (!hasNext)
            {
                throw new NoSuchElementException();
            }
            long al[] = map.keyTable;
            if (nextIndex == -1)
            {
                entry.key = 0L;
                entry.value = map.zeroValue;
            } else
            {
                entry.key = al[nextIndex];
                entry.value = map.valueTable[nextIndex];
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

        public Entries(LongMap longmap)
        {
            super(longmap);
            entry = new LongMap.Entry();
        }
    }

    public static class Entry
    {

        public long key;
        public Object value;

        public String toString()
        {
            return (new StringBuilder(String.valueOf(key))).append("=").append(value).toString();
        }

        public Entry()
        {
        }
    }

    public static class Keys extends MapIterator
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

        public Keys(LongMap longmap)
        {
            super(longmap);
        }
    }

    private static class MapIterator
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

        public MapIterator(LongMap longmap)
        {
            map = longmap;
            reset();
        }
    }

    public static class Values extends MapIterator
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

        public Values(LongMap longmap)
        {
            super(longmap);
        }
    }


    private static final int EMPTY = 0;
    private static final int PRIME1 = 0xbe1f14b1;
    private static final int PRIME2 = 0xb4b82e39;
    private static final int PRIME3 = 0xced1c241;
    int capacity;
    private Entries entries;
    boolean hasZeroValue;
    private int hashShift;
    long keyTable[];
    private Keys keys;
    private float loadFactor;
    private int mask;
    private int pushIterations;
    public int size;
    private int stashCapacity;
    int stashSize;
    private int threshold;
    Object valueTable[];
    private Values values;
    Object zeroValue;

    public LongMap()
    {
        this(32, 0.8F);
    }

    public LongMap(int i)
    {
        this(i, 0.8F);
    }

    public LongMap(int i, float f)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("initialCapacity must be >= 0: ")).append(i).toString());
        }
        if (capacity > 0x40000000)
        {
            throw new IllegalArgumentException((new StringBuilder("initialCapacity is too large: ")).append(i).toString());
        }
        capacity = MathUtils.nextPowerOfTwo(i);
        if (f <= 0.0F)
        {
            throw new IllegalArgumentException((new StringBuilder("loadFactor must be > 0: ")).append(f).toString());
        } else
        {
            loadFactor = f;
            threshold = (int)(f * (float)capacity);
            mask = -1 + capacity;
            hashShift = 63 - Long.numberOfTrailingZeros(capacity);
            stashCapacity = Math.max(3, 2 * (int)Math.ceil(Math.log(capacity)));
            pushIterations = Math.max(Math.min(capacity, 8), (int)Math.sqrt(capacity) / 8);
            keyTable = new long[capacity + stashCapacity];
            valueTable = new Object[keyTable.length];
            return;
        }
    }

    private boolean containsKeyStash(long l)
    {
        long al[] = keyTable;
        int i = capacity;
        int j = i + stashSize;
        do
        {
            if (i >= j)
            {
                return false;
            }
            if (al[i] == l)
            {
                return true;
            }
            i++;
        } while (true);
    }

    private Object getStash(long l, Object obj)
    {
        long al[] = keyTable;
        int i = capacity;
        int j = i + stashSize;
        do
        {
            if (i >= j)
            {
                return obj;
            }
            if (al[i] == l)
            {
                return valueTable[i];
            }
            i++;
        } while (true);
    }

    private int hash2(long l)
    {
        long l1 = l * 0xffffffffb4b82e39L;
        return (int)((l1 ^ l1 >>> hashShift) & (long)mask);
    }

    private int hash3(long l)
    {
        long l1 = l * 0xffffffffced1c241L;
        return (int)((l1 ^ l1 >>> hashShift) & (long)mask);
    }

    private void push(long l, Object obj, int i, long l1, int j, 
            long l2, int k, long l3)
    {
        long al[];
        Object aobj[];
        int i1;
        int j1;
        int k1;
        al = keyTable;
        aobj = valueTable;
        i1 = mask;
        j1 = 0;
        k1 = pushIterations;
_L6:
        MathUtils.random(2);
        JVM INSTR tableswitch 0 1: default 52
    //                   0 146
    //                   1 172;
           goto _L1 _L2 _L3
_L3:
        break MISSING_BLOCK_LABEL_172;
_L1:
        long l4;
        Object obj1;
        l4 = l3;
        obj1 = aobj[k];
        al[k] = l;
        aobj[k] = obj;
_L4:
        i = (int)(l4 & (long)i1);
        l1 = al[i];
        if (l1 == 0L)
        {
            al[i] = l4;
            aobj[i] = obj1;
            int k2 = size;
            size = k2 + 1;
            if (k2 >= threshold)
            {
                resize(capacity << 1);
            }
        } else
        {
            j = hash2(l4);
            l2 = al[j];
            if (l2 == 0L)
            {
                al[j] = l4;
                aobj[j] = obj1;
                int j2 = size;
                size = j2 + 1;
                if (j2 >= threshold)
                {
                    resize(capacity << 1);
                    return;
                }
            } else
            {
label0:
                {
                    k = hash3(l4);
                    l3 = al[k];
                    if (l3 != 0L)
                    {
                        break label0;
                    }
                    al[k] = l4;
                    aobj[k] = obj1;
                    int i2 = size;
                    size = i2 + 1;
                    if (i2 >= threshold)
                    {
                        resize(capacity << 1);
                        return;
                    }
                }
            }
        }
        return;
_L2:
        l4 = l1;
        obj1 = aobj[i];
        al[i] = l;
        aobj[i] = obj;
          goto _L4
        l4 = l2;
        obj1 = aobj[j];
        al[j] = l;
        aobj[j] = obj;
          goto _L4
        if (++j1 == k1)
        {
            putStash(l4, obj1);
            return;
        }
        l = l4;
        obj = obj1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void putResize(long l, Object obj)
    {
        if (l != 0L) goto _L2; else goto _L1
_L1:
        zeroValue = obj;
        hasZeroValue = true;
_L4:
        return;
_L2:
        int i;
        long l1;
        i = (int)(l & (long)mask);
        l1 = keyTable[i];
        if (l1 != 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        keyTable[i] = l;
        valueTable[i] = obj;
        int k1 = size;
        size = k1 + 1;
        if (k1 >= threshold)
        {
            resize(capacity << 1);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        int j;
        long l2;
        j = hash2(l);
        l2 = keyTable[j];
        if (l2 != 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        keyTable[j] = l;
        valueTable[j] = obj;
        int j1 = size;
        size = j1 + 1;
        if (j1 >= threshold)
        {
            resize(capacity << 1);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
        int k = hash3(l);
        long l3 = keyTable[k];
        if (l3 == 0L)
        {
            keyTable[k] = l;
            valueTable[k] = obj;
            int i1 = size;
            size = i1 + 1;
            if (i1 >= threshold)
            {
                resize(capacity << 1);
                return;
            }
        } else
        {
            push(l, obj, i, l1, j, l2, k, l3);
            return;
        }
        if (true) goto _L4; else goto _L6
_L6:
    }

    private void putStash(long l, Object obj)
    {
        if (stashSize == stashCapacity)
        {
            resize(capacity << 1);
            put(l, obj);
            return;
        } else
        {
            int i = capacity + stashSize;
            keyTable[i] = l;
            valueTable[i] = obj;
            stashSize = 1 + stashSize;
            size = 1 + size;
            return;
        }
    }

    private void resize(int i)
    {
        int j = capacity + stashSize;
        capacity = i;
        threshold = (int)((float)i * loadFactor);
        mask = i - 1;
        hashShift = 63 - Long.numberOfTrailingZeros(i);
        stashCapacity = Math.max(3, 2 * (int)Math.ceil(Math.log(i)));
        pushIterations = Math.max(Math.min(i, 8), (int)Math.sqrt(i) / 8);
        long al[] = keyTable;
        Object aobj[] = valueTable;
        keyTable = new long[i + stashCapacity];
        valueTable = new Object[i + stashCapacity];
        int k;
        int l;
        if (hasZeroValue)
        {
            k = 1;
        } else
        {
            k = 0;
        }
        size = k;
        stashSize = 0;
        l = 0;
        do
        {
            if (l >= j)
            {
                return;
            }
            long l1 = al[l];
            if (l1 != 0L)
            {
                putResize(l1, aobj[l]);
            }
            l++;
        } while (true);
    }

    public void clear()
    {
        long al[] = keyTable;
        Object aobj[] = valueTable;
        int i = capacity + stashSize;
        do
        {
            int j = i - 1;
            if (i <= 0)
            {
                size = 0;
                stashSize = 0;
                zeroValue = null;
                hasZeroValue = false;
                return;
            }
            al[j] = 0L;
            aobj[j] = null;
            i = j;
        } while (true);
    }

    public boolean containsKey(long l)
    {
        if (l == 0L)
        {
            return hasZeroValue;
        }
        int i = (int)(l & (long)mask);
        if (keyTable[i] != l)
        {
            int j = hash2(l);
            if (keyTable[j] != l)
            {
                int k = hash3(l);
                if (keyTable[k] != l)
                {
                    return containsKeyStash(l);
                }
            }
        }
        return true;
    }

    public boolean containsValue(Object obj, boolean flag)
    {
        Object aobj[] = valueTable;
        if (obj != null) goto _L2; else goto _L1
_L1:
        if (!hasZeroValue || zeroValue != null) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        long al[];
        int i1;
        al = keyTable;
        i1 = capacity + stashSize;
_L6:
        int j1;
        j1 = i1 - 1;
        if (i1 > 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L9:
        return false;
        if (al[j1] != 0L && aobj[j1] == null) goto _L3; else goto _L5
_L5:
        i1 = j1;
          goto _L6
_L2:
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (obj == zeroValue) goto _L3; else goto _L7
_L7:
        int k = capacity + stashSize;
_L11:
        int l = k - 1;
        if (k <= 0) goto _L9; else goto _L8
_L8:
        if (aobj[l] == obj) goto _L3; else goto _L10
_L10:
        k = l;
          goto _L11
        if (hasZeroValue && obj.equals(zeroValue)) goto _L3; else goto _L12
_L12:
        int i = capacity + stashSize;
_L15:
        int j = i - 1;
        if (i <= 0) goto _L9; else goto _L13
_L13:
        if (obj.equals(aobj[j])) goto _L3; else goto _L14
_L14:
        i = j;
          goto _L15
    }

    public void ensureCapacity(int i)
    {
        int j = i + size;
        if (j >= threshold)
        {
            resize(MathUtils.nextPowerOfTwo((int)((float)j / loadFactor)));
        }
    }

    public Entries entries()
    {
        if (entries == null)
        {
            entries = new Entries(this);
        } else
        {
            entries.reset();
        }
        return entries;
    }

    public long findKey(Object obj, boolean flag, long l)
    {
        Object aobj[] = valueTable;
        if (obj != null) goto _L2; else goto _L1
_L1:
        if (!hasZeroValue || zeroValue != null) goto _L4; else goto _L3
_L3:
        l = 0L;
_L6:
        return l;
_L4:
        long al[];
        int j1;
        al = keyTable;
        j1 = capacity + stashSize;
_L12:
        int k1 = j1 - 1;
        if (j1 <= 0) goto _L6; else goto _L5
_L5:
        if (al[k1] != 0L && aobj[k1] == null)
        {
            return al[k1];
        }
        break MISSING_BLOCK_LABEL_209;
_L2:
        if (!flag) goto _L8; else goto _L7
_L7:
        int k;
        if (obj == zeroValue)
        {
            return 0L;
        }
        k = capacity + stashSize;
_L11:
        int i1;
        i1 = k - 1;
        if (k > 0)
        {
            if (aobj[i1] == obj)
            {
                return keyTable[i1];
            }
            break MISSING_BLOCK_LABEL_202;
        }
          goto _L6
_L8:
        int i;
        if (hasZeroValue && obj.equals(zeroValue))
        {
            return 0L;
        }
        i = capacity + stashSize;
_L10:
        int j = i - 1;
        if (i <= 0) goto _L6; else goto _L9
_L9:
        if (obj.equals(aobj[j]))
        {
            return keyTable[j];
        }
        i = j;
          goto _L10
          goto _L6
        k = i1;
          goto _L11
        j1 = k1;
          goto _L12
    }

    public Object get(long l)
    {
        if (l == 0L)
        {
            return zeroValue;
        }
        int i = (int)(l & (long)mask);
        if (keyTable[i] != l)
        {
            i = hash2(l);
            if (keyTable[i] != l)
            {
                i = hash3(l);
                if (keyTable[i] != l)
                {
                    return getStash(l, null);
                }
            }
        }
        return valueTable[i];
    }

    public Object get(long l, Object obj)
    {
        if (l == 0L)
        {
            return zeroValue;
        }
        int i = (int)(l & (long)mask);
        if (keyTable[i] != l)
        {
            i = hash2(l);
            if (keyTable[i] != l)
            {
                i = hash3(l);
                if (keyTable[i] != l)
                {
                    return getStash(l, obj);
                }
            }
        }
        return valueTable[i];
    }

    public Keys keys()
    {
        if (keys == null)
        {
            keys = new Keys(this);
        } else
        {
            keys.reset();
        }
        return keys;
    }

    public Object put(long l, Object obj)
    {
        if (l == 0L)
        {
            Object obj5 = zeroValue;
            zeroValue = obj;
            if (!hasZeroValue)
            {
                hasZeroValue = true;
                size = 1 + size;
            }
            return obj5;
        }
        long al[] = keyTable;
        int i = (int)(l & (long)mask);
        long l1 = al[i];
        if (l1 == l)
        {
            Object obj4 = valueTable[i];
            valueTable[i] = obj;
            return obj4;
        }
        int j = hash2(l);
        long l2 = al[j];
        if (l2 == l)
        {
            Object obj3 = valueTable[j];
            valueTable[j] = obj;
            return obj3;
        }
        int k = hash3(l);
        long l3 = al[k];
        if (l3 == l)
        {
            Object obj2 = valueTable[k];
            valueTable[k] = obj;
            return obj2;
        }
        int i1 = capacity;
        int j1 = i1 + stashSize;
        do
        {
            if (i1 >= j1)
            {
                if (l1 == 0L)
                {
                    al[i] = l;
                    valueTable[i] = obj;
                    int j2 = size;
                    size = j2 + 1;
                    if (j2 >= threshold)
                    {
                        resize(capacity << 1);
                    }
                    return null;
                }
                break;
            }
            if (al[i1] == l)
            {
                Object obj1 = valueTable[i1];
                valueTable[i1] = obj;
                return obj1;
            }
            i1++;
        } while (true);
        if (l2 == 0L)
        {
            al[j] = l;
            valueTable[j] = obj;
            int i2 = size;
            size = i2 + 1;
            if (i2 >= threshold)
            {
                resize(capacity << 1);
            }
            return null;
        }
        if (l3 == 0L)
        {
            al[k] = l;
            valueTable[k] = obj;
            int k1 = size;
            size = k1 + 1;
            if (k1 >= threshold)
            {
                resize(capacity << 1);
            }
            return null;
        } else
        {
            push(l, obj, i, l1, j, l2, k, l3);
            return null;
        }
    }

    public void putAll(LongMap longmap)
    {
        Iterator iterator = longmap.entries().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Entry entry = (Entry)iterator.next();
            put(entry.key, entry.value);
        } while (true);
    }

    public Object remove(long l)
    {
        if (l == 0L)
        {
            if (!hasZeroValue)
            {
                return null;
            } else
            {
                Object obj3 = zeroValue;
                zeroValue = null;
                hasZeroValue = false;
                size = -1 + size;
                return obj3;
            }
        }
        int i = (int)(l & (long)mask);
        if (keyTable[i] == l)
        {
            keyTable[i] = 0L;
            Object obj2 = valueTable[i];
            valueTable[i] = null;
            size = -1 + size;
            return obj2;
        }
        int j = hash2(l);
        if (keyTable[j] == l)
        {
            keyTable[j] = 0L;
            Object obj1 = valueTable[j];
            valueTable[j] = null;
            size = -1 + size;
            return obj1;
        }
        int k = hash3(l);
        if (keyTable[k] == l)
        {
            keyTable[k] = 0L;
            Object obj = valueTable[k];
            valueTable[k] = null;
            size = -1 + size;
            return obj;
        } else
        {
            return removeStash(l);
        }
    }

    Object removeStash(long l)
    {
        long al[] = keyTable;
        int i = capacity;
        int j = i + stashSize;
        do
        {
            if (i >= j)
            {
                return null;
            }
            if (al[i] == l)
            {
                Object obj = valueTable[i];
                removeStashIndex(i);
                size = -1 + size;
                return obj;
            }
            i++;
        } while (true);
    }

    void removeStashIndex(int i)
    {
        stashSize = -1 + stashSize;
        int j = capacity + stashSize;
        if (i < j)
        {
            keyTable[i] = keyTable[j];
            valueTable[i] = valueTable[j];
            valueTable[j] = null;
            return;
        } else
        {
            valueTable[i] = null;
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder;
        long al[];
        Object aobj[];
        int i;
        if (size == 0)
        {
            return "[]";
        }
        stringbuilder = new StringBuilder(32);
        stringbuilder.append('[');
        al = keyTable;
        aobj = valueTable;
        i = al.length;
_L3:
        int j = i - 1;
        if (i > 0) goto _L2; else goto _L1
_L1:
        int k = j;
_L4:
        int i1;
        i1 = k - 1;
        if (k <= 0)
        {
            stringbuilder.append(']');
            return stringbuilder.toString();
        }
        break MISSING_BLOCK_LABEL_131;
_L2:
        long l;
label0:
        {
            l = al[j];
            if (l != 0L)
            {
                break label0;
            }
            i = j;
        }
          goto _L3
        stringbuilder.append(l);
        stringbuilder.append('=');
        stringbuilder.append(aobj[j]);
        k = j;
          goto _L4
        long l1 = al[i1];
        if (l1 == 0L)
        {
            k = i1;
        } else
        {
            stringbuilder.append(", ");
            stringbuilder.append(l1);
            stringbuilder.append('=');
            stringbuilder.append(aobj[i1]);
            k = i1;
        }
          goto _L4
    }

    public Values values()
    {
        if (values == null)
        {
            values = new Values(this);
        } else
        {
            values.reset();
        }
        return values;
    }
}
