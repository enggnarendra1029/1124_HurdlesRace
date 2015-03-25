// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Manifold

public static final class  extends Enum
{

    public static final ENUM.VALUES Circle;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES FaceA;
    public static final ENUM.VALUES FaceB;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/badlogic/gdx/physics/box2d/Manifold$ManifoldType, s);
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
        FaceA = new <init>("FaceA", 1);
        FaceB = new <init>("FaceB", 2);
        ENUM.VALUES avalues[] = new <init>[3];
        avalues[0] = Circle;
        avalues[1] = FaceA;
        avalues[2] = FaceB;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
