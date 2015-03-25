// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.array;

import java.lang.reflect.Array;
import java.util.List;
import org.andengine.util.math.MathUtils;

public final class ArrayUtils
{

    public ArrayUtils()
    {
    }

    public static final boolean contains(byte abyte0[], byte byte0)
    {
        int i = -1 + abyte0.length;
        do
        {
            if (i < 0)
            {
                return false;
            }
            if (abyte0[i] == byte0)
            {
                return true;
            }
            i--;
        } while (true);
    }

    public static final boolean contains(char ac[], char c)
    {
        int i = -1 + ac.length;
        do
        {
            if (i < 0)
            {
                return false;
            }
            if (ac[i] == c)
            {
                return true;
            }
            i--;
        } while (true);
    }

    public static final boolean contains(double ad[], double d)
    {
        int i = -1 + ad.length;
        do
        {
            if (i < 0)
            {
                return false;
            }
            if (ad[i] == d)
            {
                return true;
            }
            i--;
        } while (true);
    }

    public static final boolean contains(float af[], float f)
    {
        int i = -1 + af.length;
        do
        {
            if (i < 0)
            {
                return false;
            }
            if (af[i] == f)
            {
                return true;
            }
            i--;
        } while (true);
    }

    public static final boolean contains(int ai[], int i)
    {
        int j = -1 + ai.length;
        do
        {
            if (j < 0)
            {
                return false;
            }
            if (ai[j] == i)
            {
                return true;
            }
            j--;
        } while (true);
    }

    public static final boolean contains(long al[], long l)
    {
        int i = -1 + al.length;
        do
        {
            if (i < 0)
            {
                return false;
            }
            if (al[i] == l)
            {
                return true;
            }
            i--;
        } while (true);
    }

    public static final boolean contains(short aword0[], short word0)
    {
        int i = -1 + aword0.length;
        do
        {
            if (i < 0)
            {
                return false;
            }
            if (aword0[i] == word0)
            {
                return true;
            }
            i--;
        } while (true);
    }

    public static final boolean equals(byte abyte0[], int i, byte abyte1[], int j, int k)
    {
        int l = i + k;
        if (l > abyte0.length)
        {
            throw new ArrayIndexOutOfBoundsException(abyte0.length);
        }
        if (j + k > abyte1.length)
        {
            throw new ArrayIndexOutOfBoundsException(abyte1.length);
        }
        int i1 = i;
        int j1 = j;
        do
        {
            if (i1 >= l)
            {
                return true;
            }
            if (abyte0[i1] != abyte1[j1])
            {
                return false;
            }
            i1++;
            j1++;
        } while (true);
    }

    public static int idealBooleanArraySize(int i)
    {
        return idealByteArraySize(i);
    }

    public static int idealByteArraySize(int i)
    {
        int j = 4;
        do
        {
            if (j >= 32)
            {
                return i;
            }
            if (i <= -12 + (1 << j))
            {
                return -12 + (1 << j);
            }
            j++;
        } while (true);
    }

    public static int idealCharArraySize(int i)
    {
        return idealByteArraySize(i << 1) >> 1;
    }

    public static int idealDoubleArraySize(int i)
    {
        return idealByteArraySize(i << 3) >> 3;
    }

    public static int idealFloatArraySize(int i)
    {
        return idealByteArraySize(i << 2) >> 2;
    }

    public static int idealIntArraySize(int i)
    {
        return idealByteArraySize(i << 2) >> 2;
    }

    public static int idealLongArraySize(int i)
    {
        return idealByteArraySize(i << 3) >> 3;
    }

    public static int idealObjectArraySize(int i)
    {
        return idealByteArraySize(i << 2) >> 2;
    }

    public static int idealShortArraySize(int i)
    {
        return idealByteArraySize(i << 1) >> 1;
    }

