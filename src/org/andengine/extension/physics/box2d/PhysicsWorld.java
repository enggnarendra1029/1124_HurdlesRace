// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.BodyDef;
import com.badlogic.gdx.physics.box2d.ContactFilter;
import com.badlogic.gdx.physics.box2d.ContactListener;
import com.badlogic.gdx.physics.box2d.DestructionListener;
import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.JointDef;
import com.badlogic.gdx.physics.box2d.QueryCallback;
import com.badlogic.gdx.physics.box2d.RayCastCallback;
import com.badlogic.gdx.physics.box2d.World;
import java.util.Iterator;
import java.util.List;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.engine.handler.runnable.RunnableHandler;

// Referenced classes of package org.andengine.extension.physics.box2d:
//            PhysicsConnectorManager, PhysicsConnector

public class PhysicsWorld
    implements IUpdateHandler
{

    public static final int POSITION_ITERATIONS_DEFAULT = 8;
    public static final int VELOCITY_ITERATIONS_DEFAULT = 8;
    protected final PhysicsConnectorManager mPhysicsConnectorManager;
    protected int mPositionIterations;
    protected final RunnableHandler mRunnableHandler;
    protected int mVelocityIterations;
    protected final World mWorld;

    public PhysicsWorld(Vector2 vector2, boolean flag)
    {
        this(vector2, flag, 8, 8);
    }

    public PhysicsWorld(Vector2 vector2, boolean flag, int i, int j)
    {
        mPhysicsConnectorManager = new PhysicsConnectorManager();
        mRunnableHandler = new RunnableHandler();
        mVelocityIterations = 8;
        mPositionIterations = 8;
        mWorld = new World(vector2, flag);
        mVelocityIterations = i;
        mPositionIterations = j;
    }

    public void QueryAABB(QueryCallback querycallback, float f, float f1, float f2, float f3)
    {
        mWorld.QueryAABB(querycallback, f, f1, f2, f3);
    }

    public void clearForces()
    {
        mWorld.clearForces();
    }

    public void clearPhysicsConnectors()
    {
        mPhysicsConnectorManager.clear();
    }

    public Body createBody(BodyDef bodydef)
    {
        return mWorld.createBody(bodydef);
    }

    public Joint createJoint(JointDef jointdef)
    {
        return mWorld.createJoint(jointdef);
    }

    public void destroyBody(Body body)
    {
        mWorld.destroyBody(body);
    }

    public void destroyJoint(Joint joint)
    {
        mWorld.destroyJoint(joint);
    }

    public void dispose()
    {
        mWorld.dispose();
    }

    public boolean getAutoClearForces()
    {
        return mWorld.getAutoClearForces();
    }

    public Iterator getBodies()
    {
        return mWorld.getBodies();
    }

    public int getBodyCount()
    {
        return mWorld.getBodyCount();
    }

    public int getContactCount()
    {
        return mWorld.getContactCount();
    }

    public List getContactList()
    {
        return mWorld.getContactList();
    }

    public Vector2 getGravity()
    {
        return mWorld.getGravity();
    }

    public int getJointCount()
    {
        return mWorld.getJointCount();
    }

    public Iterator getJoints()
    {
        return mWorld.getJoints();
    }

    public PhysicsConnectorManager getPhysicsConnectorManager()
    {
        return mPhysicsConnectorManager;
    }

    public int getPositionIterations()
    {
        return mPositionIterations;
    }

    public int getProxyCount()
    {
        return mWorld.getProxyCount();
    }

    public int getVelocityIterations()
    {
        return mVelocityIterations;
    }

    public boolean isLocked()
    {
        return mWorld.isLocked();
    }

    public void onUpdate(float f)
    {
        mRunnableHandler.onUpdate(f);
        mWorld.step(f, mVelocityIterations, mPositionIterations);
        mPhysicsConnectorManager.onUpdate(f);
    }

    public void postRunnable(Runnable runnable)
    {
        mRunnableHandler.postRunnable(runnable);
    }

    public void rayCast(RayCastCallback raycastcallback, Vector2 vector2, Vector2 vector2_1)
    {
        mWorld.rayCast(raycastcallback, vector2, vector2_1);
    }

    public void registerPhysicsConnector(PhysicsConnector physicsconnector)
    {
        mPhysicsConnectorManager.add(physicsconnector);
    }

    public void reset()
    {
        mPhysicsConnectorManager.reset();
        mRunnableHandler.reset();
    }

    public void setAutoClearForces(boolean flag)
    {
        mWorld.setAutoClearForces(flag);
    }

    public void setContactFilter(ContactFilter contactfilter)
    {
        mWorld.setContactFilter(contactfilter);
    }

    public void setContactListener(ContactListener contactlistener)
    {
        mWorld.setContactListener(contactlistener);
    }

    public void setContinuousPhysics(boolean flag)
    {
        mWorld.setContinuousPhysics(flag);
    }

    public void setDestructionListener(DestructionListener destructionlistener)
    {
        mWorld.setDestructionListener(destructionlistener);
    }

    public void setGravity(Vector2 vector2)
    {
        mWorld.setGravity(vector2);
    }

    public void setPositionIterations(int i)
    {
        mPositionIterations = i;
    }

    public void setVelocityIterations(int i)
    {
        mVelocityIterations = i;
    }

    public void setWarmStarting(boolean flag)
    {
        mWorld.setWarmStarting(flag);
    }

    public void unregisterPhysicsConnector(PhysicsConnector physicsconnector)
    {
        mPhysicsConnectorManager.remove(physicsconnector);
    }

    static 
    {
        System.loadLibrary("andenginephysicsbox2dextension");
    }
}
