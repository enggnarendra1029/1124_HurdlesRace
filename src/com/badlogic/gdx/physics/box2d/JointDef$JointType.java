// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            JointDef

public static final class value extends Enum
{

    public static final valueTypes DistanceJoint;
    private static final valueTypes ENUM$VALUES[];
    public static final valueTypes FrictionJoint;
    public static final valueTypes GearJoint;
    public static final valueTypes MouseJoint;
    public static final valueTypes PrismaticJoint;
    public static final valueTypes PulleyJoint;
    public static final valueTypes RevoluteJoint;
    public static final valueTypes RopeJoint;
    public static final valueTypes Unknown;
    public static final valueTypes WeldJoint;
    public static final valueTypes WheelJoint;
    public static valueTypes valueTypes[];
    private int value;

    public static value valueOf(String s)
    {
        return (value)Enum.valueOf(com/badlogic/gdx/physics/box2d/JointDef$JointType, s);
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
        Unknown = new <init>("Unknown", 0, 0);
        RevoluteJoint = new <init>("RevoluteJoint", 1, 1);
        PrismaticJoint = new <init>("PrismaticJoint", 2, 2);
        DistanceJoint = new <init>("DistanceJoint", 3, 3);
        PulleyJoint = new <init>("PulleyJoint", 4, 4);
        MouseJoint = new <init>("MouseJoint", 5, 5);
        GearJoint = new <init>("GearJoint", 6, 6);
        WheelJoint = new <init>("WheelJoint", 7, 7);
        WeldJoint = new <init>("WeldJoint", 8, 8);
        FrictionJoint = new <init>("FrictionJoint", 9, 9);
        RopeJoint = new <init>("RopeJoint", 10, 10);
        value avalue[] = new <init>[11];
        avalue[0] = Unknown;
        avalue[1] = RevoluteJoint;
        avalue[2] = PrismaticJoint;
        avalue[3] = DistanceJoint;
        avalue[4] = PulleyJoint;
        avalue[5] = MouseJoint;
        avalue[6] = GearJoint;
        avalue[7] = WheelJoint;
        avalue[8] = WeldJoint;
        avalue[9] = FrictionJoint;
        avalue[10] = RopeJoint;
        ENUM$VALUES = avalue;
        value avalue1[] = new ENUM.VALUES[11];
        avalue1[0] = Unknown;
        avalue1[1] = RevoluteJoint;
        avalue1[2] = PrismaticJoint;
        avalue1[3] = DistanceJoint;
        avalue1[4] = PulleyJoint;
        avalue1[5] = MouseJoint;
        avalue1[6] = GearJoint;
        avalue1[7] = WheelJoint;
        avalue1[8] = WeldJoint;
        avalue1[9] = FrictionJoint;
        avalue1[10] = RopeJoint;
        valueTypes = avalue1;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        value = j;
    }
}
