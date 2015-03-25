// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.spatial.bounds.util;

import org.andengine.util.adt.bounds.IFloatBounds;

public final class FloatBoundsUtils
{

    public FloatBoundsUtils()
    {
    }

    public static final boolean contains(float f, float f1, float f2, float f3, float f4, float f5)
    {
        return f <= f4 && f1 <= f5 && f2 >= f4 && f3 >= f5;
    }

    public static final boolean contains(float f, float f1, float f2, float f3, float f4, float f5, float f6, float f7)
    {
        return f <= f4 && f1 <= f5 && f2 >= f6 && f3 >= f7;
    }

    public static final boolean contains(IFloatBounds ifloatbounds, float f, float f1)
    {
        return contains(ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax(), f, f1);
    }

    public static final boolean contains(IFloatBounds ifloatbounds, float f, float f1, float f2, float f3)
    {
        return contains(ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax(), f, f1, f2, f3);
    }

    public static final boolean contains(IFloatBounds ifloatbounds, IFloatBounds ifloatbounds1)
    {
        return contains(ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax(), ifloatbounds1.getXMin(), ifloatbounds1.getYMin(), ifloatbounds1.getXMax(), ifloatbounds1.getYMax());
    }

    public static final boolean intersects(float f, float f1, float f2, float f3, float f4, float f5, float f6, float f7)
    {
        return f < f6 && f4 < f2 && f1 < f7 && f5 < f3 || contains(f, f1, f2, f3, f4, f5, f6, f7) || contains(f4, f5, f6, f7, f, f1, f2, f3);
    }

    public static final boolean intersects(IFloatBounds ifloatbounds, IFloatBounds ifloatbounds1)
    {
        return intersects(ifloatbounds.getXMin(), ifloatbounds.getYMin(), ifloatbounds.getXMax(), ifloatbounds.getYMax(), ifloatbounds1.getXMin(), ifloatbounds1.getYMin(), ifloatbounds1.getXMax(), ifloatbounds1.getYMax());
    }
}
