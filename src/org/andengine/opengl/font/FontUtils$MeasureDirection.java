// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;


// Referenced classes of package org.andengine.opengl.font:
//            FontUtils

public static final class  extends Enum
{

    public static final ENUM.VALUES BACKWARDS;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES FORWARDS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/andengine/opengl/font/FontUtils$MeasureDirection, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        FORWARDS = new <init>("FORWARDS", 0);
        BACKWARDS = new <init>("BACKWARDS", 1);
        ENUM.VALUES avalues[] = new <init>[2];
        avalues[0] = FORWARDS;
        avalues[1] = BACKWARDS;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
