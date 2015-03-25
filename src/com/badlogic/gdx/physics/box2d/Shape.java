// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


public abstract class Shape
{
    public static final class Type extends Enum
    {

        public static final Type Chain;
        public static final Type Circle;
        private static final Type ENUM$VALUES[];
        public static final Type Edge;
        public static final Type Polygon;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/badlogic/gdx/physics/box2d/Shape$Type, s);
        }

        public static Type[] values()
        {
            Type atype[] = ENUM$VALUES;
            int i = atype.length;
            Type atype1[] = new Type[i];
            System.arraycopy(atype, 0, atype1, 0, i);
            return atype1;
        }

        static 
        {
            Circle = new Type("Circle", 0);
            Polygon = new Type("Polygon", 1);
            Edge = new Type("Edge", 2);
            Chain = new Type("Chain", 3);
            Type atype[] = new Type[4];
            atype[0] = Circle;
            atype[1] = Polygon;
            atype[2] = Edge;
            atype[3] = Chain;
            ENUM$VALUES = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    protected long addr;

    public Shape()
    {
    }

    private native void jniDispose(long l);

    private native int jniGetChildCount(long l);

    private native float jniGetRadius(long l);

    protected static native int jniGetType(long l);

    private native void jniSetRadius(long l, float f);

    public void dispose()
    {
        jniDispose(addr);
    }

    public int getChildCount()
    {
        return jniGetChildCount(addr);
    }

    public float getRadius()
    {
        return jniGetRadius(addr);
    }

    public abstract Type getType();

    public void setRadius(float f)
    {
        jniSetRadius(addr, f);
    }
}
