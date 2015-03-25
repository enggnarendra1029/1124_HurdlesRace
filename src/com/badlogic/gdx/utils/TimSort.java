// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Comparator;

class TimSort
{

    private static final boolean DEBUG = false;
    private static final int INITIAL_TMP_STORAGE_LENGTH = 256;
    private static final int MIN_GALLOP = 7;
    private static final int MIN_MERGE = 32;
    private Object a[];
    private Comparator c;
    private int minGallop;
    private final int runBase[];
    private final int runLen[];
    private int stackSize;
    private Object tmp[];
    private int tmpCount;

    TimSort()
    {
        minGallop = 7;
        stackSize = 0;
        tmp = new Object[256];
        runBase = new int[40];
        runLen = new int[40];
    }

    private TimSort(Object aobj[], Comparator comparator)
    {
        minGallop = 7;
        stackSize = 0;
        a = aobj;
        c = comparator;
        int i = aobj.length;
        int j;
        byte byte0;
        if (i < 512)
        {
            j = i >>> 1;
        } else
        {
            j = 256;
        }
        tmp = new Object[j];
        if (i < 120)
        {
            byte0 = 5;
        } else
        if (i < 1542)
        {
            byte0 = 10;
        } else
        if (i < 0x1d16f)
        {
            byte0 = 19;
        } else
        {
            byte0 = 40;
        }
        runBase = new int[byte0];
        runLen = new int[byte0];
    }

    private static void binarySort(Object aobj[], int i, int j, int k, Comparator comparator)
    {
        if (k == i)
        {
            k++;
        }
_L6:
        Object obj;
        int l;
        int i1;
        if (k >= j)
        {
            return;
        }
        obj = aobj[k];
        l = i;
        i1 = k;
_L7:
        if (l < i1) goto _L2; else goto _L1
_L1:
        int k1 = k - l;
        k1;
        JVM INSTR tableswitch 1 2: default 64
    //                   1 142
    //                   2 130;
           goto _L3 _L4 _L5
_L4:
        break MISSING_BLOCK_LABEL_142;
_L3:
        System.arraycopy(((Object) (aobj)), l, ((Object) (aobj)), l + 1, k1);
_L8:
        aobj[l] = obj;
        k++;
          goto _L6
_L2:
        int j1 = l + i1 >>> 1;
        if (comparator.compare(obj, aobj[j1]) < 0)
        {
            i1 = j1;
        } else
        {
            l = j1 + 1;
        }
          goto _L7
_L5:
        aobj[l + 2] = aobj[l + 1];
        aobj[l + 1] = aobj[l];
          goto _L8
    }

    private static int countRunAndMakeAscending(Object aobj[], int i, int j, Comparator comparator)
    {
        int l;
        int i1;
        int k = i + 1;
        if (k == j)
        {
            return 1;
        }
        l = k + 1;
        if (comparator.compare(aobj[k], aobj[i]) >= 0)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        i1 = l;
_L3:
        if (i1 < j && comparator.compare(aobj[i1], aobj[i1 - 1]) < 0) goto _L2; else goto _L1
_L1:
        reverseRange(aobj, i, i1);
_L4:
        return i1 - i;
_L2:
        i1++;
          goto _L3
        i1 = l;
        while (i1 < j && comparator.compare(aobj[i1], aobj[i1 - 1]) >= 0) 
        {
            i1++;
        }
          goto _L4
    }

    private Object[] ensureCapacity(int i)
    {
        tmpCount = Math.max(tmpCount, i);
        if (tmp.length < i)
        {
            int j = i | i >> 1;
            int k = j | j >> 2;
            int l = k | k >> 4;
            int i1 = l | l >> 8;
            int j1 = 1 + (i1 | i1 >> 16);
            int k1;
            if (j1 < 0)
            {
                k1 = i;
            } else
            {
                k1 = Math.min(j1, a.length >>> 1);
            }
            tmp = new Object[k1];
        }
        return tmp;
    }

