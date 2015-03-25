// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;


// Referenced classes of package org.andengine.util.adt.list:
//            IFloatList

public class FloatArrayList
    implements IFloatList
{

    private static final int CAPACITY_INITIAL_DEFAULT;
    private float mItems[];
    private int mSize;

    public FloatArrayList()
    {
        this(0);
    }

    public FloatArrayList(int i)
    {
        mItems = new float[i];
    }

    private void ensureCapacity(int i)
    {
        int j = mItems.length;
        if (j < i)
        {
            float af[] = new float[1 + (j * 3 >> 1)];
            System.arraycopy(mItems, 0, af, 0, j);
            mItems = af;
        }
    }

    public void add(float f)
    {
        ensureCapacity(1 + mSize);
        mItems[mSize] = f;
        mSize = 1 + mSize;
    }

    public void add(int i, float f)
        throws ArrayIndexOutOfBoundsException
    {
        ensureCapacity(1 + mSize);
        System.arraycopy(mItems, i, mItems, i + 1, mSize - i);
        mItems[i] = f;
        mSize = 1 + mSize;
    }

    public void clear()
    {
        mSize = 0;
    }

    public float get(int i)
        throws ArrayIndexOutOfBoundsException
    {
        return mItems[i];
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

    public float[] toArray()
    {
        float af[] = new float[mSize];
        System.arraycopy(mItems, 0, af, 0, mSize);
        return af;
    }
}
