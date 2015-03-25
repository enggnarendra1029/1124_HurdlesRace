// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.math;


// Referenced classes of package com.badlogic.gdx.math:
//            MathUtils

private static class 
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

    private ()
    {
    }
}
