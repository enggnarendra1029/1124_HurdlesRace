// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive;


public final class DrawMode extends Enum
{

    private static final DrawMode ENUM$VALUES[];
    public static final DrawMode LINES;
    public static final DrawMode LINE_LOOP;
    public static final DrawMode LINE_STRIP;
    public static final DrawMode POINTS;
    public static final DrawMode TRIANGLES;
    public static final DrawMode TRIANGLE_FAN;
    public static final DrawMode TRIANGLE_STRIP;
    public final int mDrawMode;

    private DrawMode(String s, int i, int j)
    {
        super(s, i);
        mDrawMode = j;
    }

    public static DrawMode valueOf(String s)
    {
        return (DrawMode)Enum.valueOf(org/andengine/entity/primitive/DrawMode, s);
    }

    public static DrawMode[] values()
    {
        DrawMode adrawmode[] = ENUM$VALUES;
        int i = adrawmode.length;
        DrawMode adrawmode1[] = new DrawMode[i];
        System.arraycopy(adrawmode, 0, adrawmode1, 0, i);
        return adrawmode1;
    }

    public int getDrawMode()
    {
        return mDrawMode;
    }

    static 
    {
        POINTS = new DrawMode("POINTS", 0, 0);
        LINE_STRIP = new DrawMode("LINE_STRIP", 1, 3);
        LINE_LOOP = new DrawMode("LINE_LOOP", 2, 2);
        LINES = new DrawMode("LINES", 3, 1);
        TRIANGLE_STRIP = new DrawMode("TRIANGLE_STRIP", 4, 5);
        TRIANGLE_FAN = new DrawMode("TRIANGLE_FAN", 5, 6);
        TRIANGLES = new DrawMode("TRIANGLES", 6, 4);
        DrawMode adrawmode[] = new DrawMode[7];
        adrawmode[0] = POINTS;
        adrawmode[1] = LINE_STRIP;
        adrawmode[2] = LINE_LOOP;
        adrawmode[3] = LINES;
        adrawmode[4] = TRIANGLE_STRIP;
        adrawmode[5] = TRIANGLE_FAN;
        adrawmode[6] = TRIANGLES;
        ENUM$VALUES = adrawmode;
    }
}
