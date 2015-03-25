// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.World;
import org.andengine.engine.handler.runnable.RunnableHandler;

// Referenced classes of package org.andengine.extension.physics.box2d:
//            PhysicsWorld, PhysicsConnectorManager

public class FixedStepPhysicsWorld extends PhysicsWorld
{

    public static final int STEPSPERSECOND_DEFAULT = 60;
    private final int mMaximumStepsPerUpdate;
    private float mSecondsElapsedAccumulator;
    private final float mTimeStep;

    public FixedStepPhysicsWorld(int i, int j, Vector2 vector2, boolean flag)
    {
        super(vector2, flag);
        mTimeStep = 1.0F / (float)i;
        mMaximumStepsPerUpdate = j;
    }

    public FixedStepPhysicsWorld(int i, int j, Vector2 vector2, boolean flag, int k, int l)
    {
        super(vector2, flag, k, l);
        mTimeStep = 1.0F / (float)i;
        mMaximumStepsPerUpdate = j;
    }

    public FixedStepPhysicsWorld(int i, Vector2 vector2, boolean flag)
    {
        this(i, 0x7fffffff, vector2, flag);
    }

    public FixedStepPhysicsWorld(int i, Vector2 vector2, boolean flag, int j, int k)
    {
        this(i, 0x7fffffff, vector2, flag, j, k);
    }

    public void onUpdate(float f)
    {
        mRunnableHandler.onUpdate(f);
        mSecondsElapsedAccumulator = f + mSecondsElapsedAccumulator;
        int i = mVelocityIterations;
        int j = mPositionIterations;
        World world = mWorld;
        float f1 = mTimeStep;
        int k = mMaximumStepsPerUpdate;
        do
        {
            if (mSecondsElapsedAccumulator < f1 || k <= 0)
            {
                mPhysicsConnectorManager.onUpdate(f);
                return;
            }
            world.step(f1, i, j);
            mSecondsElapsedAccumulator = mSecondsElapsedAccumulator - f1;
            k--;
        } while (true);
    }
}
