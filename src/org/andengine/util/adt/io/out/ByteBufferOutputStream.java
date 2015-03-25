// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.io.out;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class ByteBufferOutputStream extends OutputStream
{

    protected int mCount;
    protected byte mData[];
    protected final int mMaximumGrow;

    public ByteBufferOutputStream(int i, int j)
    {
        mMaximumGrow = j;
        mData = new byte[i];
    }

    private void ensureCapacity(int i)
    {
        if (i - mData.length > 0)
        {
            grow(i);
        }
    }

    private void grow(int i)
    {
        int j = mData.length;
        int k = j + Math.min(mMaximumGrow, j);
        if (k - i < 0)
        {
            k = i;
        }
        if (k < 0)
        {
            if (i < 0)
            {
                throw new OutOfMemoryError();
            }
            k = 0x7fffffff;
        }
        byte abyte0[] = new byte[k];
        System.arraycopy(mData, 0, abyte0, 0, mCount);
        mData = abyte0;
    }

    public void close()
        throws IOException
    {
    }

    public ByteBuffer toByteBuffer()
    {
        return ByteBuffer.wrap(mData, 0, mCount).slice();
    }

    public void write(int i)
    {
        ensureCapacity(1 + mCount);
        mData[mCount] = (byte)i;
        mCount = 1 + mCount;
    }

    public void write(byte abyte0[], int i, int j)
    {
        ensureCapacity(j + mCount);
        System.arraycopy(abyte0, i, mData, mCount, j);
        mCount = j + mCount;
    }
}
