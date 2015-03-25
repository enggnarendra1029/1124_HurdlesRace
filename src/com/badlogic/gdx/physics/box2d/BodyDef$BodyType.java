// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            BodyDef

public static final class value extends Enum
{

    public static final ENUM.VALUES DynamicBody;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES KinematicBody;
    public static final ENUM.VALUES StaticBody;
    private int value;

    public static value valueOf(String s)
    {
        return (value)Enum.valueOf(com/badlogic/gdx/physics/box2d/BodyDef$BodyType, s);
    }

    public static value[] values()
    {
        value avalue[] = ENUM$VALUES;
        int i = avalue.length;
        value avalue1[] = new ENUM.VALUES[i];
        System.arraycopy(avalue, 0, avalue1, 0, i);
        return avalue1;
    }

    public int getValue()
    {
        return value;
    }

    static 
    {
        StaticBody = new <init>("StaticBody", 0, 0);
        KinematicBody = new <init>("KinematicBody", 1, 1);
        DynamicBody = new <init>("DynamicBody", 2, 2);
        value avalue[] = new <init>[3];
        avalue[0] = StaticBody;
        avalue[1] = KinematicBody;
        avalue[2] = DynamicBody;
        ENUM$VALUES = avalue;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        value = j;
    }
}
