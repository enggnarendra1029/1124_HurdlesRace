// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle;

import android.util.FloatMath;
import java.util.ArrayList;
import org.andengine.engine.camera.Camera;
import org.andengine.entity.Entity;
import org.andengine.entity.IEntity;
import org.andengine.entity.IEntityFactory;
import org.andengine.entity.particle.emitter.IParticleEmitter;
import org.andengine.entity.particle.initializer.IParticleInitializer;
import org.andengine.entity.particle.modifier.IParticleModifier;
import org.andengine.opengl.util.GLState;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.entity.particle:
//            Particle

public class ParticleSystem extends Entity
{

    private static final float POSITION_OFFSET_CONTAINER[] = new float[2];
    protected final IEntityFactory mEntityFactory;
    protected final IParticleEmitter mParticleEmitter;
    protected final ArrayList mParticleInitializers;
    protected final ArrayList mParticleModifiers;
    protected final Particle mParticles[];
    protected int mParticlesAlive;
    private float mParticlesDueToSpawn;
    protected final int mParticlesMaximum;
    private boolean mParticlesSpawnEnabled;
    private final float mRateMaximum;
    private final float mRateMinimum;

    public ParticleSystem(float f, float f1, IEntityFactory ientityfactory, IParticleEmitter iparticleemitter, float f2, float f3, int i)
    {
        super(f, f1);
        mParticleInitializers = new ArrayList();
        mParticleModifiers = new ArrayList();
        mParticlesSpawnEnabled = true;
        mEntityFactory = ientityfactory;
        mParticleEmitter = iparticleemitter;
        mParticles = new Particle[i];
        mRateMinimum = f2;
        mRateMaximum = f3;
        mParticlesMaximum = i;
        registerUpdateHandler(mParticleEmitter);
    }

    public ParticleSystem(IEntityFactory ientityfactory, IParticleEmitter iparticleemitter, float f, float f1, int i)
    {
        this(0.0F, 0.0F, ientityfactory, iparticleemitter, f, f1, i);
    }

    private void spawnParticle()
    {
        if (mParticlesAlive >= mParticlesMaximum) goto _L2; else goto _L1
_L1:
        Particle particle;
        int i;
        int j;
        particle = mParticles[mParticlesAlive];
        mParticleEmitter.getPositionOffset(POSITION_OFFSET_CONTAINER);
        float f = POSITION_OFFSET_CONTAINER[0];
        float f1 = POSITION_OFFSET_CONTAINER[1];
        if (particle == null)
        {
            particle = new Particle();
            mParticles[mParticlesAlive] = particle;
            particle.setEntity(mEntityFactory.create(f, f1));
        } else
        {
            particle.reset();
            particle.getEntity().setPosition(f, f1);
        }
        i = -1 + mParticleInitializers.size();
_L5:
        if (i >= 0) goto _L4; else goto _L3
_L3:
        j = -1 + mParticleModifiers.size();
_L6:
        if (j >= 0)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        mParticlesAlive = 1 + mParticlesAlive;
_L2:
        return;
_L4:
        ((IParticleInitializer)mParticleInitializers.get(i)).onInitializeParticle(particle);
        i--;
          goto _L5
        ((IParticleModifier)mParticleModifiers.get(j)).onInitializeParticle(particle);
        j--;
          goto _L6
    }

    private void spawnParticles(float f)
    {
        mParticlesDueToSpawn = f * determineCurrentRate() + mParticlesDueToSpawn;
        int i = Math.min(mParticlesMaximum - mParticlesAlive, (int)FloatMath.floor(mParticlesDueToSpawn));
        mParticlesDueToSpawn = mParticlesDueToSpawn - (float)i;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            spawnParticle();
            j++;
        } while (true);
    }

    public void addParticleInitializer(IParticleInitializer iparticleinitializer)
    {
        mParticleInitializers.add(iparticleinitializer);
    }

    public void addParticleModifier(IParticleModifier iparticlemodifier)
    {
        mParticleModifiers.add(iparticlemodifier);
    }

    protected float determineCurrentRate()
    {
        if (mRateMinimum == mRateMaximum)
        {
            return mRateMinimum;
        } else
        {
            return MathUtils.random(mRateMinimum, mRateMaximum);
        }
    }

    public IParticleEmitter getParticleEmitter()
    {
        return mParticleEmitter;
    }

    public IEntityFactory getParticleFactory()
    {
        return mEntityFactory;
    }

    public boolean isParticlesSpawnEnabled()
    {
        return mParticlesSpawnEnabled;
    }

    protected void moveParticleToEnd(int i)
    {
        Particle particle = mParticles[i];
        int j = mParticlesAlive - i;
        if (j > 0)
        {
            System.arraycopy(mParticles, i + 1, mParticles, i, j);
        }
        mParticles[mParticlesAlive] = particle;
    }

    protected void onManagedDraw(GLState glstate, Camera camera)
    {
        int i = -1 + mParticlesAlive;
        do
        {
            if (i < 0)
            {
                return;
            }
            mParticles[i].onDraw(glstate, camera);
            i--;
        } while (true);
    }

    protected void onManagedUpdate(float f)
    {
        int i;
        int j;
        super.onManagedUpdate(f);
        if (isParticlesSpawnEnabled())
        {
            spawnParticles(f);
        }
        i = -1 + mParticleModifiers.size();
        j = -1 + mParticlesAlive;
_L2:
        if (j < 0)
        {
            return;
        }
        Particle particle = mParticles[j];
        int k = i;
        do
        {
label0:
            {
                if (k >= 0)
                {
                    break label0;
                }
                particle.onUpdate(f);
                if (particle.mExpired)
                {
                    mParticlesAlive = -1 + mParticlesAlive;
                    moveParticleToEnd(j);
                }
                j--;
            }
            if (true)
            {
                continue;
            }
            ((IParticleModifier)mParticleModifiers.get(k)).onUpdateParticle(particle);
            k--;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void removeParticleInitializer(IParticleInitializer iparticleinitializer)
    {
        mParticleInitializers.remove(iparticleinitializer);
    }

    public void removeParticleModifier(IParticleModifier iparticlemodifier)
    {
        mParticleModifiers.remove(iparticlemodifier);
    }

    public void reset()
    {
        super.reset();
        mParticlesDueToSpawn = 0.0F;
        mParticlesAlive = 0;
    }

    public void setParticlesSpawnEnabled(boolean flag)
    {
        mParticlesSpawnEnabled = flag;
    }

}
