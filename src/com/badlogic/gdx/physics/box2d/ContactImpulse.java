// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            World

public class ContactImpulse
{

    long addr;
    final float normalImpulses[] = new float[2];
    final float tangentImpulses[] = new float[2];
    float tmp[];
    final World world;

    protected ContactImpulse(World world1, long l)
    {
        tmp = new float[2];
        world = world1;
        addr = l;
    }

    private native int jniGetCount(long l);

    private native void jniGetNormalImpulses(long l, float af[]);

    private native void jniGetTangentImpulses(long l, float af[]);

    public int getCount()
    {
        return jniGetCount(addr);
    }

    public float[] getNormalImpulses()
    {
        jniGetNormalImpulses(addr, normalImpulses);
        return normalImpulses;
    }

    public float[] getTangentImpulses()
    {
        jniGetTangentImpulses(addr, tangentImpulses);
        return tangentImpulses;
    }
}
