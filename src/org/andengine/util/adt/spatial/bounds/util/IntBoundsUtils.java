// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.spatial.bounds.util;

import org.andengine.util.adt.bounds.IIntBounds;

public final class IntBoundsUtils
{

    public IntBoundsUtils()
    {
    }

    public static final boolean adjacent(int i, int j, int k, int l, int i1, int j1, int k1, int l1)
    {
        int i2 = Math.min(k, k1) - Math.max(i, i1);
        int j2 = Math.min(l, l1) - Math.max(j, j1);
        return i2 == 0 && j2 > 0 || j2 == 0 && i2 > 0;
    }

    public static final boolean adjacent(IIntBounds iintbounds, IIntBounds iintbounds1)
    {
        return adjacent(iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax(), iintbounds1.getXMin(), iintbounds1.getYMin(), iintbounds1.getXMax(), iintbounds1.getYMax());
    }

    public static final boolean contains(int i, int j, int k, int l, int i1, int j1)
    {
        return i <= i1 && j <= j1 && k >= i1 && l >= j1;
    }

    public static final boolean contains(int i, int j, int k, int l, int i1, int j1, int k1, int l1)
    {
        return i <= i1 && j <= j1 && k >= k1 && l >= l1;
    }

    public static final boolean contains(IIntBounds iintbounds, int i, int j)
    {
        return contains(iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax(), i, j);
    }

    public static final boolean contains(IIntBounds iintbounds, int i, int j, int k, int l)
    {
        return contains(iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax(), i, j, k, l);
    }

    public static final boolean contains(IIntBounds iintbounds, IIntBounds iintbounds1)
    {
        return contains(iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax(), iintbounds1.getXMin(), iintbounds1.getYMin(), iintbounds1.getXMax(), iintbounds1.getYMax());
    }

    public static final boolean intersects(int i, int j, int k, int l, int i1, int j1, int k1, int l1)
    {
        return i < k1 && i1 < k && j < l1 && j1 < l || contains(i, j, k, l, i1, j1, k1, l1) || contains(i1, j1, k1, l1, i, j, k, l);
    }

    public static final boolean intersects(IIntBounds iintbounds, IIntBounds iintbounds1)
    {
        return intersects(iintbounds.getXMin(), iintbounds.getYMin(), iintbounds.getXMax(), iintbounds.getYMax(), iintbounds1.getXMin(), iintbounds1.getYMin(), iintbounds1.getXMax(), iintbounds1.getYMax());
    }
}
