// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.math;

import android.util.FloatMath;
import java.util.Random;

public final class MathUtils
{

    public static final Random RANDOM = new Random(System.nanoTime());

    public MathUtils()
    {
    }

    public static final float arrayAverage(float af[])
    {
        return arraySum(af) / (float)af.length;
    }

    public static final float arraySum(float af[])
    {
        float f = 0.0F;
        int i = af.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return f;
            }
            f += af[j];
            j++;
        } while (true);
    }

    public static final void arraySumInternal(int ai[])
    {
        int i = ai.length;
        int j = 1;
        do
        {
            if (j >= i)
            {
                return;
            }
            ai[j] = ai[j - 1] + ai[j];
            j++;
        } while (true);
    }

    public static final void arraySumInternal(long al[])
    {
        int i = al.length;
        int j = 1;
        do
        {
            if (j >= i)
            {
                return;
            }
            al[j] = al[j - 1] + al[j];
            j++;
        } while (true);
    }

    public static final void arraySumInternal(long al[], long l)
    {
        al[0] = l * al[0];
        int i = al.length;
        int j = 1;
        do
        {
            if (j >= i)
            {
                return;
            }
            al[j] = al[j - 1] + l * al[j];
            j++;
        } while (true);
    }

    public static final void arraySumInto(long al[], long al1[], long l)
    {
        al1[0] = l * al[0];
        int i = al.length;
        int j = 1;
        do
        {
            if (j >= i)
            {
                return;
            }
            al1[j] = al1[j - 1] + l * al[j];
            j++;
        } while (true);
    }

    public static final float atan2(float f, float f1)
    {
        return (float)Math.atan2(f, f1);
    }

    public static final float bringToBounds(float f, float f1, float f2)
    {
        return Math.max(f, Math.min(f1, f2));
    }

    public static final int bringToBounds(int i, int j, int k)
    {
        return Math.max(i, Math.min(j, k));
    }

    public static float cross(float f, float f1, float f2, float f3)
    {
        return f * f3 - f2 * f1;
    }

    public static final float degToRad(float f)
    {
        return 0.01745329F * f;
    }

    public static final float distance(float f, float f1, float f2, float f3)
    {
        float f4 = f2 - f;
        float f5 = f3 - f1;
        return FloatMath.sqrt(f4 * f4 + f5 * f5);
    }

    public static float dot(float f, float f1, float f2, float f3)
    {
        return f * f2 + f1 * f3;
    }

    public static final boolean isEven(int i)
    {
        return i % 2 == 0;
    }

    public static final boolean isInBounds(float f, float f1, float f2)
    {
        return f2 >= f && f2 <= f1;
    }

    public static final boolean isInBounds(int i, int j, int k)
    {
        return k >= i && k <= j;
    }

    public static final boolean isOdd(int i)
    {
        return i % 2 == 1;
    }

    public static final boolean isPowerOfTwo(int i)
    {
        return i != 0 && (i & i - 1) == 0;
    }

    public static final float length(float f, float f1)
    {
        return FloatMath.sqrt(f * f + f1 * f1);
    }

    public static final float mix(float f, float f1, float f2)
    {
        return f * (1.0F - f2) + f1 * f2;
    }

    public static final int mix(int i, int j, float f)
    {
        return Math.round((float)i * (1.0F - f) + f * (float)j);
    }

    public static final int nextPowerOfTwo(float f)
    {
        return nextPowerOfTwo((int)FloatMath.ceil(f));
    }

    public static final int nextPowerOfTwo(int i)
    {
        if (i == 0)
        {
            return 1;
        }
        int j = i - 1;
        int k = 1;
        do
        {
            if (k >= 32)
            {
                return j + 1;
            }
            j |= j >> k;
            k <<= 1;
        } while (true);
    }

    public static final float radToDeg(float f)
    {
        return 57.29578F * f;
    }

    public static final float random(float f, float f1)
    {
        return f + RANDOM.nextFloat() * (f1 - f);
    }

    public static final int random(int i, int j)
    {
        return i + RANDOM.nextInt(1 + (j - i));
    }

    public static final int randomSign()
    {
        return !RANDOM.nextBoolean() ? -1 : 1;
    }

    public static float[] revertRotateAndScaleAroundCenter(float af[], float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        revertScaleAroundCenter(af, f3, f4, f5, f6);
        return revertRotateAroundCenter(af, f, f1, f2);
    }

    public static float[] revertRotateAroundCenter(float af[], float f, float f1, float f2)
    {
        return rotateAroundCenter(af, -f, f1, f2);
    }

    public static float[] revertScaleAroundCenter(float af[], float f, float f1, float f2, float f3)
    {
        return scaleAroundCenter(af, 1.0F / f, 1.0F / f1, f2, f3);
    }

    public static float[] rotateAndScaleAroundCenter(float af[], float f, float f1, float f2, float f3, float f4, float f5, float f6)
    {
        rotateAroundCenter(af, f, f1, f2);
        return scaleAroundCenter(af, f3, f4, f5, f6);
    }

    public static float[] rotateAroundCenter(float af[], float f, float f1, float f2)
    {
        if (f == 0.0F) goto _L2; else goto _L1
_L1:
        float f4;
        float f5;
        int i;
        float f3 = degToRad(f);
        f4 = FloatMath.sin(f3);
        f5 = FloatMath.cos(f3);
        i = -2 + af.length;
_L5:
        if (i >= 0) goto _L3; else goto _L2
_L2:
        return af;
_L3:
        float f6 = af[i];
        float f7 = af[i + 1];
        af[i] = f1 + (f5 * (f6 - f1) - f4 * (f7 - f2));
        af[i + 1] = f2 + (f4 * (f6 - f1) + f5 * (f7 - f2));
        i -= 2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static float[] scaleAroundCenter(float af[], float f, float f1, float f2, float f3)
    {
        if (f == 1.0F && f1 == 1.0F) goto _L2; else goto _L1
_L1:
        int i = -2 + af.length;
_L5:
        if (i >= 0) goto _L3; else goto _L2
_L2:
        return af;
_L3:
        af[i] = f2 + f * (af[i] - f2);
        af[i + 1] = f3 + f1 * (af[i + 1] - f3);
        i -= 2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static final int signum(int i)
    {
        if (i == 0)
        {
            return 0;
        }
        return i <= 0 ? -1 : 1;
    }

    public static final int sum(int ai[])
    {
        int i = 0;
        int j = -1 + ai.length;
        do
        {
            if (j < 0)
            {
                return i;
            }
            i += ai[j];
            j--;
        } while (true);
    }

}