    private static int gallopLeft(Object obj, Object aobj[], int i, int j, int k, Comparator comparator)
    {
        int l;
        int i1;
        l = 0;
        i1 = 1;
        if (comparator.compare(obj, aobj[i + k]) <= 0) goto _L2; else goto _L1
_L1:
        int l2 = j - k;
_L5:
        if (i1 < l2 && comparator.compare(obj, aobj[i1 + (i + k)]) > 0) goto _L4; else goto _L3
_L3:
        int l1;
        int i2;
        if (i1 > l2)
        {
            i1 = l2;
        }
        l1 = l + k;
        i2 = i1 + k;
_L6:
        int j2 = l1 + 1;
_L8:
        if (j2 >= i2)
        {
            return i2;
        }
        break MISSING_BLOCK_LABEL_210;
_L4:
        l = i1;
        i1 = 1 + (i1 << 1);
        if (i1 <= 0)
        {
            i1 = l2;
        }
          goto _L5
_L2:
        int j1 = k + 1;
_L7:
label0:
        {
            if (i1 < j1 && comparator.compare(obj, aobj[(i + k) - i1]) <= 0)
            {
                break label0;
            }
            if (i1 > j1)
            {
                i1 = j1;
            }
            int k1 = l;
            l1 = k - i1;
            i2 = k - k1;
        }
          goto _L6
        l = i1;
        i1 = 1 + (i1 << 1);
        if (i1 <= 0)
        {
            i1 = j1;
        }
          goto _L7
        int k2 = j2 + (i2 - j2 >>> 1);
        if (comparator.compare(obj, aobj[i + k2]) > 0)
        {
            j2 = k2 + 1;
        } else
        {
            i2 = k2;
        }
          goto _L8
    }

    private static int gallopRight(Object obj, Object aobj[], int i, int j, int k, Comparator comparator)
    {
        int l;
        int i1;
        l = 1;
        i1 = 0;
        if (comparator.compare(obj, aobj[i + k]) >= 0) goto _L2; else goto _L1
_L1:
        int k2 = k + 1;
_L5:
        if (l < k2 && comparator.compare(obj, aobj[(i + k) - l]) < 0) goto _L4; else goto _L3
_L3:
        int k1;
        int l1;
        if (l > k2)
        {
            l = k2;
        }
        int l2 = i1;
        k1 = k - l;
        l1 = k - l2;
_L6:
        int i2 = k1 + 1;
_L8:
        if (i2 >= l1)
        {
            return l1;
        }
        break MISSING_BLOCK_LABEL_210;
_L4:
        i1 = l;
        l = 1 + (l << 1);
        if (l <= 0)
        {
            l = k2;
        }
          goto _L5
_L2:
        int j1 = j - k;
_L7:
label0:
        {
            if (l < j1 && comparator.compare(obj, aobj[l + (i + k)]) >= 0)
            {
                break label0;
            }
            if (l > j1)
            {
                l = j1;
            }
            k1 = i1 + k;
            l1 = l + k;
        }
          goto _L6
        i1 = l;
        l = 1 + (l << 1);
        if (l <= 0)
        {
            l = j1;
        }
          goto _L7
        int j2 = i2 + (l1 - i2 >>> 1);
        if (comparator.compare(obj, aobj[i + j2]) < 0)
        {
            l1 = j2;
        } else
        {
            i2 = j2 + 1;
        }
          goto _L8
    }

    private void mergeAt(int i)
    {
        int j = runBase[i];
        int k = runLen[i];
        int l = runBase[i + 1];
        int i1 = runLen[i + 1];
        runLen[i] = k + i1;
        if (i == -3 + stackSize)
        {
            runBase[i + 1] = runBase[i + 2];
            runLen[i + 1] = runLen[i + 2];
        }
        stackSize = -1 + stackSize;
        int j1 = gallopRight(a[l], a, j, k, 0, c);
        int k1 = j + j1;
        int l1 = k - j1;
        int i2;
        if (l1 != 0)
        {
            if ((i2 = gallopLeft(a[-1 + (k1 + l1)], a, l, i1, i1 - 1, c)) != 0)
            {
                if (l1 <= i2)
                {
                    mergeLo(k1, l1, l, i2);
                    return;
                } else
                {
                    mergeHi(k1, l1, l, i2);
                    return;
                }
            }
        }
    }

