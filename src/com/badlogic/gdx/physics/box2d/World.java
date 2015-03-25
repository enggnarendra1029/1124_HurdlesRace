// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.joints.DistanceJoint;
import com.badlogic.gdx.physics.box2d.joints.DistanceJointDef;
import com.badlogic.gdx.physics.box2d.joints.FrictionJoint;
import com.badlogic.gdx.physics.box2d.joints.FrictionJointDef;
import com.badlogic.gdx.physics.box2d.joints.GearJoint;
import com.badlogic.gdx.physics.box2d.joints.GearJointDef;
import com.badlogic.gdx.physics.box2d.joints.MouseJoint;
import com.badlogic.gdx.physics.box2d.joints.MouseJointDef;
import com.badlogic.gdx.physics.box2d.joints.PrismaticJoint;
import com.badlogic.gdx.physics.box2d.joints.PrismaticJointDef;
import com.badlogic.gdx.physics.box2d.joints.PulleyJoint;
import com.badlogic.gdx.physics.box2d.joints.PulleyJointDef;
import com.badlogic.gdx.physics.box2d.joints.RevoluteJoint;
import com.badlogic.gdx.physics.box2d.joints.RevoluteJointDef;
import com.badlogic.gdx.physics.box2d.joints.RopeJoint;
import com.badlogic.gdx.physics.box2d.joints.RopeJointDef;
import com.badlogic.gdx.physics.box2d.joints.WeldJoint;
import com.badlogic.gdx.physics.box2d.joints.WeldJointDef;
import com.badlogic.gdx.physics.box2d.joints.WheelJoint;
import com.badlogic.gdx.physics.box2d.joints.WheelJointDef;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.LongMap;
import com.badlogic.gdx.utils.Pool;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            Contact, Manifold, ContactImpulse, ContactListener, 
//            Fixture, ContactFilter, Filter, JointDef, 
//            Body, Joint, QueryCallback, RayCastCallback, 
//            BodyDef, JointEdge, DestructionListener

