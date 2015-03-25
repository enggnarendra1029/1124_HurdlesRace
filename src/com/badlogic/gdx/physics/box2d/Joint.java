// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.LongMap;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            World, Body, JointEdge

public abstract class Joint
{

    protected long addr;
    private final Vector2 anchorA = new Vector2();
    private final Vector2 anchorB = new Vector2();
    protected JointEdge jointEdgeA;
    protected JointEdge jointEdgeB;
    private final Vector2 reactionForce = new Vector2();
    private final float tmp[] = new float[2];
    private final World world;

    protected Joint(World world1, long l)
    {
        world = world1;
        addr = l;
    }

    private native void jniGetAnchorA(long l, float af[]);

    private native void jniGetAnchorB(long l, float af[]);

    private native long jniGetBodyA(long l);

    private native long jniGetBodyB(long l);

    private native void jniGetReactionForce(long l, float f, float af[]);

    private native float jniGetReactionTorque(long l, float f);

    private native int jniGetType(long l);

    private native boolean jniIsActive(long l);

    public Vector2 getAnchorA()
    {
        jniGetAnchorA(addr, tmp);
        anchorA.x = tmp[0];
        anchorA.y = tmp[1];
        return anchorA;
    }

    public Vector2 getAnchorB()
    {
        jniGetAnchorB(addr, tmp);
        anchorB.x = tmp[0];
        anchorB.y = tmp[1];
        return anchorB;
    }

    public Body getBodyA()
    {
        return (Body)world.bodies.get(jniGetBodyA(addr));
    }

    public Body getBodyB()
    {
        return (Body)world.bodies.get(jniGetBodyB(addr));
    }

    public Vector2 getReactionForce(float f)
    {
        jniGetReactionForce(addr, f, tmp);
        reactionForce.x = tmp[0];
        reactionForce.y = tmp[1];
        return reactionForce;
    }

    public float getReactionTorque(float f)
    {
        return jniGetReactionTorque(addr, f);
    }

    public JointDef.JointType getType()
    {
        int i = jniGetType(addr);
        if (i > 0 && i < JointDef.JointType.valueTypes.length)
        {
            return JointDef.JointType.valueTypes[i];
        } else
        {
            return JointDef.JointType.Unknown;
        }
    }

    public boolean isActive()
    {
        return jniIsActive(addr);
    }
}
