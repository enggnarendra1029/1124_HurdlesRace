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

    private ()
    {
    }
}
