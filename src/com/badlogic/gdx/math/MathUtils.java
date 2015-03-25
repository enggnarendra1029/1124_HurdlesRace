// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import java.util.Random;

public class MathUtils
{
    private static class Atan2
    {

        static final float table[];

        static 
        {
            int i;
            table = new float[16384];
            i = 0;
_L2:
            if (i >= MathUtils.ATAN2_DIM)
            {
                return;
            }
            int j = 0;
            do
            {
label0:
                {
                    if (j < MathUtils.ATAN2_DIM)
                    {
                        break label0;
                    }
                    i++;
                }
                if (true)
                {
                    continue;
                }
                float f = (float)i / (float)MathUtils.ATAN2_DIM;
                float f1 = (float)j / (float)MathUtils.ATAN2_DIM;
                table[i + j * MathUtils.ATAN2_DIM] = (float)Math.atan2(f1, f);
                j++;
            } while (true);
            if (true) goto _L2; else goto _L1
_L1:
        }

        private Atan2()
        {
        }
    }

    private static class Cos
    {

        static final float table[];

        static 
        {
            int i;
            table = new float[8192];
            i = 0;
_L3:
            if (i < 8192) goto _L2; else goto _L1
_L1:
            int j = 0;
_L4:
            if (j >= 360)
            {
                return;
            }
            break MISSING_BLOCK_LABEL_54;
_L2:
            table[i] = (float)Math.cos(6.283185F * ((0.5F + (float)i) / 8192F));
            i++;
              goto _L3
            table[0x1fff & (int)(22.75556F * (float)j)] = (float)Math.cos(0.01745329F * (float)j);
            j += 90;
              goto _L4
        }

        private Cos()
        {
        }
    }

    private static class Sin
    {

        static final float table[];

        static 
        {
            int i;
            table = new float[8192];
            i = 0;
_L3:
            if (i < 8192) goto _L2; else goto _L1
_L1:
            int j = 0;
_L4:
            if (j >= 360)
            {
                return;
            }
            break MISSING_BLOCK_LABEL_54;
_L2:
            table[i] = (float)Math.sin(6.283185F * ((0.5F + (float)i) / 8192F));
            i++;
              goto _L3
            table[0x1fff & (int)(22.75556F * (float)j)] = (float)Math.sin(0.01745329F * (float)j);
            j += 90;
              goto _L4
        }

        private Sin()
        {
        }
    }


    private static final int ATAN2_BITS = 7;
    private static final int ATAN2_BITS2 = 14;
    private static final int ATAN2_COUNT = 16384;
    static final int ATAN2_DIM = 0;
    private static final int ATAN2_MASK = 16383;
    private static final double BIG_ENOUGH_CEIL = 0D;
    private static final double BIG_ENOUGH_FLOOR = 16384D;
    private static final int BIG_ENOUGH_INT = 16384;
    private static final double BIG_ENOUGH_ROUND = 16384.5D;
    private static final double CEIL = 0.99999990000000005D;
    private static final float INV_ATAN2_DIM_MINUS_1 = 0F;
    public static final float PI = 3.141593F;
    private static final int SIN_BITS = 13;
    private static final int SIN_COUNT = 8192;
    private static final int SIN_MASK = 8191;
    private static final float degFull = 360F;
    public static final float degRad = 0.01745329F;
    private static final float degToIndex = 22.75556F;
    public static final float degreesToRadians = 0.01745329F;
    public static final float radDeg = 57.29578F;
    private static final float radFull = 6.283185F;
    private static final float radToIndex = 1303.797F;
    public static final float radiansToDegrees = 57.29578F;
    public static Random random = new Random();

    public MathUtils()
    {
    }

    public static final float atan2(float f, float f1)
    {
        float f2;
        float f3;
        float f4;
        if (f1 < 0.0F)
        {
            float f5;
            int i;
            int j;
            if (f < 0.0F)
            {
                f = -f;
                f2 = 1.0F;
            } else
            {
                f2 = -1F;
            }
            f1 = -f1;
            f3 = -3.141593F;
        } else
        {
            if (f < 0.0F)
            {
                f = -f;
                f2 = -1F;
            } else
            {
                f2 = 1.0F;
            }
            f3 = 0.0F;
        }
        if (f1 < f)
        {
            f4 = f;
        } else
        {
            f4 = f1;
        }
        f5 = 1.0F / (f4 * INV_ATAN2_DIM_MINUS_1);
        i = (int)(f1 * f5);
        j = (int)(f * f5);
        return f2 * (f3 + Atan2.table[i + j * ATAN2_DIM]);
    }

    public static int ceil(float f)
    {
        return -16384 + (int)((double)f + BIG_ENOUGH_CEIL);
    }

    public static int ceilPositive(float f)
    {
        return (int)(0.99999990000000005D + (double)f);
    }

    public static float clamp(float f, float f1, float f2)
    {
        if (f < f1)
        {
            return f1;
        }
        if (f > f2)
        {
            return f2;
        } else
        {
            return f;
        }
    }

    public static int clamp(int i, int j, int k)
    {
        if (i < j)
        {
            return j;
        }
        if (i > k)
        {
            return k;
        } else
        {
            return i;
        }
    }

    public static short clamp(short word0, short word1, short word2)
    {
        if (word0 < word1)
        {
            return word1;
        }
        if (word0 > word2)
        {
            return word2;
        } else
        {
            return word0;
        }
    }

    public static final float cos(float f)
    {
        return Cos.table[0x1fff & (int)(1303.797F * f)];
    }

    public static final float cosDeg(float f)
    {
        return Cos.table[0x1fff & (int)(22.75556F * f)];
    }

    public static int floor(float f)
    {
        return -16384 + (int)(16384D + (double)f);
    }

    public static int floorPositive(float f)
    {
        return (int)f;
    }

    public static boolean isPowerOfTwo(int i)
    {
        return i != 0 && (i & i - 1) == 0;
    }

    public static int nextPowerOfTwo(int i)
    {
        if (i == 0)
        {
            return 1;
        } else
        {
            int j = i - 1;
            int k = j | j >> 1;
            int l = k | k >> 2;
            int i1 = l | l >> 4;
            int j1 = i1 | i1 >> 8;
            return 1 + (j1 | j1 >> 16);
        }
    }

    public static final float random()
    {
        return random.nextFloat();
    }

    public static final float random(float f)
    {
        return f * random.nextFloat();
    }

    public static final float random(float f, float f1)
    {
        return f + random.nextFloat() * (f1 - f);
    }

    public static final int random(int i)
    {
        return random.nextInt(i + 1);
    }

    public static final int random(int i, int j)
    {
        return i + random.nextInt(1 + (j - i));
    }

    public static final boolean randomBoolean()
    {
        return random.nextBoolean();
    }

    public static int round(float f)
    {
        return -16384 + (int)(16384.5D + (double)f);
    }

    public static int roundPositive(float f)
    {
        return (int)(0.5F + f);
    }

    public static final float sin(float f)
    {
        return Sin.table[0x1fff & (int)(1303.797F * f)];
    }

    public static final float sinDeg(float f)
    {
        return Sin.table[0x1fff & (int)(22.75556F * f)];
    }

    static 
    {
        ATAN2_DIM = (int)Math.sqrt(16384D);
        INV_ATAN2_DIM_MINUS_1 = 1.0F / (float)(-1 + ATAN2_DIM);
        BIG_ENOUGH_CEIL = NumberUtils.longBitsToDouble(NumberUtils.doubleToLongBits(16385D) - 1L);
    }
}
