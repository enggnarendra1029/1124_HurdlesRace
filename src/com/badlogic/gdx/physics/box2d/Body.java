// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.LongMap;
import com.badlogic.gdx.utils.Pool;
import java.util.ArrayList;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Transform, MassData, FixtureDef, Shape, 
//            Filter, World, Fixture

public class Body
{

    protected long addr;
    private ArrayList fixtures;
    protected ArrayList joints;
    public final Vector2 linVelLoc = new Vector2();
    public final Vector2 linVelWorld = new Vector2();
    private final Vector2 linearVelocity = new Vector2();
    private final Vector2 localCenter = new Vector2();
    private final Vector2 localPoint = new Vector2();
    public final Vector2 localPoint2 = new Vector2();
    public final Vector2 localVector = new Vector2();
    private final MassData massData = new MassData();
    private final Vector2 position = new Vector2();
    private final float tmp[] = new float[4];
    private final Transform transform = new Transform();
    private Object userData;
    private final World world;
    private final Vector2 worldCenter = new Vector2();
    private final Vector2 worldVector = new Vector2();

    protected Body(World world1, long l)
    {
        fixtures = new ArrayList(2);
        joints = new ArrayList(2);
        world = world1;
        addr = l;
    }

    private native void jniApplyAngularImpulse(long l, float f);

    private native void jniApplyForce(long l, float f, float f1, float f2, float f3);

    private native void jniApplyForceToCenter(long l, float f, float f1);

    private native void jniApplyLinearImpulse(long l, float f, float f1, float f2, float f3);

    private native void jniApplyTorque(long l, float f);

    private native long jniCreateFixture(long l, long l1, float f);

    private native long jniCreateFixture(long l, long l1, float f, float f1, float f2, 
            boolean flag, short word0, short word1, short word2);

    private native void jniDestroyFixture(long l, long l1);

    private native float jniGetAngle(long l);

    private native float jniGetAngularDamping(long l);

    private native float jniGetAngularVelocity(long l);

    private native float jniGetGravityScale(long l);

    private native float jniGetInertia(long l);

    private native float jniGetLinearDamping(long l);

    private native void jniGetLinearVelocity(long l, float af[]);

    private native void jniGetLinearVelocityFromLocalPoint(long l, float f, float f1, float af[]);

    private native void jniGetLinearVelocityFromWorldPoint(long l, float f, float f1, float af[]);

    private native void jniGetLocalCenter(long l, float af[]);

    private native void jniGetLocalPoint(long l, float f, float f1, float af[]);

    private native void jniGetLocalVector(long l, float f, float f1, float af[]);

    private native float jniGetMass(long l);

    private native void jniGetMassData(long l, float af[]);

    private native void jniGetPosition(long l, float af[]);

    private native void jniGetTransform(long l, float af[]);

    private native int jniGetType(long l);

    private native void jniGetWorldCenter(long l, float af[]);

    private native void jniGetWorldPoint(long l, float f, float f1, float af[]);

    private native void jniGetWorldVector(long l, float f, float f1, float af[]);

    private native boolean jniIsActive(long l);

    private native boolean jniIsAwake(long l);

    private native boolean jniIsBullet(long l);

    private native boolean jniIsFixedRotation(long l);

    private native boolean jniIsSleepingAllowed(long l);

    private native void jniResetMassData(long l);

    private native void jniSetActive(long l, boolean flag);

    private native void jniSetAngularDamping(long l, float f);

    private native void jniSetAngularVelocity(long l, float f);

    private native void jniSetAwake(long l, boolean flag);

    private native void jniSetBullet(long l, boolean flag);

    private native void jniSetFixedRotation(long l, boolean flag);

    private native void jniSetGravityScale(long l, float f);

    private native void jniSetLinearDamping(long l, float f);

    private native void jniSetLinearVelocity(long l, float f, float f1);

    private native void jniSetMassData(long l, float f, float f1, float f2, float f3);

    private native void jniSetSleepingAllowed(long l, boolean flag);

    private native void jniSetTransform(long l, float f, float f1, float f2);

    private native void jniSetTransform(long l, float f, float f1, float f2, boolean flag);

    private native void jniSetType(long l, int i);

    public void applyAngularImpulse(float f)
    {
        jniApplyAngularImpulse(addr, f);
    }

    public void applyForce(float f, float f1, float f2, float f3)
    {
        jniApplyForce(addr, f, f1, f2, f3);
    }