    private void mergeCollapse()
    {
_L5:
        if (stackSize > 1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        i = -2 + stackSize;
        if (i <= 0 || runLen[i - 1] > runLen[i] + runLen[i + 1])
        {
            continue; /* Loop/switch isn't completed */
        }
        if (runLen[i - 1] < runLen[i + 1])
        {
            i--;
        }
        mergeAt(i);
        continue; /* Loop/switch isn't completed */
        if (runLen[i] > runLen[i + 1]) goto _L1; else goto _L3
_L3:
        mergeAt(i);
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void mergeForceCollapse()
    {
        do
        {
            if (stackSize <= 1)
            {
                return;
            }
            int i = -2 + stackSize;
            if (i > 0 && runLen[i - 1] < runLen[i + 1])
            {
                i--;
            }
            mergeAt(i);
        } while (true);
    }

    private void mergeHi(int i, int j, int k, int l)
    {
        Object aobj[];
        Object aobj1[];
        int j1;
        int j2;
        Comparator comparator;
        int k2;
        int l2;
        int i3;
        aobj = a;
        aobj1 = ensureCapacity(l);
        System.arraycopy(((Object) (aobj)), k, ((Object) (aobj1)), 0, l);
        int i1 = -1 + (i + j);
        j1 = l - 1;
        int k1 = -1 + (k + l);
        int l1 = k1 - 1;
        int i2 = i1 - 1;
        aobj[k1] = aobj[i1];
        j2 = j - 1;
        if (j2 == 0)
        {
            System.arraycopy(((Object) (aobj1)), 0, ((Object) (aobj)), l1 - (l - 1), l);
            return;
        }
        if (l == 1)
        {
            int i7 = l1 - j2;
            System.arraycopy(((Object) (aobj)), 1 + (i2 - j2), ((Object) (aobj)), i7 + 1, j2);
            aobj[i7] = aobj1[j1];
            return;
        }
        comparator = c;
        k2 = minGallop;
        l2 = l1;
        i3 = i2;
_L9:
        int j3;
        int k3;
        j3 = 0;
        k3 = 0;
_L3:
        int k6;
        int l6;
        if (comparator.compare(aobj1[j1], aobj[i3]) < 0)
        {
            k6 = l2 - 1;
            l6 = i3 - 1;
            aobj[l2] = aobj[i3];
            j3++;
            if (--j2 != 0)
            {
                break MISSING_BLOCK_LABEL_716;
            }
            l2 = k6;
            i3 = l6;
        } else
        {
label0:
            {
                l3 = l2 - 1;
                i4 = j1 - 1;
                aobj[l2] = aobj1[j1];
                k3++;
                j3 = 0;
                if (--l != 1)
                {
                    break label0;
                }
                l2 = l3;
                j1 = i4;
            }
        }
          goto _L1
        l2 = l3;
        j1 = i4;
_L10:
        if ((j3 | k3) < k2) goto _L3; else goto _L2
_L2:
        Object obj = aobj1[j1];
        int j4 = j2 - 1;
        k4 = j2 - gallopRight(obj, aobj, i, j2, j4, comparator);
        if (k4 == 0) goto _L5; else goto _L4
_L4:
        l2 -= k4;
        i3 -= k4;
        j2 -= k4;
        System.arraycopy(((Object) (aobj)), i3 + 1, ((Object) (aobj)), l2 + 1, k4);
        if (j2 == 0) goto _L1; else goto _L5
_L5:
        int l4;
        int i5;
label1:
        {
            l4 = l2 - 1;
            i5 = j1 - 1;
            aobj[l2] = aobj1[j1];
            if (--l != 1)
            {
                break label1;
            }
            l2 = l4;
            j1 = i5;
        }
          goto _L1
        Object obj1 = aobj[i3];
        int j5 = l - 1;
        k5 = l - gallopLeft(obj1, aobj1, 0, l, j5, comparator);
        if (k5 == 0)
        {
            break MISSING_BLOCK_LABEL_705;
        }
        l2 = l4 - k5;
        j1 = i5 - k5;
        l -= k5;
        System.arraycopy(((Object) (aobj1)), j1 + 1, ((Object) (aobj)), l2 + 1, k5);
        if (l <= 1) goto _L1; else goto _L6
_L6:
        int l5;
        int i6;
label2:
        {
            l5 = l2 - 1;
            i6 = i3 - 1;
            aobj[l2] = aobj[i3];
            if (--j2 != 0)
            {
                break label2;
            }
            l2 = l5;
            i3 = i6;
        }
          goto _L1
        k2--;
        boolean flag;
        boolean flag1;
        if (k4 >= 7)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (k5 >= 7)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 | flag) goto _L8; else goto _L7
_L7:
        if (k2 < 0)
        {
            k2 = 0;
        }
        k2 += 2;
        l2 = l5;
        i3 = i6;
          goto _L9
_L1:
        if (k2 < 1)
        {
            k2 = 1;
        }
        minGallop = k2;
        int l3;
        int i4;
        int k4;
        int k5;
        if (l == 1)
        {
            int j6 = l2 - j2;
            System.arraycopy(((Object) (aobj)), 1 + (i3 - j2), ((Object) (aobj)), j6 + 1, j2);
            aobj[j6] = aobj1[j1];
            return;
        }
        if (l == 0)
        {
            throw new IllegalArgumentException("Comparison method violates its general contract!");
        } else
        {
            System.arraycopy(((Object) (aobj1)), 0, ((Object) (aobj)), l2 - (l - 1), l);
            return;
        }
_L8:
        l2 = l5;
        i3 = i6;
          goto _L2
        l2 = l4;
        j1 = i5;
          goto _L6
        l2 = k6;
        i3 = l6;
        k3 = 0;
          goto _L10
    }

    private void mergeLo(int i, int j, int k, int l)
    {
        Object aobj[];
        Object aobj1[];
        int i1;
        int l1;
        Comparator comparator;
        int i2;
        int j2;
        int k2;
        aobj = a;
        aobj1 = ensureCapacity(j);
        System.arraycopy(((Object) (aobj)), i, ((Object) (aobj1)), 0, j);
        i1 = 0;
        int j1 = i + 1;
        int k1 = k + 1;
        aobj[i] = aobj[k];
        l1 = l - 1;
        if (l1 == 0)
        {
            System.arraycopy(((Object) (aobj1)), 0, ((Object) (aobj)), j1, j);
            return;
        }
        if (j == 1)
        {
            System.arraycopy(((Object) (aobj)), k1, ((Object) (aobj)), j1, l1);
            aobj[j1 + l1] = aobj1[0];
            return;
        }
        comparator = c;
        i2 = minGallop;
        j2 = j1;
        k2 = k1;
_L7:
        int l2;
        int i3;
        l2 = 0;
        i3 = 0;
_L3:
        int j5;
        int k5;
        if (comparator.compare(aobj[k2], aobj1[i1]) < 0)
        {
            j5 = j2 + 1;
            k5 = k2 + 1;
            aobj[j2] = aobj[k2];
            i3++;
            if (--l1 != 0)
            {
                break MISSING_BLOCK_LABEL_623;
            }
            j2 = j5;
            k2 = k5;
        } else
        {
label0:
            {
                j3 = j2 + 1;
                k3 = i1 + 1;
                aobj[j2] = aobj1[i1];
                l2++;
                i3 = 0;
                if (--j != 1)
                {
                    break label0;
                }
                j2 = j3;
                i1 = k3;
            }
        }
          goto _L1
        j2 = j3;
        i1 = k3;
_L9:
        if ((l2 | i3) < i2) goto _L3; else goto _L2
_L2:
        int l3 = k2;
_L8:
label1:
        {
            i4 = gallopRight(aobj[l3], aobj1, i1, j, 0, comparator);
            if (i4 == 0)
            {
                break label1;
            }
            System.arraycopy(((Object) (aobj1)), i1, ((Object) (aobj)), j2, i4);
            j2 += i4;
            i1 += i4;
            j -= i4;
            if (j > 1)
            {
                break label1;
            }
            k2 = l3;
        }
          goto _L1
        int j4;
label2:
        {
            j4 = j2 + 1;
            k2 = l3 + 1;
            aobj[j2] = aobj[l3];
            if (--l1 != 0)
            {
                break label2;
            }
            j2 = j4;
        }
          goto _L1
        for (k4 = gallopLeft(aobj1[i1], aobj, k2, l1, 0, comparator); k4 == 0; k4 = gallopLeft(aobj1[i1], aobj, k2, l1, 0, comparator))
        {
            break MISSING_BLOCK_LABEL_616;
        }

        System.arraycopy(((Object) (aobj)), k2, ((Object) (aobj)), j4, k4);
        j2 = j4 + k4;
        k2 += k4;
        l1 -= k4;
        if (l1 == 0) goto _L1; else goto _L4
_L4:
        int l4;
        int i5;
label3:
        {
            l4 = j2 + 1;
            i5 = i1 + 1;
            aobj[j2] = aobj1[i1];
            if (--j != 1)
            {
                break label3;
            }
            j2 = l4;
            i1 = i5;
        }
          goto _L1
        i2--;
        boolean flag;
        boolean flag1;
        if (i4 >= 7)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (k4 >= 7)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 | flag) goto _L6; else goto _L5
_L5:
        if (i2 < 0)
        {
            i2 = 0;
        }
        i2 += 2;
        j2 = l4;
        i1 = i5;
          goto _L7
_L1:
        if (i2 < 1)
        {
            i2 = 1;
        }
        minGallop = i2;
        int j3;
        int k3;
        int i4;
        int k4;
        if (j == 1)
        {
            System.arraycopy(((Object) (aobj)), k2, ((Object) (aobj)), j2, l1);
            aobj[j2 + l1] = aobj1[i1];
            return;
        }
        if (j == 0)
        {
            throw new IllegalArgumentException("Comparison method violates its general contract!");
        } else
        {
            System.arraycopy(((Object) (aobj1)), i1, ((Object) (aobj)), j2, j);
            return;
        }
_L6:
        j2 = l4;
        l3 = k2;
        i1 = i5;
          goto _L8
        j2 = j4;
          goto _L4
        j2 = j5;
        k2 = k5;
        l2 = 0;
          goto _L9
    }

