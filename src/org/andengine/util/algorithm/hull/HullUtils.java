// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.hull;


public class HullUtils
{

    public HullUtils()
    {
    }

    public static int indexOfLowestVertex(float af[], int i, int j, int k)
    {
        int l = 0;
        float f = af[j];
        int i1 = i * k;
        int j1 = 1;
        int k1 = k + j;
        do
        {
            if (k1 >= i1)
            {
                return l;
            }
            float f1 = af[k1];
            if (f1 < f)
            {
                l = j1;
                f = f1;
            }
            j1++;
            k1 += k;
        } while (true);
    }

    public static void swap(float af[], int i, int j, int k)
    {
        int l = j * i;
        int i1 = k * i;
        int j1 = i - 1;
        do
        {
            if (j1 < 0)
            {
                return;
            }
            float f = af[l + j1];
            af[l + j1] = af[i1 + j1];
            af[i1 + j1] = f;
            j1--;
        } while (true);
    }
}