    public static transient Object[] join(Class class1, Object aobj[][])
    {
        Object aobj1[] = null;
        if (aobj != null) goto _L2; else goto _L1
_L1:
        return aobj1;
_L2:
        int i;
        int j;
        int k;
        i = aobj.length;
        aobj1 = null;
        if (i == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (i == 1)
        {
            return aobj[0];
        }
        j = 0;
        k = -1 + aobj.length;
_L4:
label0:
        {
            if (k >= 0)
            {
                break label0;
            }
            aobj1 = null;
            if (j != 0)
            {
                aobj1 = (Object[])Array.newInstance(class1.getComponentType(), j);
                int l = 0;
                int i1 = 0;
                while (i1 < i) 
                {
                    Object aobj2[] = aobj[i1];
                    if (aobj2 != null && aobj2.length > 0)
                    {
                        System.arraycopy(((Object) (aobj2)), 0, ((Object) (aobj1)), l, aobj2.length);
                        l += aobj2.length;
                    }
                    i1++;
                }
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        Object aobj3[] = aobj[k];
        if (aobj3 != null && aobj3.length > 0)
        {
            j += aobj3.length;
        }
        k--;
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static final byte random(byte abyte0[])
    {
        return abyte0[MathUtils.random(0, -1 + abyte0.length)];
    }

    public static final double random(double ad[])
    {
        return ad[MathUtils.random(0, -1 + ad.length)];
    }

    public static final float random(float af[])
    {
        return af[MathUtils.random(0, -1 + af.length)];
    }

    public static final int random(int ai[])
    {
        return ai[MathUtils.random(0, -1 + ai.length)];
    }

    public static final long random(long al[])
    {
        return al[MathUtils.random(0, -1 + al.length)];
    }

    public static final Object random(Object aobj[])
    {
        return aobj[MathUtils.random(0, -1 + aobj.length)];
    }

    public static final short random(short aword0[])
    {
        return aword0[MathUtils.random(0, -1 + aword0.length)];
    }

    public static final void reverse(byte abyte0[])
    {
        if (abyte0 != null)
        {
            int i = 0;
            int j = -1 + abyte0.length;
            while (j > i) 
            {
                byte byte0 = abyte0[j];
                abyte0[j] = abyte0[i];
                abyte0[i] = byte0;
                j--;
                i++;
            }
        }
    }

    public static final void reverse(double ad[])
    {
        if (ad != null)
        {
            int i = 0;
            int j = -1 + ad.length;
            while (j > i) 
            {
                double d = ad[j];
                ad[j] = ad[i];
                ad[i] = d;
                j--;
                i++;
            }
        }
    }

    public static final void reverse(float af[])
    {
        if (af != null)
        {
            int i = 0;
            int j = -1 + af.length;
            while (j > i) 
            {
                float f = af[j];
                af[j] = af[i];
                af[i] = f;
                j--;
                i++;
            }
        }
    }

    public static final void reverse(int ai[])
    {
        if (ai != null)
        {
            int i = 0;
            int j = -1 + ai.length;
            while (j > i) 
            {
                int k = ai[j];
                ai[j] = ai[i];
                ai[i] = k;
                j--;
                i++;
            }
        }
    }

    public static final void reverse(long al[])
    {
        if (al != null)
        {
            int i = 0;
            int j = -1 + al.length;
            while (j > i) 
            {
                long l = al[j];
                al[j] = al[i];
                al[i] = l;
                j--;
                i++;
            }
        }
    }

    public static final void reverse(Object aobj[])
    {
        if (aobj != null)
        {
            int i = 0;
            int j = -1 + aobj.length;
            while (j > i) 
            {
                Object obj = aobj[j];
                aobj[j] = aobj[i];
                aobj[i] = obj;
                j--;
                i++;
            }
        }
    }

    public static final void reverse(short aword0[])
    {
        if (aword0 != null)
        {
            int i = 0;
            int j = -1 + aword0.length;
            while (j > i) 
            {
                short word0 = aword0[j];
                aword0[j] = aword0[i];
                aword0[i] = word0;
                j--;
                i++;
            }
        }
    }

    public static final byte[] toByteArray(List list)
    {
        byte abyte0[] = new byte[list.size()];
        int i = -1 + abyte0.length;
        do
        {
            if (i < 0)
            {
                return abyte0;
            }
            abyte0[i] = ((Byte)list.get(i)).byteValue();
            i--;
        } while (true);
    }

    public static final char[] toCharArray(List list)
    {
        char ac[] = new char[list.size()];
        int i = -1 + ac.length;
        do
        {
            if (i < 0)
            {
                return ac;
            }
            ac[i] = ((Character)list.get(i)).charValue();
            i--;
        } while (true);
    }

    public static final double[] toDoubleArray(List list)
    {
        double ad[] = new double[list.size()];
        int i = -1 + ad.length;
        do
        {
            if (i < 0)
            {
                return ad;
            }
            ad[i] = ((Double)list.get(i)).doubleValue();
            i--;
        } while (true);
    }

    public static final float[] toFloatArray(List list)
    {
        float af[] = new float[list.size()];
        int i = -1 + af.length;
        do
        {
            if (i < 0)
            {
                return af;
            }
            af[i] = ((Float)list.get(i)).floatValue();
            i--;
        } while (true);
    }

    public static final int[] toIntArray(List list)
    {
        int ai[] = new int[list.size()];
        int i = -1 + ai.length;
        do
        {
            if (i < 0)
            {
                return ai;
            }
            ai[i] = ((Integer)list.get(i)).intValue();
            i--;
        } while (true);
    }

    public static final long[] toLongArray(List list)
    {
        long al[] = new long[list.size()];
        int i = -1 + al.length;
        do
        {
            if (i < 0)
            {
                return al;
            }
            al[i] = ((Long)list.get(i)).longValue();
            i--;
        } while (true);
    }

    public static final short[] toShortArray(List list)
    {
        short aword0[] = new short[list.size()];
        int i = -1 + aword0.length;
        do
        {
            if (i < 0)
            {
                return aword0;
            }
            aword0[i] = ((Short)list.get(i)).shortValue();
            i--;
        } while (true);
    }
}
