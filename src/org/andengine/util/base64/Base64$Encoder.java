// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.base64;


// Referenced classes of package org.andengine.util.base64:
//            Base64

static class count extends count
{

    static final boolean $assertionsDisabled = false;
    private static final byte ENCODE[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte ENCODE_WEBSAFE[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    public static final int LINE_GROUPS = 19;
    private final byte alphabet[];
    private int count;
    public final boolean do_cr;
    public final boolean do_newline;
    public final boolean do_padding;
    private final byte tail[] = new byte[2];
    int tailLen;

    public int maxOutputSize(int i)
    {
        return 10 + (i * 8) / 5;
    }

    public boolean process(byte abyte0[], int i, int j, boolean flag)
    {
        byte abyte1[];
        byte abyte2[];
        int k;
        int l;
        int i1;
        int j1;
        abyte1 = alphabet;
        abyte2 = output;
        k = count;
        l = i;
        i1 = j + i;
        j1 = -1;
        tailLen;
        JVM INSTR tableswitch 0 2: default 60
    //                   0 60
    //                   1 433
    //                   2 506;
           goto _L1 _L1 _L2 _L3
_L1:
        int i2;
        int j2;
        int k2;
        i2 = 0;
        if (j1 == -1)
        {
            break MISSING_BLOCK_LABEL_1282;
        }
        int k9 = 0 + 1;
        abyte2[0] = abyte1[0x3f & j1 >> 18];
        int l9 = k9 + 1;
        abyte2[k9] = abyte1[0x3f & j1 >> 12];
        int i10 = l9 + 1;
        abyte2[l9] = abyte1[0x3f & j1 >> 6];
        i2 = i10 + 1;
        abyte2[i10] = abyte1[j1 & 0x3f];
        if (--k != 0)
        {
            break MISSING_BLOCK_LABEL_1282;
        }
        if (do_cr)
        {
            int j10 = i2 + 1;
            abyte2[i2] = 13;
            i2 = j10;
        }
        k2 = i2 + 1;
        abyte2[i2] = 10;
        k = 19;
        j2 = l;
        break MISSING_BLOCK_LABEL_205;
_L2:
        if (l + 2 <= i1)
        {
            int k10 = (0xff & tail[0]) << 16;
            int l10 = l + 1;
            int i11 = k10 | (0xff & abyte0[l]) << 8;
            l = l10 + 1;
            j1 = i11 | 0xff & abyte0[l10];
            tailLen = 0;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (l + 1 <= i1)
        {
            int k1 = (0xff & tail[0]) << 16 | (0xff & tail[1]) << 8;
            int l1 = l + 1;
            j1 = k1 | 0xff & abyte0[l];
            tailLen = 0;
            l = l1;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        do
        {
            if (j2 + 3 > i1)
            {
                if (flag)
                {
                    int j3;
                    int j4;
                    if (j2 - tailLen == i1 - 1)
                    {
                        int l2;
                        int i3;
                        byte byte2;
                        int k7;
                        int l7;
                        int i8;
                        int j8;
                        if (tailLen > 0)
                        {
                            byte abyte8[] = tail;
                            int j9 = 0 + 1;
                            byte2 = abyte8[0];
                            k7 = j9;
                            j4 = j2;
                        } else
                        {
                            j4 = j2 + 1;
                            byte2 = abyte0[j2];
                            k7 = 0;
                        }
                        l7 = (byte2 & 0xff) << 4;
                        tailLen = tailLen - k7;
                        i8 = k2 + 1;
                        abyte2[k2] = abyte1[0x3f & l7 >> 6];
                        j8 = i8 + 1;
                        abyte2[i8] = abyte1[l7 & 0x3f];
                        if (do_padding)
                        {
                            int i9 = j8 + 1;
                            abyte2[j8] = 61;
                            j8 = i9 + 1;
                            abyte2[i9] = 61;
                        }
                        j3 = j8;
                        if (do_newline)
                        {
                            if (do_cr)
                            {
                                int l8 = j3 + 1;
                                abyte2[j3] = 13;
                                j3 = l8;
                            }
                            int k8 = j3 + 1;
                            abyte2[j3] = 10;
                            j3 = k8;
                        }
                    } else
                    if (j2 - tailLen == i1 - 2)
                    {
                        byte byte0;
                        int l4;
                        int i5;
                        byte byte1;
                        int k5;
                        int l5;
                        int i6;
                        if (tailLen > 1)
                        {
                            byte abyte7[] = tail;
                            int j7 = 0 + 1;
                            byte0 = abyte7[0];
                            l4 = j7;
                            j4 = j2;
                        } else
                        {
                            j4 = j2 + 1;
                            byte0 = abyte0[j2];
                            l4 = 0;
                        }
                        i5 = (byte0 & 0xff) << 10;
                        if (tailLen > 0)
                        {
                            byte abyte6[] = tail;
                            int i7 = l4 + 1;
                            byte1 = abyte6[l4];
                            l4 = i7;
                        } else
                        {
                            int j5 = j4 + 1;
                            byte1 = abyte0[j4];
                            j4 = j5;
                        }
                        k5 = i5 | (byte1 & 0xff) << 2;
                        tailLen = tailLen - l4;
                        l5 = k2 + 1;
                        abyte2[k2] = abyte1[0x3f & k5 >> 12];
                        i6 = l5 + 1;
                        abyte2[l5] = abyte1[0x3f & k5 >> 6];
                        j3 = i6 + 1;
                        abyte2[i6] = abyte1[k5 & 0x3f];
                        if (do_padding)
                        {
                            int l6 = j3 + 1;
                            abyte2[j3] = 61;
                            j3 = l6;
                        }
                        if (do_newline)
                        {
                            if (do_cr)
                            {
                                int k6 = j3 + 1;
                                abyte2[j3] = 13;
                                j3 = k6;
                            }
                            int j6 = j3 + 1;
                            abyte2[j3] = 10;
                            j3 = j6;
                        }
                    } else
                    {
                        if (do_newline && k2 > 0 && k != 19)
                        {
                            byte abyte3[];
                            int k3;
                            byte abyte4[];
                            int l3;
                            byte abyte5[];
                            int i4;
                            int k4;
                            if (do_cr)
                            {
                                k4 = k2 + 1;
                                abyte2[k2] = 13;
                            } else
                            {
                                k4 = k2;
                            }
                            k2 = k4 + 1;
                            abyte2[k4] = 10;
                        }
                        j4 = j2;
                        j3 = k2;
                    }
                    if (!$assertionsDisabled && tailLen != 0)
                    {
                        throw new AssertionError();
                    }
                    if (!$assertionsDisabled && j4 != i1)
                    {
                        throw new AssertionError();
                    }
                } else
                if (j2 == i1 - 1)
                {
                    abyte5 = tail;
                    i4 = tailLen;
                    tailLen = i4 + 1;
                    abyte5[i4] = abyte0[j2];
                    j2;
                    j3 = k2;
                } else
                {
                    if (j2 == i1 - 2)
                    {
                        abyte3 = tail;
                        k3 = tailLen;
                        tailLen = k3 + 1;
                        abyte3[k3] = abyte0[j2];
                        abyte4 = tail;
                        l3 = tailLen;
                        tailLen = l3 + 1;
                        abyte4[l3] = abyte0[j2 + 1];
                    }
                    j2;
                    j3 = k2;
                }
                op = j3;
                count = k;
                return true;
            }
            l2 = (0xff & abyte0[j2]) << 16 | (0xff & abyte0[j2 + 1]) << 8 | 0xff & abyte0[j2 + 2];
            abyte2[k2] = abyte1[0x3f & l2 >> 18];
            abyte2[k2 + 1] = abyte1[0x3f & l2 >> 12];
            abyte2[k2 + 2] = abyte1[0x3f & l2 >> 6];
            abyte2[k2 + 3] = abyte1[l2 & 0x3f];
            l = j2 + 3;
            i2 = k2 + 4;
            if (--k != 0)
            {
                break MISSING_BLOCK_LABEL_1282;
            }
            if (do_cr)
            {
                i3 = i2 + 1;
                abyte2[i2] = 13;
                i2 = i3;
            }
            k2 = i2 + 1;
            abyte2[i2] = 10;
            k = 19;
            j2 = l;
        } while (true);
        j2 = l;
        k2 = i2;
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L1; else goto _L6
_L6:
    }

    static 
    {
        boolean flag;
        if (!org/andengine/util/base64/Base64.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }

    public (int i, byte abyte0[])
    {
        boolean flag = true;
        super();
        output = abyte0;
        boolean flag1;
        boolean flag2;
        byte abyte1[];
        int j;
        if ((i & 1) == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        do_padding = flag1;
        if ((i & 2) == 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        do_newline = flag2;
        if ((i & 4) == 0)
        {
            flag = false;
        }
        do_cr = flag;
        if ((i & 8) == 0)
        {
            abyte1 = ENCODE;
        } else
        {
            abyte1 = ENCODE_WEBSAFE;
        }
        alphabet = abyte1;
        tailLen = 0;
        if (do_newline)
        {
            j = 19;
        } else
        {
            j = -1;
        }
        count = j;
    }
}
