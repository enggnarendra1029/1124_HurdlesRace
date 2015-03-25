// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.bit;


public final class BitVector
{

    private final int mCapacity;
    private final long mData[];

    private BitVector(int i)
    {
        if (i <= 0)
        {
            throw new IllegalArgumentException("pCapacity must be > 0.");
        }
        mCapacity = i;
        boolean flag;
        int j;
        if (i % 64 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            j = i / 64;
        } else
        {
            j = 1 + i / 64;
        }
        mData = new long[j];
    }

    public BitVector(byte abyte0[])
    {
        long al[];
        int k;
        long l1;
        int j1;
        this(8 * abyte0.length);
        al = mData;
        boolean flag;
        int i;
        int j;
        int i1;
        if (abyte0.length % 8 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = al.length;
        if (flag)
        {
            j = i - 1;
        } else
        {
            j = i - 2;
        }
        k = j;
_L13:
        if (k >= 0) goto _L2; else goto _L1
_L1:
        if (flag) goto _L4; else goto _L3
_L3:
        l1 = 0L;
        i1 = i - 1;
        j1 = i1 * 8;
        abyte0.length - j1;
        JVM INSTR tableswitch 1 7: default 116
    //                   1 389
    //                   2 370
    //                   3 351
    //                   4 332
    //                   5 313
    //                   6 294
    //                   7 274;
           goto _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L6:
        break MISSING_BLOCK_LABEL_389;
_L5:
        al[i1] = l1;
_L4:
        return;
_L2:
        int l = k * 8;
        al[k] = 0xff00000000000000L & (long)abyte0[l + 0] << 56 | 0xff000000000000L & (long)abyte0[l + 1] << 48 | 0xff0000000000L & (long)abyte0[l + 2] << 40 | 0xff00000000L & (long)abyte0[l + 3] << 32 | 0xff000000L & (long)abyte0[l + 4] << 24 | 0xff0000L & (long)abyte0[l + 5] << 16 | 65280L & (long)abyte0[l + 6] << 8 | 255L & (long)abyte0[l + 7] << 0;
        k--;
          goto _L13
_L12:
        l1 |= 65280L & (long)abyte0[j1 + 6] << 8;
_L11:
        l1 |= 0xff0000L & (long)abyte0[j1 + 5] << 16;
_L10:
        l1 |= 0xff000000L & (long)abyte0[j1 + 4] << 24;
_L9:
        l1 |= 0xff00000000L & (long)abyte0[j1 + 3] << 32;
_L8:
        l1 |= 0xff0000000000L & (long)abyte0[j1 + 2] << 40;
_L7:
        l1 |= 0xff000000000000L & (long)abyte0[j1 + 1] << 48;
        l1 |= 0xff00000000000000L & (long)abyte0[j1 + 0] << 56;
          goto _L5
    }

    public boolean getBit(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("pPosition must be >= 0.");
        }
        if (i >= mCapacity)
        {
            throw new IllegalArgumentException("pPosition must be < capacity.");
        }
        int j = i / 64;
        int k = i % 64;
        return (1L & mData[j] >> -1 + (64 - k)) != 0L;
    }

    public long getBits(int i, int j)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("pPosition must be >= 0.");
        }
        if (j < 0)
        {
            throw new IllegalArgumentException("pLength must be >= 0.");
        }
        if (i + j > mCapacity)
        {
            throw new IllegalArgumentException("pPosition + pLength must be <= capacity.");
        }
        long l1;
        if (j == 0)
        {
            l1 = 0L;
        } else
        {
            int k = i / 64;
            int l = i % 64;
            if (l == 0)
            {
                l1 = mData[k];
            } else
            if (l + j <= 64)
            {
                l1 = mData[k] << l;
            } else
            {
                l1 = mData[k] << l | mData[k + 1] >>> 64 - l;
            }
            if (j != 64)
            {
                int i1 = 64 - j;
                return -1L >>> i1 & l1 >> i1;
            }
        }
        return l1;
    }

    public byte getByte(int i)
    {
        return (byte)(int)getBits(i, 8);
    }

    public int getCapacity()
    {
        return mCapacity;
    }

    public int getInt(int i)
    {
        return (int)getBits(i, 32);
    }

    public long getLong(int i)
    {
        return getBits(i, 64);
    }

    public short getShort(int i)
    {
        return (short)(int)getBits(i, 16);
    }

    public byte[] toByteArray()
    {
        byte abyte0[];
        long al[];
        int i1;
        int j1;
        long l3;
        int i4;
        int i;
        boolean flag;
        int j;
        int k;
        int l;
        int k3;
        if (mCapacity % 8 == 0)
        {
            i = mCapacity / 8;
        } else
        {
            i = 1 + mCapacity / 8;
        }
        abyte0 = new byte[i];
        if (mCapacity % 64 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        al = mData;
        j = al.length;
        if (flag)
        {
            k = j - 1;
        } else
        {
            k = j - 2;
        }
        l = 7 + k * 8;
        i1 = k;
        j1 = l;
_L12:
        if (i1 >= 0) goto _L2; else goto _L1
_L1:
        if (flag) goto _L4; else goto _L3
_L3:
        k3 = j - 1;
        l3 = al[k3];
        i4 = k3 * 8;
        abyte0.length % 8;
        JVM INSTR tableswitch 1 7: default 148
    //                   1 460
    //                   2 443
    //                   3 426
    //                   4 409
    //                   5 392
    //                   6 375
    //                   7 357;
           goto _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L4:
        return abyte0;
_L2:
        long l1 = al[i1];
        int k1 = j1 - 1;
        abyte0[j1] = (byte)(int)(255L & l1 >> 0);
        int i2 = k1 - 1;
        abyte0[k1] = (byte)(int)(255L & l1 >> 8);
        int j2 = i2 - 1;
        abyte0[i2] = (byte)(int)(255L & l1 >> 16);
        int k2 = j2 - 1;
        abyte0[j2] = (byte)(int)(255L & l1 >> 24);
        int l2 = k2 - 1;
        abyte0[k2] = (byte)(int)(255L & l1 >> 32);
        int i3 = l2 - 1;
        abyte0[l2] = (byte)(int)(255L & l1 >> 40);
        int j3 = i3 - 1;
        abyte0[i3] = (byte)(int)(255L & l1 >> 48);
        j1 = j3 - 1;
        abyte0[j3] = (byte)(int)(255L & l1 >> 56);
        i1--;
          goto _L12
_L11:
        abyte0[i4 + 6] = (byte)(int)(255L & l3 >> 8);
_L10:
        abyte0[i4 + 5] = (byte)(int)(255L & l3 >> 16);
_L9:
        abyte0[i4 + 4] = (byte)(int)(255L & l3 >> 24);
_L8:
        abyte0[i4 + 3] = (byte)(int)(255L & l3 >> 32);
_L7:
        abyte0[i4 + 2] = (byte)(int)(255L & l3 >> 40);
_L6:
        abyte0[i4 + 1] = (byte)(int)(255L & l3 >> 48);
_L5:
        abyte0[i4 + 0] = (byte)(int)(255L & l3 >> 56);
        return abyte0;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append('[');
        int i = 0;
        do
        {
            if (i >= mCapacity)
            {
                stringbuilder.append(']');
                return stringbuilder.toString();
            }
            char c;
            if (getBit(i))
            {
                c = '1';
            } else
            {
                c = '0';
            }
            stringbuilder.append(c);
            if (i % 8 == 7 && i < -1 + mCapacity)
            {
                stringbuilder.append(' ');
            }
            i++;
        } while (true);
    }
}
