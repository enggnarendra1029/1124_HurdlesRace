// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Body

public class JointDef
{
    public static final class JointType extends Enum
    {

        public static final JointType DistanceJoint;
        private static final JointType ENUM$VALUES[];
        public static final JointType FrictionJoint;
        public static final JointType GearJoint;
        public static final JointType MouseJoint;
        public static final JointType PrismaticJoint;
        public static final JointType PulleyJoint;
        public static final JointType RevoluteJoint;
        public static final JointType RopeJoint;
        public static final JointType Unknown;
        public static final JointType WeldJoint;
        public static final JointType WheelJoint;
        public static JointType valueTypes[];
        private int value;

        public static JointType valueOf(String s)
        {
            return (JointType)Enum.valueOf(com/badlogic/gdx/physics/box2d/JointDef$JointType, s);
        }

        public static JointType[] values()
        {
            JointType ajointtype[] = ENUM$VALUES;
            int i = ajointtype.length;
            JointType ajointtype1[] = new JointType[i];
            System.arraycopy(ajointtype, 0, ajointtype1, 0, i);
            return ajointtype1;
        }

        public int getValue()
        {
            return value;
        }

        static 
        {
            Unknown = new JointType("Unknown", 0, 0);
            RevoluteJoint = new JointType("RevoluteJoint", 1, 1);
            PrismaticJoint = new JointType("PrismaticJoint", 2, 2);
            DistanceJoint = new JointType("DistanceJoint", 3, 3);
            PulleyJoint = new JointType("PulleyJoint", 4, 4);
            MouseJoint = new JointType("MouseJoint", 5, 5);
            GearJoint = new JointType("GearJoint", 6, 6);
            WheelJoint = new JointType("WheelJoint", 7, 7);
            WeldJoint = new JointType("WeldJoint", 8, 8);
            FrictionJoint = new JointType("FrictionJoint", 9, 9);
            RopeJoint = new JointType("RopeJoint", 10, 10);
            JointType ajointtype[] = new JointType[11];
            ajointtype[0] = Unknown;
            ajointtype[1] = RevoluteJoint;
            ajointtype[2] = PrismaticJoint;
            ajointtype[3] = DistanceJoint;
            ajointtype[4] = PulleyJoint;
            ajointtype[5] = MouseJoint;
            ajointtype[6] = GearJoint;
            ajointtype[7] = WheelJoint;
            ajointtype[8] = WeldJoint;
            ajointtype[9] = FrictionJoint;
            ajointtype[10] = RopeJoint;
            ENUM$VALUES = ajointtype;
            JointType ajointtype1[] = new JointType[11];
            ajointtype1[0] = Unknown;
            ajointtype1[1] = RevoluteJoint;
            ajointtype1[2] = PrismaticJoint;
            ajointtype1[3] = DistanceJoint;
            ajointtype1[4] = PulleyJoint;
            ajointtype1[5] = MouseJoint;
            ajointtype1[6] = GearJoint;
            ajointtype1[7] = WheelJoint;
            ajointtype1[8] = WeldJoint;
            ajointtype1[9] = FrictionJoint;
            ajointtype1[10] = RopeJoint;
            valueTypes = ajointtype1;
        }

        private JointType(String s, int i, int j)
        {
            super(s, i);
            value = j;
        }
    }


    public Body bodyA;
    public Body bodyB;
    public boolean collideConnected;
    public JointType type;

    public JointDef()
    {
        type = JointType.Unknown;
        bodyA = null;
        bodyB = null;
        collideConnected = false;
    }
}
