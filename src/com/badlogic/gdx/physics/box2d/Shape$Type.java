// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Shape

public static final class  extends Enum
{

    public static final ENUM.VALUES Chain;
    public static final ENUM.VALUES Circle;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES Edge;
    public static final ENUM.VALUES Polygon;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/badlogic/gdx/physics/box2d/Shape$Type, s);
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
        Circle = new <init>("Circle", 0);
        Polygon = new <init>("Polygon", 1);
        Edge = new <init>("Edge", 2);
        Chain = new <init>("Chain", 3);
        ENUM.VALUES avalues[] = new <init>[4];
        avalues[0] = Circle;
        avalues[1] = Polygon;
        avalues[2] = Edge;
        avalues[3] = Chain;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
