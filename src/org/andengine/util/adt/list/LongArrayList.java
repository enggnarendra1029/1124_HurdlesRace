// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;


// Referenced classes of package org.andengine.util.adt.list:
//            ILongList

public class LongArrayList
    implements ILongList
{

    private static final int CAPACITY_INITIAL_DEFAULT;
    private long mItems[];
    private int mSize;

    public LongArrayList()
    {
        this(0);
    }

    public LongArrayList(int i)
    {
        mItems = new long[i];
    }

    private void ensureCapacity(int i)
    {
        int j = mItems.length;
        if (j < i)
        {
            long al[] = new long[1 + (j * 3 >> 1)];
            System.arraycopy(mItems, 0, al, 0, j);
            mItems = al;
        }
    }

    public void add(int i, long l)
        throws ArrayIndexOutOfBoundsException
    {
        ensureCapacity(1 + mSize);
        System.arraycopy(mItems, i, mItems, i + 1, mSize - i);
        mItems[i] = l;
        mSize = 1 + mSize;
    }

    public void add(long l)
    {
        ensureCapacity(1 + mSize);
        mItems[mSize] = l;
        mSize = 1 + mSize;
    }

    public void clear()
    {
        mSize = 0;
    }

    public float get(int i)
        throws ArrayIndexOutOfBoundsException
    {
        return (float)mItems[i];
    }

    public boolean isEmpty()
    {
        return mSize == 0;
    }

    public float remove(int i)
        throws ArrayIndexOutOfBoundsException
    {
        float f = mItems[i];
        int j = -1 + (mSize - i);
        if (j > 0)
        {
            System.arraycopy(mItems, i + 1, mItems, i, j);
        }
        mSize = -1 + mSize;
        return f;
    }

    public int size()
    {
        return mSize;
    }

    public long[] toArray()
    {
        long al[] = new long[mSize];
        System.arraycopy(mItems, 0, al, 0, mSize);
        return al;
    }
}