    private static int minRunLength(int i)
    {
        int j = 0;
        do
        {
            if (i < 32)
            {
                return i + j;
            }
            j |= i & 1;
            i >>= 1;
        } while (true);
    }

    private void pushRun(int i, int j)
    {
        runBase[stackSize] = i;
        runLen[stackSize] = j;
        stackSize = 1 + stackSize;
    }

    private static void rangeCheck(int i, int j, int k)
    {
        if (j > k)
        {
            throw new IllegalArgumentException((new StringBuilder("fromIndex(")).append(j).append(") > toIndex(").append(k).append(")").toString());
        }
        if (j < 0)
        {
            throw new ArrayIndexOutOfBoundsException(j);
        }
        if (k > i)
        {
            throw new ArrayIndexOutOfBoundsException(k);
        } else
        {
            return;
        }
    }

    private static void reverseRange(Object aobj[], int i, int j)
    {
        int k = j - 1;
        int l = i;
        do
        {
            if (l >= k)
            {
                return;
            }
            Object obj = aobj[l];
            int i1 = l + 1;
            aobj[l] = aobj[k];
            int j1 = k - 1;
            aobj[k] = obj;
            k = j1;
            l = i1;
        } while (true);
    }

    static void sort(Object aobj[], int i, int j, Comparator comparator)
    {
        if (comparator == null)
        {
            Arrays.sort(aobj, i, j);
        } else
        {
            rangeCheck(aobj.length, i, j);
            int k = j - i;
            if (k >= 2)
            {
                if (k < 32)
                {
                    binarySort(aobj, i, j, i + countRunAndMakeAscending(aobj, i, j, comparator), comparator);
                    return;
                }
                TimSort timsort = new TimSort(aobj, comparator);
                int l = minRunLength(k);
                do
                {
                    int i1 = countRunAndMakeAscending(aobj, i, j, comparator);
                    if (i1 < l)
                    {
                        int j1;
                        if (k <= l)
                        {
                            j1 = k;
                        } else
                        {
                            j1 = l;
                        }
                        binarySort(aobj, i, i + j1, i + i1, comparator);
                        i1 = j1;
                    }
                    timsort.pushRun(i, i1);
                    timsort.mergeCollapse();
                    i += i1;
                    k -= i1;
                } while (k != 0);
                timsort.mergeForceCollapse();
                return;
            }
        }
    }

