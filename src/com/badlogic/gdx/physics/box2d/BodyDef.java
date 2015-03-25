// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class BodyDef
{
    public static final class BodyType extends Enum
    {

        public static final BodyType DynamicBody;
        private static final BodyType ENUM$VALUES[];
        public static final BodyType KinematicBody;
        public static final BodyType StaticBody;
        private int value;

        public static BodyType valueOf(String s)
        {
            return (BodyType)Enum.valueOf(com/badlogic/gdx/physics/box2d/BodyDef$BodyType, s);
        }

        public static BodyType[] values()
        {
            BodyType abodytype[] = ENUM$VALUES;
            int i = abodytype.length;
            BodyType abodytype1[] = new BodyType[i];
            System.arraycopy(abodytype, 0, abodytype1, 0, i);
            return abodytype1;
        }

        public int getValue()
        {
            return value;
        }

        static 
        {
            StaticBody = new BodyType("StaticBody", 0, 0);
            KinematicBody = new BodyType("KinematicBody", 1, 1);
            DynamicBody = new BodyType("DynamicBody", 2, 2);
            BodyType abodytype[] = new BodyType[3];
            abodytype[0] = StaticBody;
            abodytype[1] = KinematicBody;
            abodytype[2] = DynamicBody;
            ENUM$VALUES = abodytype;
        }

        private BodyType(String s, int i, int j)
        {
            super(s, i);
            value = j;
        }
    }


    public boolean active;
    public boolean allowSleep;
    public float angle;
    public float angularDamping;
    public float angularVelocity;
    public boolean awake;
    public boolean bullet;
    public boolean fixedRotation;
    public float gravityScale;
    public float linearDamping;
    public final Vector2 linearVelocity = new Vector2();
    public final Vector2 position = new Vector2();
    public BodyType type;

    public BodyDef()
    {
        type = BodyType.StaticBody;
        angle = 0.0F;
        angularVelocity = 0.0F;
        linearDamping = 0.0F;
        angularDamping = 0.0F;
        allowSleep = true;
        awake = true;
        fixedRotation = false;
        bullet = false;
        active = true;
        gravityScale = 1.0F;
    }
}
