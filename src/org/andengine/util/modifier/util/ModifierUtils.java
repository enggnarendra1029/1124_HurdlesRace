// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.modifier.util;

import org.andengine.util.modifier.IModifier;

public class ModifierUtils
{

    public ModifierUtils()
    {
    }

    public static float getSequenceDurationOfModifier(IModifier aimodifier[])
    {
        float f = 1.401298E-45F;
        int i = -1 + aimodifier.length;
        do
        {
            if (i < 0)
            {
                return f;
            }
            f += aimodifier[i].getDuration();
            i--;
        } while (true);
    }
}
