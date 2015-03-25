// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.GdxRuntimeException;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Filter, Shape, CircleShape, EdgeShape, 
//            PolygonShape, ChainShape, Body

public class Fixture
{

    protected long addr;
    private Body body;
    private final Filter filter = new Filter();
    protected Shape shape;
    private final short tmp[] = new short[3];
    protected Object userData;

    protected Fixture(Body body1, long l)
    {
        body = body1;
        addr = l;
    }

    private native float jniGetDensity(long l);

    private native void jniGetFilterData(long l, short aword0[]);

    private native float jniGetFriction(long l);

    private native float jniGetRestitution(long l);

    private native long jniGetShape(long l);

    private native int jniGetType(long l);

    private native boolean jniIsSensor(long l);

    private native void jniRefilter(long l);

    private native void jniSetDensity(long l, float f);

    private native void jniSetFilterData(long l, short word0, short word1, short word2);

    private native void jniSetFriction(long l, float f);

    private native void jniSetRestitution(long l, float f);

    private native void jniSetSensor(long l, boolean flag);

    private native boolean jniTestPoint(long l, float f, float f1);

    public Body getBody()
    {
        return body;
    }

    public float getDensity()
    {
        return jniGetDensity(addr);
    }

    public Filter getFilterData()
    {
        jniGetFilterData(addr, tmp);
        filter.maskBits = tmp[0];
        filter.categoryBits = tmp[1];
        filter.groupIndex = tmp[2];
        return filter;
    }

    public float getFriction()
    {
        return jniGetFriction(addr);
    }

    public float getRestitution()
    {
        return jniGetRestitution(addr);
    }

    public Shape getShape()
    {
        if (shape != null) goto _L2; else goto _L1
_L1:
        long l;
        l = jniGetShape(addr);
        if (l == 0L)
        {
            throw new GdxRuntimeException("Null shape address!");
        }
        Shape.jniGetType(l);
        JVM INSTR tableswitch 0 3: default 68
    //                   0 78
    //                   1 95
    //                   2 110
    //                   3 125;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        throw new GdxRuntimeException("Unknown shape type!");
_L4:
        shape = new CircleShape(l);
_L2:
        return shape;
_L5:
        shape = new EdgeShape(l);
        continue; /* Loop/switch isn't completed */
_L6:
        shape = new PolygonShape(l);
        continue; /* Loop/switch isn't completed */
_L7:
        shape = new ChainShape(l);
        if (true) goto _L2; else goto _L8
_L8:
    }

    public Shape.Type getType()
    {
        switch (jniGetType(addr))
        {
        default:
            throw new GdxRuntimeException("Unknown shape type!");

        case 0: // '\0'
            return Shape.Type.Circle;

        case 1: // '\001'
            return Shape.Type.Edge;

        case 2: // '\002'
            return Shape.Type.Polygon;

        case 3: // '\003'
            return Shape.Type.Chain;
        }
    }

    public Object getUserData()
    {
        return userData;
    }

    public boolean isSensor()
    {
        return jniIsSensor(addr);
    }

    public void refilter()
    {
        jniRefilter(addr);
    }

    protected void reset(Body body1, long l)
    {
        body = body1;
        addr = l;
        shape = null;
        userData = null;
    }

    public void setDensity(float f)
    {
        jniSetDensity(addr, f);
    }

    public void setFilterData(Filter filter1)
    {
        jniSetFilterData(addr, filter1.categoryBits, filter1.maskBits, filter1.groupIndex);
    }

    public void setFriction(float f)
    {
        jniSetFriction(addr, f);
    }

    public void setRestitution(float f)
    {
        jniSetRestitution(addr, f);
    }

    public void setSensor(boolean flag)
    {
        jniSetSensor(addr, flag);
    }

    public void setUserData(Object obj)
    {
        userData = obj;
    }

    public boolean testPoint(float f, float f1)
    {
        return jniTestPoint(addr, f, f1);
    }

    public boolean testPoint(Vector2 vector2)
    {
        return jniTestPoint(addr, vector2.x, vector2.y);
    }
}