    static void sort(Object aobj[], Comparator comparator)
    {
        sort(aobj, 0, aobj.length, comparator);
    }

    public void doSort(Object aobj[], Comparator comparator, int i, int j)
    {
        stackSize = 0;
        rangeCheck(aobj.length, i, j);
        int k = j - i;
        if (k >= 2)
        {
            if (k < 32)
            {
                binarySort(aobj, i, j, i + countRunAndMakeAscending(aobj, i, j, comparator), comparator);
                return;
            }
            a = aobj;
            c = comparator;
            tmpCount = 0;
            int l = minRunLength(k);
            do
            {
                int i1 = countRunAndMakeAscending(aobj, i, j, comparator);
                if (i1 < l)
                {
                    Object aobj1[];
                    int j1;
                    int k1;
                    int l1;
                    if (k <= l)
                    {
                        l1 = k;
                    } else
                    {
                        l1 = l;
                    }
                    binarySort(aobj, i, i + l1, i + i1, comparator);
                    i1 = l1;
                }
                pushRun(i, i1);
                mergeCollapse();
                i += i1;
                k -= i1;
            } while (k != 0);
            mergeForceCollapse();
            a = null;
            c = null;
            aobj1 = tmp;
            j1 = 0;
            k1 = tmpCount;
            while (j1 < k1) 
            {
                aobj1[j1] = null;
                j1++;
            }
        }
    }
}
