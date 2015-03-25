// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;


public final class VerticalAlign extends Enum
{

    public static final VerticalAlign BOTTOM;
    public static final VerticalAlign CENTER;
    private static final VerticalAlign ENUM$VALUES[];
    public static final VerticalAlign TOP;

    private VerticalAlign(String s, int i)
    {
        super(s, i);
    }

    public static VerticalAlign valueOf(String s)
    {
        return (VerticalAlign)Enum.valueOf(org/andengine/util/VerticalAlign, s);
    }

    public static VerticalAlign[] values()
    {
        VerticalAlign averticalalign[] = ENUM$VALUES;
        int i = averticalalign.length;
        VerticalAlign averticalalign1[] = new VerticalAlign[i];
        System.arraycopy(averticalalign, 0, averticalalign1, 0, i);
        return averticalalign1;
    }

    static 
    {
        TOP = new VerticalAlign("TOP", 0);
        CENTER = new VerticalAlign("CENTER", 1);
        BOTTOM = new VerticalAlign("BOTTOM", 2);
        VerticalAlign averticalalign[] = new VerticalAlign[3];
        averticalalign[0] = TOP;
        averticalalign[1] = CENTER;
        averticalalign[2] = BOTTOM;
        ENUM$VALUES = averticalalign;
    }
}
