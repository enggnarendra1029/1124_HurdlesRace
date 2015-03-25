// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;


// Referenced classes of package org.andengine.util.adt.list:
//            IIntList

public class IntArrayList
    implements IIntList
{

    private static final int CAPACITY_INITIAL_DEFAULT;
    private int mItems[];
    private int mSize;

    public IntArrayList()
    {
        this(0);
    }

    public IntArrayList(int i)
    {
        mItems = new int[i];
    }

    private void ensureCapacity(int i)
    {
        int j = mItems.length;
        if (j < i)
        {
            int ai[] = new int[1 + (j * 3 >> 1)];
            System.arraycopy(mItems, 0, ai, 0, j);
            mItems = ai;
        }
    }

    public void add(int i)
    {
        ensureCapacity(1 + mSize);
        mItems[mSize] = i;
        mSize = 1 + mSize;
    }

    public void add(int i, int j)
        throws ArrayIndexOutOfBoundsException
    {
        ensureCapacity(1 + mSize);
        System.arraycopy(mItems, i, mItems, i + 1, mSize - i);
        mItems[i] = j;
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

    public int[] toArray()
    {
        int ai[] = new int[mSize];
        System.arraycopy(mItems, 0, ai, 0, mSize);
        return ai;
    }
}