    public void applyForce(Vector2 vector2, Vector2 vector2_1)
    {
        jniApplyForce(addr, vector2.x, vector2.y, vector2_1.x, vector2_1.y);
    }

    public void applyForceToCenter(float f, float f1)
    {
        jniApplyForceToCenter(addr, f, f1);
    }

    public void applyForceToCenter(Vector2 vector2)
    {
        jniApplyForceToCenter(addr, vector2.x, vector2.y);
    }

    public void applyLinearImpulse(float f, float f1, float f2, float f3)
    {
        jniApplyLinearImpulse(addr, f, f1, f2, f3);
    }

    public void applyLinearImpulse(Vector2 vector2, Vector2 vector2_1)
    {
        jniApplyLinearImpulse(addr, vector2.x, vector2.y, vector2_1.x, vector2_1.y);
    }

    public void applyTorque(float f)
    {
        jniApplyTorque(addr, f);
    }

    public Fixture createFixture(FixtureDef fixturedef)
    {
        long l = jniCreateFixture(addr, fixturedef.shape.addr, fixturedef.friction, fixturedef.restitution, fixturedef.density, fixturedef.isSensor, fixturedef.filter.categoryBits, fixturedef.filter.maskBits, fixturedef.filter.groupIndex);
        Fixture fixture = (Fixture)world.freeFixtures.obtain();
        fixture.reset(this, l);
        world.fixtures.put(fixture.addr, fixture);
        fixtures.add(fixture);
        return fixture;
    }

    public Fixture createFixture(Shape shape, float f)
    {
        long l = jniCreateFixture(addr, shape.addr, f);
        Fixture fixture = (Fixture)world.freeFixtures.obtain();
        fixture.reset(this, l);
        world.fixtures.put(fixture.addr, fixture);
        fixtures.add(fixture);
        return fixture;
    }

    public void destroyFixture(Fixture fixture)
    {
        jniDestroyFixture(addr, fixture.addr);
        world.fixtures.remove(fixture.addr);
        fixtures.remove(fixture);
        world.freeFixtures.free(fixture);
    }

    public float getAngle()
    {
        return jniGetAngle(addr);
    }

    public float getAngularDamping()
    {
        return jniGetAngularDamping(addr);
    }

    public float getAngularVelocity()
    {
        return jniGetAngularVelocity(addr);
    }

    public ArrayList getFixtureList()
    {
        return fixtures;
    }

    public float getGravityScale()
    {
        return jniGetGravityScale(addr);
    }

    public float getInertia()
    {
        return jniGetInertia(addr);
    }

    public ArrayList getJointList()
    {
        return joints;
    }

    public float getLinearDamping()
    {
        return jniGetLinearDamping(addr);
    }

    public Vector2 getLinearVelocity()
    {
        jniGetLinearVelocity(addr, tmp);
        linearVelocity.x = tmp[0];
        linearVelocity.y = tmp[1];
        return linearVelocity;
    }

    public Vector2 getLinearVelocityFromLocalPoint(Vector2 vector2)
    {
        jniGetLinearVelocityFromLocalPoint(addr, vector2.x, vector2.y, tmp);
        linVelLoc.x = tmp[0];
        linVelLoc.y = tmp[1];
        return linVelLoc;
    }

    public Vector2 getLinearVelocityFromWorldPoint(Vector2 vector2)
    {
        jniGetLinearVelocityFromWorldPoint(addr, vector2.x, vector2.y, tmp);
        linVelWorld.x = tmp[0];
        linVelWorld.y = tmp[1];
        return linVelWorld;
    }

    public Vector2 getLocalCenter()
    {
        jniGetLocalCenter(addr, tmp);
        localCenter.x = tmp[0];
        localCenter.y = tmp[1];
        return localCenter;
    }

    public Vector2 getLocalPoint(Vector2 vector2)
    {
        jniGetLocalPoint(addr, vector2.x, vector2.y, tmp);
        localPoint2.x = tmp[0];
        localPoint2.y = tmp[1];
        return localPoint2;
    }

    public Vector2 getLocalVector(Vector2 vector2)
    {
        jniGetLocalVector(addr, vector2.x, vector2.y, tmp);
        localVector.x = tmp[0];
        localVector.y = tmp[1];
        return localVector;
    }

    public float getMass()
    {
        return jniGetMass(addr);
    }

