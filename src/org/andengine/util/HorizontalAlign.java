// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;


public final class HorizontalAlign extends Enum
{

    public static final HorizontalAlign CENTER;
    private static final HorizontalAlign ENUM$VALUES[];
    public static final HorizontalAlign LEFT;
    public static final HorizontalAlign RIGHT;

    private HorizontalAlign(String s, int i)
    {
        super(s, i);
    }

    public static HorizontalAlign valueOf(String s)
    {
        return (HorizontalAlign)Enum.valueOf(org/andengine/util/HorizontalAlign, s);
    }

    public static HorizontalAlign[] values()
    {
        HorizontalAlign ahorizontalalign[] = ENUM$VALUES;
        int i = ahorizontalalign.length;
        HorizontalAlign ahorizontalalign1[] = new HorizontalAlign[i];
        System.arraycopy(ahorizontalalign, 0, ahorizontalalign1, 0, i);
        return ahorizontalalign1;
    }

    static 
    {
        LEFT = new HorizontalAlign("LEFT", 0);
        CENTER = new HorizontalAlign("CENTER", 1);
        RIGHT = new HorizontalAlign("RIGHT", 2);
        HorizontalAlign ahorizontalalign[] = new HorizontalAlign[3];
        ahorizontalalign[0] = LEFT;
        ahorizontalalign[1] = CENTER;
        ahorizontalalign[2] = RIGHT;
        ENUM$VALUES = ahorizontalalign;
    }
}