public final class World
    implements Disposable
{

    private final long addr;
    protected final LongMap bodies = new LongMap(100);
    private final Contact contact = new Contact(this, 0L);
    private long contactAddrs[];
    protected ContactFilter contactFilter;
    protected ContactListener contactListener;
    private final ArrayList contacts = new ArrayList();
    protected final LongMap fixtures = new LongMap(100);
    protected final Pool freeBodies = new Pool(100, 200) {

        final World this$0;

        protected Body newObject()
        {
            return new Body(World.this, 0L);
        }

        protected volatile Object newObject()
        {
            return newObject();
        }

            
            {
                this$0 = World.this;
                super(i, j);
            }
    };
    private final ArrayList freeContacts = new ArrayList();
    protected final Pool freeFixtures = new Pool(100, 200) {

        final World this$0;

        protected Fixture newObject()
        {
            return new Fixture(null, 0L);
        }

        protected volatile Object newObject()
        {
            return newObject();
        }

            
            {
                this$0 = World.this;
                super(i, j);
            }
    };
    final Vector2 gravity = new Vector2();
    private final ContactImpulse impulse = new ContactImpulse(this, 0L);
    protected final LongMap joints = new LongMap(100);
    private final Manifold manifold = new Manifold(0L);
    private QueryCallback queryCallback;
    private RayCastCallback rayCastCallback;
    private Vector2 rayNormal;
    private Vector2 rayPoint;
    final float tmpGravity[] = new float[2];

    public World(Vector2 vector2, boolean flag)
    {
        contactFilter = null;
        contactListener = null;
        queryCallback = null;
        contactAddrs = new long[200];
        rayCastCallback = null;
        rayPoint = new Vector2();
        rayNormal = new Vector2();
        addr = newWorld(vector2.x, vector2.y, flag);
        contacts.ensureCapacity(contactAddrs.length);
        freeContacts.ensureCapacity(contactAddrs.length);
        int i = 0;
        do
        {
            if (i >= contactAddrs.length)
            {
                return;
            }
            freeContacts.add(new Contact(this, 0L));
            i++;
        } while (true);
    }

    private void beginContact(long l)
    {
        contact.addr = l;
        if (contactListener != null)
        {
            contactListener.beginContact(contact);
        }
    }

    private boolean contactFilter(long l, long l1)
    {
        boolean flag = true;
        if (contactFilter != null)
        {
            flag = contactFilter.shouldCollide((Fixture)fixtures.get(l), (Fixture)fixtures.get(l1));
        } else
        {
            Filter filter = ((Fixture)fixtures.get(l)).getFilterData();
            Filter filter1 = ((Fixture)fixtures.get(l1)).getFilterData();
            if (filter.groupIndex == filter1.groupIndex && filter.groupIndex != 0)
            {
                if (filter.groupIndex <= 0)
                {
                    return false;
                }
            } else
            if ((filter.maskBits & filter1.categoryBits) != 0 && (filter.categoryBits & filter1.maskBits) != 0)
            {
                return flag;
            } else
            {
                return false;
            }
        }
        return flag;
    }

    private long createProperJoint(JointDef jointdef)
    {
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.DistanceJoint)
        {
            DistanceJointDef distancejointdef = (DistanceJointDef)jointdef;
            return jniCreateDistanceJoint(addr, distancejointdef.bodyA.addr, distancejointdef.bodyB.addr, distancejointdef.collideConnected, distancejointdef.localAnchorA.x, distancejointdef.localAnchorA.y, distancejointdef.localAnchorB.x, distancejointdef.localAnchorB.y, distancejointdef.length, distancejointdef.frequencyHz, distancejointdef.dampingRatio);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.FrictionJoint)
        {
            FrictionJointDef frictionjointdef = (FrictionJointDef)jointdef;
            return jniCreateFrictionJoint(addr, frictionjointdef.bodyA.addr, frictionjointdef.bodyB.addr, frictionjointdef.collideConnected, frictionjointdef.localAnchorA.x, frictionjointdef.localAnchorA.y, frictionjointdef.localAnchorB.x, frictionjointdef.localAnchorB.y, frictionjointdef.maxForce, frictionjointdef.maxTorque);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.GearJoint)
        {
            GearJointDef gearjointdef = (GearJointDef)jointdef;
            return jniCreateGearJoint(addr, gearjointdef.bodyA.addr, gearjointdef.bodyB.addr, gearjointdef.collideConnected, gearjointdef.joint1.addr, gearjointdef.joint2.addr, gearjointdef.ratio);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.MouseJoint)
        {
            MouseJointDef mousejointdef = (MouseJointDef)jointdef;
            return jniCreateMouseJoint(addr, mousejointdef.bodyA.addr, mousejointdef.bodyB.addr, mousejointdef.collideConnected, mousejointdef.target.x, mousejointdef.target.y, mousejointdef.maxForce, mousejointdef.frequencyHz, mousejointdef.dampingRatio);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.PrismaticJoint)
        {
            PrismaticJointDef prismaticjointdef = (PrismaticJointDef)jointdef;
            return jniCreatePrismaticJoint(addr, prismaticjointdef.bodyA.addr, prismaticjointdef.bodyB.addr, prismaticjointdef.collideConnected, prismaticjointdef.localAnchorA.x, prismaticjointdef.localAnchorA.y, prismaticjointdef.localAnchorB.x, prismaticjointdef.localAnchorB.y, prismaticjointdef.localAxisA.x, prismaticjointdef.localAxisA.y, prismaticjointdef.referenceAngle, prismaticjointdef.enableLimit, prismaticjointdef.lowerTranslation, prismaticjointdef.upperTranslation, prismaticjointdef.enableMotor, prismaticjointdef.maxMotorForce, prismaticjointdef.motorSpeed);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.PulleyJoint)
        {
            PulleyJointDef pulleyjointdef = (PulleyJointDef)jointdef;
            return jniCreatePulleyJoint(addr, pulleyjointdef.bodyA.addr, pulleyjointdef.bodyB.addr, pulleyjointdef.collideConnected, pulleyjointdef.groundAnchorA.x, pulleyjointdef.groundAnchorA.y, pulleyjointdef.groundAnchorB.x, pulleyjointdef.groundAnchorB.y, pulleyjointdef.localAnchorA.x, pulleyjointdef.localAnchorA.y, pulleyjointdef.localAnchorB.x, pulleyjointdef.localAnchorB.y, pulleyjointdef.lengthA, pulleyjointdef.lengthB, pulleyjointdef.ratio);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.RevoluteJoint)
        {
            RevoluteJointDef revolutejointdef = (RevoluteJointDef)jointdef;
            return jniCreateRevoluteJoint(addr, revolutejointdef.bodyA.addr, revolutejointdef.bodyB.addr, revolutejointdef.collideConnected, revolutejointdef.localAnchorA.x, revolutejointdef.localAnchorA.y, revolutejointdef.localAnchorB.x, revolutejointdef.localAnchorB.y, revolutejointdef.referenceAngle, revolutejointdef.enableLimit, revolutejointdef.lowerAngle, revolutejointdef.upperAngle, revolutejointdef.enableMotor, revolutejointdef.motorSpeed, revolutejointdef.maxMotorTorque);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.WeldJoint)
        {
            WeldJointDef weldjointdef = (WeldJointDef)jointdef;
            return jniCreateWeldJoint(addr, weldjointdef.bodyA.addr, weldjointdef.bodyB.addr, weldjointdef.collideConnected, weldjointdef.localAnchorA.x, weldjointdef.localAnchorA.y, weldjointdef.localAnchorB.x, weldjointdef.localAnchorB.y, weldjointdef.referenceAngle);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.RopeJoint)
        {
            RopeJointDef ropejointdef = (RopeJointDef)jointdef;
            return jniCreateRopeJoint(addr, ropejointdef.bodyA.addr, ropejointdef.bodyB.addr, ropejointdef.collideConnected, ropejointdef.localAnchorA.x, ropejointdef.localAnchorA.y, ropejointdef.localAnchorB.x, ropejointdef.localAnchorB.y, ropejointdef.maxLength);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.WheelJoint)
        {
            WheelJointDef wheeljointdef = (WheelJointDef)jointdef;
            return jniCreateWheelJoint(addr, wheeljointdef.bodyA.addr, wheeljointdef.bodyB.addr, wheeljointdef.collideConnected, wheeljointdef.localAnchorA.x, wheeljointdef.localAnchorA.y, wheeljointdef.localAnchorB.x, wheeljointdef.localAnchorB.y, wheeljointdef.localAxisA.x, wheeljointdef.localAxisA.y, wheeljointdef.enableMotor, wheeljointdef.maxMotorTorque, wheeljointdef.motorSpeed, wheeljointdef.frequencyHz, wheeljointdef.dampingRatio);
        } else
        {
            return 0L;
        }
    }

    private void endContact(long l)
    {
        contact.addr = l;
        if (contactListener != null)
        {
            contactListener.endContact(contact);
        }
    }

    public static native float getVelocityThreshold();

    private native void jniClearForces(long l);

    private native long jniCreateBody(long l, int i, float f, float f1, float f2, float f3, 
            float f4, float f5, float f6, float f7, boolean flag, boolean flag1, boolean flag2, 
            boolean flag3, boolean flag4, float f8);

    private native long jniCreateDistanceJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4, float f5, float f6);

    private native long jniCreateFrictionJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4, float f5);

    private native long jniCreateGearJoint(long l, long l1, long l2, boolean flag, 
            long l3, long l4, float f);

    private native long jniCreateMouseJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4);

    private native long jniCreatePrismaticJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            boolean flag1, float f7, float f8, boolean flag2, float f9, float f10);

    private native long jniCreatePulleyJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4, float f5, float f6, 
            float f7, float f8, float f9, float f10);

    private native long jniCreateRevoluteJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4, boolean flag1, float f5, 
            float f6, boolean flag2, float f7, float f8);

    private native long jniCreateRopeJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4);

    private native long jniCreateWeldJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4);

    private native long jniCreateWheelJoint(long l, long l1, long l2, boolean flag, 
            float f, float f1, float f2, float f3, float f4, float f5, boolean flag1, 
            float f6, float f7, float f8, float f9);

    private native void jniDestroyBody(long l, long l1);

    private native void jniDestroyJoint(long l, long l1);

    private native void jniDispose(long l);

    private native boolean jniGetAutoClearForces(long l);

    private native int jniGetBodyCount(long l);

    private native int jniGetContactCount(long l);

    private native void jniGetContactList(long l, long al[]);

    private native void jniGetGravity(long l, float af[]);

    private native int jniGetJointcount(long l);

    private native int jniGetProxyCount(long l);

    private native boolean jniIsLocked(long l);

    private native void jniQueryAABB(long l, float f, float f1, float f2, float f3);

    private native void jniRayCast(long l, float f, float f1, float f2, float f3);

    private native void jniSetAutoClearForces(long l, boolean flag);

    private native void jniSetContiousPhysics(long l, boolean flag);

    private native void jniSetGravity(long l, float f, float f1);

    private native void jniSetWarmStarting(long l, boolean flag);

    private native void jniStep(long l, float f, int i, int j);

    private native long newWorld(float f, float f1, boolean flag);

    private void postSolve(long l, long l1)
    {
        contact.addr = l;
        impulse.addr = l1;
        if (contactListener != null)
        {
            contactListener.postSolve(contact, impulse);
        }
    }

    private void preSolve(long l, long l1)
    {
        contact.addr = l;
        manifold.addr = l1;
        if (contactListener != null)
        {
            contactListener.preSolve(contact, manifold);
        }
    }

    private boolean reportFixture(long l)
    {
        if (queryCallback != null)
        {
            return queryCallback.reportFixture((Fixture)fixtures.get(l));
        } else
        {
            return false;
        }
    }

    private float reportRayFixture(long l, float f, float f1, float f2, float f3, float f4)
    {
        if (rayCastCallback != null)
        {
            rayPoint.x = f;
            rayPoint.y = f1;
            rayNormal.x = f2;
            rayNormal.y = f3;
            return rayCastCallback.reportRayFixture((Fixture)fixtures.get(l), rayPoint, rayNormal, f4);
        } else
        {
            return 0.0F;
        }
    }

    private native void setUseDefaultContactFilter(boolean flag);

    public static native void setVelocityThreshold(float f);

    public void QueryAABB(QueryCallback querycallback, float f, float f1, float f2, float f3)
    {
        queryCallback = querycallback;
        jniQueryAABB(addr, f, f1, f2, f3);
    }

    public void clearForces()
    {
        jniClearForces(addr);
    }

    public Body createBody(BodyDef bodydef)
    {
        long l = jniCreateBody(addr, bodydef.type.getValue(), bodydef.position.x, bodydef.position.y, bodydef.angle, bodydef.linearVelocity.x, bodydef.linearVelocity.y, bodydef.angularVelocity, bodydef.linearDamping, bodydef.angularDamping, bodydef.allowSleep, bodydef.awake, bodydef.fixedRotation, bodydef.bullet, bodydef.active, bodydef.gravityScale);
        Body body = (Body)freeBodies.obtain();
        body.reset(l);
        bodies.put(body.addr, body);
        return body;
    }

    public Joint createJoint(JointDef jointdef)
    {
        long l = createProperJoint(jointdef);
        JointDef.JointType jointtype = jointdef.type;
        JointDef.JointType jointtype1 = com.badlogic.gdx.physics.box2d.JointDef.JointType.DistanceJoint;
        Object obj = null;
        if (jointtype == jointtype1)
        {
            obj = new DistanceJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.FrictionJoint)
        {
            obj = new FrictionJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.GearJoint)
        {
            obj = new GearJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.MouseJoint)
        {
            obj = new MouseJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.PrismaticJoint)
        {
            obj = new PrismaticJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.PulleyJoint)
        {
            obj = new PulleyJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.RevoluteJoint)
        {
            obj = new RevoluteJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.WeldJoint)
        {
            obj = new WeldJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.RopeJoint)
        {
            obj = new RopeJoint(this, l);
        }
        if (jointdef.type == com.badlogic.gdx.physics.box2d.JointDef.JointType.WheelJoint)
        {
            obj = new WheelJoint(this, l);
        }
        if (obj != null)
        {
            joints.put(((Joint) (obj)).addr, obj);
        }
        JointEdge jointedge = new JointEdge(jointdef.bodyB, ((Joint) (obj)));
        JointEdge jointedge1 = new JointEdge(jointdef.bodyA, ((Joint) (obj)));
        obj.jointEdgeA = jointedge;
        obj.jointEdgeB = jointedge1;
        jointdef.bodyA.joints.add(jointedge);
        jointdef.bodyB.joints.add(jointedge1);
        return ((Joint) (obj));
    }

    public void destroyBody(Body body)
    {
        ArrayList arraylist;
        body.setUserData(null);
        bodies.remove(body.addr);
        arraylist = body.getFixtureList();
_L3:
        if (!arraylist.isEmpty()) goto _L2; else goto _L1
_L1:
        ArrayList arraylist1 = body.getJointList();
_L4:
        if (arraylist1.isEmpty())
        {
            jniDestroyBody(addr, body.addr);
            freeBodies.free(body);
            return;
        }
        break MISSING_BLOCK_LABEL_98;
_L2:
        ((Fixture)fixtures.remove(((Fixture)arraylist.remove(0)).addr)).setUserData(null);
          goto _L3
        destroyJoint(((JointEdge)body.getJointList().get(0)).joint);
          goto _L4
    }

    public void destroyJoint(Joint joint)
    {
        joints.remove(joint.addr);
        joint.jointEdgeA.other.joints.remove(joint.jointEdgeB);
        joint.jointEdgeB.other.joints.remove(joint.jointEdgeA);
        jniDestroyJoint(addr, joint.addr);
    }

    public void dispose()
    {
        jniDispose(addr);
    }

    public boolean getAutoClearForces()
    {
        return jniGetAutoClearForces(addr);
    }

    public Iterator getBodies()
    {
        return bodies.values();
    }

    public int getBodyCount()
    {
        return jniGetBodyCount(addr);
    }

    public int getContactCount()
    {
        return jniGetContactCount(addr);
    }

    public List getContactList()
    {
        int i;
        i = getContactCount();
        if (i > contactAddrs.length)
        {
            int i1 = i * 2;
            contactAddrs = new long[i1];
            contacts.ensureCapacity(i1);
            freeContacts.ensureCapacity(i1);
        }
        if (i <= freeContacts.size()) goto _L2; else goto _L1
_L1:
        int k;
        int l;
        k = freeContacts.size();
        l = 0;
_L4:
        if (l < i - k) goto _L3; else goto _L2
_L2:
        int j;
        jniGetContactList(addr, contactAddrs);
        contacts.clear();
        j = 0;
_L5:
        if (j >= i)
        {
            return contacts;
        }
        break MISSING_BLOCK_LABEL_131;
_L3:
        freeContacts.add(new Contact(this, 0L));
        l++;
          goto _L4
        Contact contact1 = (Contact)freeContacts.get(j);
        contact1.addr = contactAddrs[j];
        contacts.add(contact1);
        j++;
          goto _L5
    }

    public Vector2 getGravity()
    {
        jniGetGravity(addr, tmpGravity);
        gravity.x = tmpGravity[0];
        gravity.y = tmpGravity[1];
        return gravity;
    }

    public int getJointCount()
    {
        return jniGetJointcount(addr);
    }

    public Iterator getJoints()
    {
        return joints.values();
    }

    public int getProxyCount()
    {
        return jniGetProxyCount(addr);
    }

    public boolean isLocked()
    {
        return jniIsLocked(addr);
    }

    public void rayCast(RayCastCallback raycastcallback, Vector2 vector2, Vector2 vector2_1)
    {
        rayCastCallback = raycastcallback;
        jniRayCast(addr, vector2.x, vector2.y, vector2_1.x, vector2_1.y);
    }

    public void setAutoClearForces(boolean flag)
    {
        jniSetAutoClearForces(addr, flag);
    }

    public void setContactFilter(ContactFilter contactfilter)
    {
        contactFilter = contactfilter;
        boolean flag;
        if (contactfilter == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setUseDefaultContactFilter(flag);
    }

    public void setContactListener(ContactListener contactlistener)
    {
        contactListener = contactlistener;
    }

    public void setContinuousPhysics(boolean flag)
    {
        jniSetContiousPhysics(addr, flag);
    }

    public void setDestructionListener(DestructionListener destructionlistener)
    {
    }

    public void setGravity(Vector2 vector2)
    {
        jniSetGravity(addr, vector2.x, vector2.y);
    }

    public void setWarmStarting(boolean flag)
    {
        jniSetWarmStarting(addr, flag);
    }

    public void step(float f, int i, int j)
    {
        jniStep(addr, f, i, j);
    }
}
