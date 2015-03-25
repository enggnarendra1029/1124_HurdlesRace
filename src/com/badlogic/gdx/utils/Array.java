// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.badlogic.gdx.utils:
//            Sort

public class Array
    implements Iterable
{
    public static class ArrayIterable
        implements Iterable
    {

        private ArrayIterator iterator;

        public Iterator iterator()
        {
            iterator.reset();
            return iterator;
        }

        public ArrayIterable(Array array)
        {
            iterator = new ArrayIterator(array);
        }
    }

    public static class ArrayIterator
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

        public ArrayIterator(Array array1)
        {
            array = array1;
        }
    }


    public Object items[];
    private ArrayIterator iterator;
    public boolean ordered;
    public int size;

    public Array()
    {
        this(true, 16);
    }

    public Array(int i)
    {
        this(true, i);
    }

    public Array(Array array)
    {
        this(array.ordered, array.size, ((Object) (array.items)).getClass().getComponentType());
        size = array.size;
        System.arraycopy(((Object) (array.items)), 0, ((Object) (items)), 0, size);
    }

    public Array(Class class1)
    {
        this(true, 16, class1);
    }

    public Array(boolean flag, int i)
    {
        ordered = flag;
        items = new Object[i];
    }

    public Array(boolean flag, int i, Class class1)
    {
        ordered = flag;
        items = (Object[])java.lang.reflect.Array.newInstance(class1, i);
    }

    public Array(boolean flag, Object aobj[])
    {
        this(flag, aobj.length, ((Object) (aobj)).getClass().getComponentType());
        size = aobj.length;
        System.arraycopy(((Object) (aobj)), 0, ((Object) (items)), 0, size);
    }

    public Array(Object aobj[])
    {
        this(true, aobj);
    }

    public void add(Object obj)
    {
        Object aobj[] = items;
        if (size == aobj.length)
        {
            aobj = resize(Math.max(8, (int)(1.75F * (float)size)));
        }
        int i = size;
        size = i + 1;
        aobj[i] = obj;
    }

    public void addAll(Array array)
    {
        addAll(array, 0, array.size);
    }

    public void addAll(Array array, int i, int j)
    {
        if (i + j > array.size)
        {
            throw new IllegalArgumentException((new StringBuilder("offset + length must be <= size: ")).append(i).append(" + ").append(j).append(" <= ").append(array.size).toString());
        } else
        {
            addAll(array.items, i, j);
            return;
        }
    }

    public void addAll(Object aobj[])
    {
        addAll(aobj, 0, aobj.length);
    }

    public void addAll(Object aobj[], int i, int j)
    {
        Object aobj1[] = items;
        int k = j + size;
        if (k > aobj1.length)
        {
            aobj1 = resize(Math.max(8, (int)(1.75F * (float)k)));
        }
        System.arraycopy(((Object) (aobj)), i, ((Object) (aobj1)), size, j);
        size = j + size;
    }

    public void clear()
    {
        Object aobj[] = items;
        int i = 0;
        int j = size;
        do
        {
            if (i >= j)
            {
                size = 0;
                return;
            }
            aobj[i] = null;
            i++;
        } while (true);
    }

    public boolean contains(Object obj, boolean flag)
    {
        boolean flag1;
        Object aobj[];
        int i;
        flag1 = true;
        aobj = items;
        i = -1 + size;
        if (flag) goto _L2; else goto _L1
_L1:
        if (obj != null) goto _L4; else goto _L3
_L3:
        int j = i;
_L8:
        if (j >= 0) goto _L6; else goto _L5
_L5:
        j;
_L9:
        flag1 = false;
_L7:
        return flag1;
_L6:
        i = j - 1;
        if (aobj[j] == obj) goto _L7; else goto _L2
_L2:
        j = i;
          goto _L8
_L10:
        int k;
        i = k - 1;
        if (obj.equals(aobj[k])) goto _L7; else goto _L4
_L4:
        k = i;
        if (k >= 0) goto _L10; else goto _L9
    }

    public Object[] ensureCapacity(int i)
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
            if (!(obj instanceof Array))
            {
                return false;
            }
            Array array = (Array)obj;
            int i = size;
            if (i != array.size)
            {
                return false;
            }
            Object aobj[] = items;
            Object aobj1[] = array.items;
            int j = 0;
            while (j < i) 
            {
                Object obj1 = aobj[j];
                Object obj2 = aobj1[j];
                if (obj1 != null ? !obj1.equals(obj2) : obj2 != null)
                {
                    return false;
                }
                j++;
            }
        }
        return true;
    }

    public Object first()
    {
        return items[0];
    }

    public Object get(int i)
    {
        if (i >= size)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        } else
        {
            return items[i];
        }
    }

    public int indexOf(Object obj, boolean flag)
    {
        Object aobj[];
        int i;
        int j;
        aobj = items;
        if (!flag && obj != null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        i = 0;
        j = size;
_L3:
        if (i < j) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        if (aobj[i] == obj)
        {
            return i;
        }
        i++;
          goto _L3
        int k = 0;
        int l = size;
        while (k < l) 
        {
            if (obj.equals(aobj[k]))
            {
                return k;
            }
            k++;
        }
          goto _L1
    }

    public void insert(int i, Object obj)
    {
        Object aobj[] = items;
        if (size == aobj.length)
        {
            aobj = resize(Math.max(8, (int)(1.75F * (float)size)));
        }
        if (ordered)
        {
            System.arraycopy(((Object) (aobj)), i, ((Object) (aobj)), i + 1, size - i);
        } else
        {
            aobj[size] = aobj[i];
        }
        size = 1 + size;
        aobj[i] = obj;
    }

    public Iterator iterator()
    {
        if (iterator == null)
        {
            iterator = new ArrayIterator(this);
        } else
        {
            iterator.index = 0;
        }
        return iterator;
    }

    public int lastIndexOf(Object obj, boolean flag)
    {
        Object aobj[];
        int i;
        aobj = items;
        if (!flag && obj != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        i = -1 + size;
_L3:
        if (i >= 0) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        if (aobj[i] == obj)
        {
            return i;
        }
        i--;
          goto _L3
        int j = -1 + size;
        while (j >= 0) 
        {
            if (obj.equals(aobj[j]))
            {
                return j;
            }
            j--;
        }
          goto _L1
    }

    public Object peek()
    {
        return items[-1 + size];
    }

    public Object pop()
    {
        size = -1 + size;
        Object obj = items[size];
        items[size] = null;
        return obj;
    }

    public Object random()
    {
        if (size == 0)
        {
            return null;
        } else
        {
            return items[MathUtils.random(0, -1 + size)];
        }
    }

    public Object removeIndex(int i)
    {
        if (i >= size)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        }
        Object aobj[] = items;
        Object obj = aobj[i];
        size = -1 + size;
        if (ordered)
        {
            System.arraycopy(((Object) (aobj)), i + 1, ((Object) (aobj)), i, size - i);
        } else
        {
            aobj[i] = aobj[size];
        }
        aobj[size] = null;
        return obj;
    }

    public boolean removeValue(Object obj, boolean flag)
    {
        Object aobj[];
        int i;
        int j;
        aobj = items;
        if (!flag && obj != null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        i = 0;
        j = size;
_L3:
        if (i < j) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (aobj[i] == obj)
        {
            removeIndex(i);
            return true;
        }
        i++;
          goto _L3
        int k = 0;
        int l = size;
        while (k < l) 
        {
            if (obj.equals(aobj[k]))
            {
                removeIndex(k);
                return true;
            }
            k++;
        }
          goto _L1
    }

    protected Object[] resize(int i)
    {
        Object aobj[] = items;
        Object aobj1[] = (Object[])java.lang.reflect.Array.newInstance(((Object) (aobj)).getClass().getComponentType(), i);
        System.arraycopy(((Object) (aobj)), 0, ((Object) (aobj1)), 0, Math.min(size, aobj1.length));
        items = aobj1;
        return aobj1;
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
            Object obj = items[i];
            items[i] = items[l];
            items[l] = obj;
            i++;
        } while (true);
    }

    public void set(int i, Object obj)
    {
        if (i >= size)
        {
            throw new IndexOutOfBoundsException(String.valueOf(i));
        } else
        {
            items[i] = obj;
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
            Object obj = items[i];
            items[i] = items[j];
            items[j] = obj;
            i--;
        } while (true);
    }

    public void sort()
    {
        Sort.instance().sort(items, 0, size);
    }

    public void sort(Comparator comparator)
    {
        Sort.instance().sort(items, comparator, 0, size);
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
            Object aobj[] = items;
            Object obj = aobj[i];
            aobj[i] = aobj[j];
            aobj[j] = obj;
            return;
        }
    }

    public Object[] toArray()
    {
        return toArray(((Object) (items)).getClass().getComponentType());
    }

    public Object[] toArray(Class class1)
    {
        Object aobj[] = (Object[])java.lang.reflect.Array.newInstance(class1, size);
        System.arraycopy(((Object) (items)), 0, ((Object) (aobj)), 0, size);
        return aobj;
    }

    public String toString()
    {
        if (size == 0)
        {
            return "[]";
        }
        Object aobj[] = items;
        StringBuilder stringbuilder = new StringBuilder(32);
        stringbuilder.append('[');
        stringbuilder.append(aobj[0]);
        int i = 1;
        do
        {
            if (i >= size)
            {
                stringbuilder.append(']');
                return stringbuilder.toString();
            }
            stringbuilder.append(", ");
            stringbuilder.append(aobj[i]);
            i++;
        } while (true);
    }

    public String toString(String s)
    {
        if (size == 0)
        {
            return "";
        }
        Object aobj[] = items;
        StringBuilder stringbuilder = new StringBuilder(32);
        stringbuilder.append(aobj[0]);
        int i = 1;
        do
        {
            if (i >= size)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append(s);
            stringbuilder.append(aobj[i]);
            i++;
        } while (true);
    }

    public void truncate(int i)
    {
        if (size <= i)
        {
            return;
        }
        int j = i;
        do
        {
            if (j >= size)
            {
                size = i;
                return;
            }
            items[j] = null;
            j++;
        } while (true);
    }
}