    public MassData getMassData()
    {
        jniGetMassData(addr, tmp);
        massData.mass = tmp[0];
        massData.center.x = tmp[1];
        massData.center.y = tmp[2];
        massData.I = tmp[3];
        return massData;
    }

    public Vector2 getPosition()
    {
        jniGetPosition(addr, tmp);
        position.x = tmp[0];
        position.y = tmp[1];
        return position;
    }

    public Transform getTransform()
    {
        jniGetTransform(addr, transform.vals);
        return transform;
    }

    public BodyDef.BodyType getType()
    {
        int i = jniGetType(addr);
        if (i == 0)
        {
            return BodyDef.BodyType.StaticBody;
        }
        if (i == 1)
        {
            return BodyDef.BodyType.KinematicBody;
        }
        if (i == 2)
        {
            return BodyDef.BodyType.DynamicBody;
        } else
        {
            return BodyDef.BodyType.StaticBody;
        }
    }

    public Object getUserData()
    {
        return userData;
    }

    public World getWorld()
    {
        return world;
    }

    public Vector2 getWorldCenter()
    {
        jniGetWorldCenter(addr, tmp);
        worldCenter.x = tmp[0];
        worldCenter.y = tmp[1];
        return worldCenter;
    }

    public Vector2 getWorldPoint(Vector2 vector2)
    {
        jniGetWorldPoint(addr, vector2.x, vector2.y, tmp);
        localPoint.x = tmp[0];
        localPoint.y = tmp[1];
        return localPoint;
    }

    public Vector2 getWorldVector(Vector2 vector2)
    {
        jniGetWorldVector(addr, vector2.x, vector2.y, tmp);
        worldVector.x = tmp[0];
        worldVector.y = tmp[1];
        return worldVector;
    }

    public boolean isActive()
    {
        return jniIsActive(addr);
    }

    public boolean isAwake()
    {
        return jniIsAwake(addr);
    }

    public boolean isBullet()
    {
        return jniIsBullet(addr);
    }

    public boolean isFixedRotation()
    {
        return jniIsFixedRotation(addr);
    }

    public boolean isSleepingAllowed()
    {
        return jniIsSleepingAllowed(addr);
    }

    protected void reset(long l)
    {
        addr = l;
        userData = null;
        int i = 0;
        do
        {
            if (i >= fixtures.size())
            {
                fixtures.clear();
                joints.clear();
                return;
            }
            world.freeFixtures.free((Fixture)fixtures.get(i));
            i++;
        } while (true);
    }

    public void resetMassData()
    {
        jniResetMassData(addr);
    }

    public void setActive(boolean flag)
    {
        jniSetActive(addr, flag);
    }

    public void setAngularDamping(float f)
    {
        jniSetAngularDamping(addr, f);
    }

    public void setAngularVelocity(float f)
    {
        jniSetAngularVelocity(addr, f);
    }

    public void setAwake(boolean flag)
    {
        jniSetAwake(addr, flag);
    }

    public void setBullet(boolean flag)
    {
        jniSetBullet(addr, flag);
    }

    public void setFixedRotation(boolean flag)
    {
        jniSetFixedRotation(addr, flag);
    }

    public void setGravityScale(float f)
    {
        jniSetGravityScale(addr, f);
    }

    public void setLinearDamping(float f)
    {
        jniSetLinearDamping(addr, f);
    }

    public void setLinearVelocity(float f, float f1)
    {
        jniSetLinearVelocity(addr, f, f1);
    }

    public void setLinearVelocity(Vector2 vector2)
    {
        jniSetLinearVelocity(addr, vector2.x, vector2.y);
    }

    public void setMassData(MassData massdata)
    {
        jniSetMassData(addr, massdata.mass, massdata.center.x, massdata.center.y, massdata.I);
    }

    public void setSleepingAllowed(boolean flag)
    {
        jniSetSleepingAllowed(addr, flag);
    }

    public void setTransform(float f, float f1, float f2)
    {
        jniSetTransform(addr, f, f1, f2);
    }

    public void setTransform(float f, float f1, float f2, boolean flag)
    {
        jniSetTransform(addr, f, f1, f2, flag);
    }

    public void setTransform(Vector2 vector2, float f)
    {
        jniSetTransform(addr, vector2.x, vector2.y, f);
    }

    public void setType(BodyDef.BodyType bodytype)
    {
        jniSetType(addr, bodytype.getValue());
    }

    public void setUserData(Object obj)
    {
        userData = obj;
    }
}
