// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class Manifold
{
    public class ManifoldPoint
    {

        public int contactID;
        public final Vector2 localPoint = new Vector2();
        public float normalImpulse;
        public float tangentImpulse;
        final Manifold this$0;

        public String toString()
        {
            return (new StringBuilder("id: ")).append(contactID).append(", ").append(localPoint).append(", ").append(normalImpulse).append(", ").append(tangentImpulse).toString();
        }

        public ManifoldPoint()
        {
            this$0 = Manifold.this;
            super();
            contactID = 0;
        }
    }

    public static final class ManifoldType extends Enum
    {

        public static final ManifoldType Circle;
        private static final ManifoldType ENUM$VALUES[];
        public static final ManifoldType FaceA;
        public static final ManifoldType FaceB;

        public static ManifoldType valueOf(String s)
        {
            return (ManifoldType)Enum.valueOf(com/badlogic/gdx/physics/box2d/Manifold$ManifoldType, s);
        }

        public static ManifoldType[] values()
        {
            ManifoldType amanifoldtype[] = ENUM$VALUES;
            int i = amanifoldtype.length;
            ManifoldType amanifoldtype1[] = new ManifoldType[i];
            System.arraycopy(amanifoldtype, 0, amanifoldtype1, 0, i);
            return amanifoldtype1;
        }

        static 
        {
            Circle = new ManifoldType("Circle", 0);
            FaceA = new ManifoldType("FaceA", 1);
            FaceB = new ManifoldType("FaceB", 2);
            ManifoldType amanifoldtype[] = new ManifoldType[3];
            amanifoldtype[0] = Circle;
            amanifoldtype[1] = FaceA;
            amanifoldtype[2] = FaceB;
            ENUM$VALUES = amanifoldtype;
        }

        private ManifoldType(String s, int i)
        {
            super(s, i);
        }
    }


    long addr;
    final Vector2 localNormal = new Vector2();
    final Vector2 localPoint = new Vector2();
    final ManifoldPoint points[];
    final float tmpFloat[] = new float[4];
    final int tmpInt[] = new int[2];

    protected Manifold(long l)
    {
        ManifoldPoint amanifoldpoint[] = new ManifoldPoint[2];
        amanifoldpoint[0] = new ManifoldPoint();
        amanifoldpoint[1] = new ManifoldPoint();
        points = amanifoldpoint;
        addr = l;
    }

    private native void jniGetLocalNormal(long l, float af[]);

    private native void jniGetLocalPoint(long l, float af[]);

    private native int jniGetPoint(long l, float af[], int i);

    private native int jniGetPointCount(long l);

    private native int jniGetType(long l);

    public Vector2 getLocalNormal()
    {
        jniGetLocalNormal(addr, tmpFloat);
        localNormal.set(tmpFloat[0], tmpFloat[1]);
        return localNormal;
    }

    public Vector2 getLocalPoint()
    {
        jniGetLocalPoint(addr, tmpFloat);
        localPoint.set(tmpFloat[0], tmpFloat[1]);
        return localPoint;
    }

    public int getPointCount()
    {
        return jniGetPointCount(addr);
    }

    public ManifoldPoint[] getPoints()
    {
        int i = jniGetPointCount(addr);
        int j = 0;
        do
        {
            if (j >= i)
            {
                return points;
            }
            int k = jniGetPoint(addr, tmpFloat, j);
            ManifoldPoint manifoldpoint = points[j];
            manifoldpoint.contactID = k;
            manifoldpoint.localPoint.set(tmpFloat[0], tmpFloat[1]);
            manifoldpoint.normalImpulse = tmpFloat[2];
            manifoldpoint.tangentImpulse = tmpFloat[3];
            j++;
        } while (true);
    }

    public ManifoldType getType()
    {
        int i = jniGetType(addr);
        if (i == 0)
        {
            return ManifoldType.Circle;
        }
        if (i == 1)
        {
            return ManifoldType.FaceA;
        }
        if (i == 2)
        {
            return ManifoldType.FaceB;
        } else
        {
            return ManifoldType.Circle;
        }
    }
}
