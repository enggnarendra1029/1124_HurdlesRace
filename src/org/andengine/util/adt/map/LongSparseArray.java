// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.map;

import android.util.Log;
import org.andengine.util.adt.array.ArrayUtils;

public class LongSparseArray
{

    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private long mKeys[];
    private int mSize;
    private Object mValues[];

    public LongSparseArray()
    {
        this(10);
    }

    public LongSparseArray(int i)
    {
        mGarbage = false;
        int j = ArrayUtils.idealIntArraySize(i);
        mKeys = new long[j];
        mValues = new Object[j];
        mSize = 0;
    }

    private static int binarySearch(long al[], int i, int j, long l)
    {
        int k;
        int i1;
        k = i + j;
        i1 = i - 1;
_L8:
        if (k - i1 > 1) goto _L2; else goto _L1
_L1:
        if (k != i + j) goto _L4; else goto _L3
_L3:
        k = -1 ^ i + j;
_L6:
        return k;
_L2:
        int j1 = (k + i1) / 2;
        if (al[j1] < l)
        {
            i1 = j1;
        } else
        {
            k = j1;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (al[k] == l) goto _L6; else goto _L5
_L5:
        return ~k;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void checkIntegrity()
    {
        int i = 1;
        do
        {
            if (i >= mSize)
            {
                return;
            }
            if (mKeys[i] <= mKeys[i - 1])
            {
                int j = 0;
                do
                {
                    if (j >= mSize)
                    {
                        throw new RuntimeException();
                    }
                    Log.e("FAIL", (new StringBuilder(String.valueOf(j))).append(": ").append(mKeys[j]).append(" -> ").append(mValues[j]).toString());
                    j++;
                } while (true);
            }
            i++;
        } while (true);
    }

    private void gc()
    {
        int i = mSize;
        int j = 0;
        long al[] = mKeys;
        Object aobj[] = mValues;
        int k = 0;
        do
        {
            if (k >= i)
            {
                mGarbage = false;
                mSize = j;
                return;
            }
            Object obj = aobj[k];
            if (obj != DELETED)
            {
                if (k != j)
                {
                    al[j] = al[k];
                    aobj[j] = obj;
                }
                j++;
            }
            k++;
        } while (true);
    }

    public void append(long l, Object obj)
    {
        if (mSize != 0 && l <= mKeys[-1 + mSize])
        {
            put(l, obj);
            return;
        }
        if (mGarbage && mSize >= mKeys.length)
        {
            gc();
        }
        int i = mSize;
        if (i >= mKeys.length)
        {
            int j = ArrayUtils.idealIntArraySize(i + 1);
            long al[] = new long[j];
            Object aobj[] = new Object[j];
            System.arraycopy(mKeys, 0, al, 0, mKeys.length);
            System.arraycopy(((Object) (mValues)), 0, ((Object) (aobj)), 0, mValues.length);
            mKeys = al;
            mValues = aobj;
        }
        mKeys[i] = l;
        mValues[i] = obj;
        mSize = i + 1;
    }

    public void clear()
    {
        int i = mSize;
        Object aobj[] = mValues;
        int j = 0;
        do
        {
            if (j >= i)
            {
                mSize = 0;
                mGarbage = false;
                return;
            }
            aobj[j] = null;
            j++;
        } while (true);
    }

    public void delete(long l)
    {
        int i = binarySearch(mKeys, 0, mSize, l);
        if (i >= 0 && mValues[i] != DELETED)
        {
            mValues[i] = DELETED;
            mGarbage = true;
        }
    }

    public Object get(long l)
    {
        return get(l, null);
    }

    public Object get(long l, Object obj)
    {
        int i = binarySearch(mKeys, 0, mSize, l);
        if (i < 0 || mValues[i] == DELETED)
        {
            return obj;
        } else
        {
            return mValues[i];
        }
    }

    public long[] getKeys()
    {
        int i = mKeys.length;
        long al[] = new long[i];
        System.arraycopy(mKeys, 0, al, 0, i);
        return al;
    }

    public int indexOfKey(long l)
    {
        if (mGarbage)
        {
            gc();
        }
        return binarySearch(mKeys, 0, mSize, l);
    }

    public int indexOfValue(Object obj)
    {
        int i;
        if (mGarbage)
        {
            gc();
        }
        i = 0;
_L6:
        if (i < mSize) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        if (mValues[i] == obj) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public long keyAt(int i)
    {
        if (mGarbage)
        {
            gc();
        }
        return mKeys[i];
    }

    public void put(long l, Object obj)
    {
        int i = binarySearch(mKeys, 0, mSize, l);
        if (i >= 0)
        {
            mValues[i] = obj;
            return;
        }
        int j = ~i;
        if (j < mSize && mValues[j] == DELETED)
        {
            mKeys[j] = l;
            mValues[j] = obj;
            return;
        }
        if (mGarbage && mSize >= mKeys.length)
        {
            gc();
            j = -1 ^ binarySearch(mKeys, 0, mSize, l);
        }
        if (mSize >= mKeys.length)
        {
            int k = ArrayUtils.idealIntArraySize(1 + mSize);
            long al[] = new long[k];
            Object aobj[] = new Object[k];
            System.arraycopy(mKeys, 0, al, 0, mKeys.length);
            System.arraycopy(((Object) (mValues)), 0, ((Object) (aobj)), 0, mValues.length);
            mKeys = al;
            mValues = aobj;
        }
        if (mSize - j != 0)
        {
            System.arraycopy(mKeys, j, mKeys, j + 1, mSize - j);
            System.arraycopy(((Object) (mValues)), j, ((Object) (mValues)), j + 1, mSize - j);
        }
        mKeys[j] = l;
        mValues[j] = obj;
        mSize = 1 + mSize;
    }

    public void remove(long l)
    {
        delete(l);
    }

    public void setValueAt(int i, Object obj)
    {
        if (mGarbage)
        {
            gc();
        }
        mValues[i] = obj;
    }

    public void setValues(long al[], Object obj)
    {
        int i = al.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            put(al[j], obj);
            j++;
        } while (true);
    }

    public int size()
    {
        if (mGarbage)
        {
            gc();
        }
        return mSize;
    }

    public Object valueAt(int i)
    {
        if (mGarbage)
        {
            gc();
        }
        return mValues[i];
    }

}
