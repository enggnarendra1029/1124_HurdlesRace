// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo;


public final class DrawType extends Enum
{

    public static final DrawType DYNAMIC;
    private static final DrawType ENUM$VALUES[];
    public static final DrawType STATIC;
    public static final DrawType STREAM;
    private final int mUsage;

    private DrawType(String s, int i, int j)
    {
        super(s, i);
        mUsage = j;
    }

    public static DrawType valueOf(String s)
    {
        return (DrawType)Enum.valueOf(org/andengine/opengl/vbo/DrawType, s);
    }

    public static DrawType[] values()
    {
        DrawType adrawtype[] = ENUM$VALUES;
        int i = adrawtype.length;
        DrawType adrawtype1[] = new DrawType[i];
        System.arraycopy(adrawtype, 0, adrawtype1, 0, i);
        return adrawtype1;
    }

    public int getUsage()
    {
        return mUsage;
    }

    static 
    {
        STATIC = new DrawType("STATIC", 0, 35044);
        DYNAMIC = new DrawType("DYNAMIC", 1, 35048);
        STREAM = new DrawType("STREAM", 2, 35040);
        DrawType adrawtype[] = new DrawType[3];
        adrawtype[0] = STATIC;
        adrawtype[1] = DYNAMIC;
        adrawtype[2] = STREAM;
        ENUM$VALUES = adrawtype;
    }
}
