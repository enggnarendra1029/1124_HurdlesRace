// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;

import java.util.Arrays;

// Referenced classes of package org.andengine.util.adt.list:
//            IList

public class CircularList
    implements IList
{

    private static final int CAPACITY_INITIAL_DEFAULT = 1;
    private static final int INDEX_INVALID = -1;
    private int mHead;
    private Object mItems[];
    private int mSize;

    public CircularList()
    {
        this(1);
    }

    public CircularList(int i)
    {
        mItems = new Object[i];
    }

    private int encodeToInternalIndex(int i)
    {
        int j = i + mHead;
        if (j >= mItems.length)
        {
            j -= mItems.length;
        }
        return j;
    }

    private void ensureCapacity()
    {
        int i = mItems.length;
        if (mSize == i)
        {
            Object aobj[] = new Object[1 + (i * 3 >> 1)];
            System.arraycopy(((Object) (mItems)), mHead, ((Object) (aobj)), 0, mSize - mHead);
            System.arraycopy(((Object) (mItems)), 0, ((Object) (aobj)), mSize - mHead, mHead);
            mItems = aobj;
            mHead = 0;
        }
    }

    public void add(int i, Object obj)
    {
        int j;
        int k;
        j = encodeToInternalIndex(i);
        ensureCapacity();
        k = encodeToInternalIndex(mSize);
        if (j == k) goto _L2; else goto _L1
_L1:
        if (j != mHead) goto _L4; else goto _L3
_L3:
        mHead = -1 + mHead;
        if (mHead == -1)
        {
            mHead = -1 + mItems.length;
        }
        if (--j == -1)
        {
            j = -1 + mItems.length;
        }
_L2:
        mItems[j] = obj;
        mSize = 1 + mSize;
        return;
_L4:
        if (j < mHead || mHead == 0)
        {
            System.arraycopy(((Object) (mItems)), j, ((Object) (mItems)), j + 1, k - j);
        } else
        if (j > k)
        {
            System.arraycopy(((Object) (mItems)), mHead, ((Object) (mItems)), -1 + mHead, i);
            mHead = -1 + mHead;
            if (mHead == -1)
            {
                mHead = -1 + mItems.length;
            }
            if (--j == -1)
            {
                j = -1 + mItems.length;
            }
        } else
        if (i < mSize >> 1)
        {
            System.arraycopy(((Object) (mItems)), mHead, ((Object) (mItems)), -1 + mHead, i);
            mHead = -1 + mHead;
            if (mHead == -1)
            {
                mHead = -1 + mItems.length;
            }
            if (--j == -1)
            {
                j = -1 + mItems.length;
            }
        } else
        {
            System.arraycopy(((Object) (mItems)), j, ((Object) (mItems)), j + 1, k - j);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void add(Object obj)
    {
        ensureCapacity();
        mItems[encodeToInternalIndex(mSize)] = obj;
        mSize = 1 + mSize;
    }

    public void clear()
    {
        int i = mHead + mSize;
        int j = mItems.length;
        if (i <= j)
        {
            Arrays.fill(mItems, mHead, i, null);
        } else
        {
            int k = j - mHead;
            Arrays.fill(mItems, mHead, j, null);
            Arrays.fill(mItems, 0, mSize - k, null);
        }
        mHead = 0;
        mSize = 0;
    }

    public Object get(int i)
        throws ArrayIndexOutOfBoundsException
    {
        return mItems[encodeToInternalIndex(i)];
    }

    public int indexOf(Object obj)
    {
        int i;
        int k;
        i = size();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        k = 0;
_L3:
        if (k < i) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        if (get(k) == null)
        {
            return k;
        }
        k++;
          goto _L3
        int j = 0;
        while (j < i) 
        {
            if (obj.equals(get(j)))
            {
                return j;
            }
            j++;
        }
          goto _L1
    }

    public boolean isEmpty()
    {
        return mSize == 0;
    }

    public Object remove(int i)
    {
        int j;
        Object obj;
        int k;
        j = encodeToInternalIndex(i);
        obj = mItems[j];
        k = encodeToInternalIndex(-1 + mSize);
        if (j != k) goto _L2; else goto _L1
_L1:
        mItems[k] = null;
_L4:
        mSize = -1 + mSize;
        return obj;
_L2:
        if (j == mHead)
        {
            mItems[mHead] = null;
            mHead = 1 + mHead;
            if (mHead == mItems.length)
            {
                mHead = 0;
            }
        } else
        if (j < mHead)
        {
            System.arraycopy(((Object) (mItems)), j + 1, ((Object) (mItems)), j, k - j);
            mItems[k] = null;
        } else
        if (j > k)
        {
            System.arraycopy(((Object) (mItems)), mHead, ((Object) (mItems)), 1 + mHead, i);
            mItems[mHead] = null;
            mHead = 1 + mHead;
            if (mHead == mItems.length)
            {
                mHead = 0;
            }
        } else
        if (i < mSize >> 1)
        {
            System.arraycopy(((Object) (mItems)), mHead, ((Object) (mItems)), 1 + mHead, i);
            mItems[mHead] = null;
            mHead = 1 + mHead;
            if (mHead == mItems.length)
            {
                mHead = 0;
            }
        } else
        {
            System.arraycopy(((Object) (mItems)), j + 1, ((Object) (mItems)), j, k - j);
            mItems[k] = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean remove(Object obj)
    {
        int i = indexOf(obj);
        if (i >= 0)
        {
            remove(i);
            return true;
        } else
        {
            return false;
        }
    }

    public Object removeFirst()
    {
        return remove(0);
    }

    public Object removeLast()
    {
        return remove(-1 + size());
    }

    public void set(int i, Object obj)
        throws IndexOutOfBoundsException
    {
        mItems[encodeToInternalIndex(i)] = obj;
    }

    public int size()
    {
        return mSize;
    }
}
