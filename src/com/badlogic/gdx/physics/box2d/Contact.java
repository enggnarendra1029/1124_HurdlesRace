// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.LongMap;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            WorldManifold, World, Fixture

public class Contact
{

    protected long addr;
    private final float tmp[] = new float[6];
    protected World world;
    protected final WorldManifold worldManifold = new WorldManifold();

    protected Contact(World world1, long l)
    {
        addr = l;
        world = world1;
    }

    private native int jniGetChildIndexA(long l);

    private native int jniGetChildIndexB(long l);

    private native long jniGetFixtureA(long l);

    private native long jniGetFixtureB(long l);

    private native float jniGetFriction(long l);

    private native float jniGetRestitution(long l);

    private native int jniGetWorldManifold(long l, float af[]);

    private native boolean jniIsEnabled(long l);

    private native boolean jniIsTouching(long l);

    private native void jniResetFriction(long l);

    private native void jniResetRestitution(long l);

    private native void jniSetEnabled(long l, boolean flag);

    private native void jniSetFriction(long l, float f);

    private native void jniSetRestitution(long l, float f);

    public void ResetRestitution()
    {
        jniResetRestitution(addr);
    }

    public int getChildIndexA()
    {
        return jniGetChildIndexA(addr);
    }

    public int getChildIndexB()
    {
        return jniGetChildIndexB(addr);
    }

    public Fixture getFixtureA()
    {
        return (Fixture)world.fixtures.get(jniGetFixtureA(addr));
    }

    public Fixture getFixtureB()
    {
        return (Fixture)world.fixtures.get(jniGetFixtureB(addr));
    }

    public float getFriction()
    {
        return jniGetFriction(addr);
    }

    public float getRestitution()
    {
        return jniGetRestitution(addr);
    }

    public WorldManifold getWorldManifold()
    {
        int i = jniGetWorldManifold(addr, tmp);
        worldManifold.numContactPoints = i;
        worldManifold.normal.set(tmp[0], tmp[1]);
        int j = 0;
        do
        {
            if (j >= i)
            {
                return worldManifold;
            }
            Vector2 vector2 = worldManifold.points[j];
            vector2.x = tmp[2 + j * 2];
            vector2.y = tmp[1 + (2 + j * 2)];
            j++;
        } while (true);
    }

    public boolean isEnabled()
    {
        return jniIsEnabled(addr);
    }

    public boolean isTouching()
    {
        return jniIsTouching(addr);
    }

    public void resetFriction()
    {
        jniResetFriction(addr);
    }

    public void setEnabled(boolean flag)
    {
        jniSetEnabled(addr, flag);
    }

    public void setFriction(float f)
    {
        jniSetFriction(addr, f);
    }

    public void setRestitution(float f)
    {
        jniSetRestitution(addr, f);
    }
}
