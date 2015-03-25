// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.IEntityFactory;
import org.andengine.entity.particle.emitter.IParticleEmitter;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.entity.particle:
//            ParticleSystem

public class BlendFunctionParticleSystem extends ParticleSystem
{

    protected int mBlendFunctionDestination;
    protected int mBlendFunctionSource;
    protected boolean mBlendingEnabled;

    public BlendFunctionParticleSystem(float f, float f1, IEntityFactory ientityfactory, IParticleEmitter iparticleemitter, float f2, float f3, int i)
    {
        super(f, f1, ientityfactory, iparticleemitter, f2, f3, i);
        mBlendingEnabled = true;
        mBlendFunctionSource = 770;
        mBlendFunctionDestination = 771;
    }

    public BlendFunctionParticleSystem(IEntityFactory ientityfactory, IParticleEmitter iparticleemitter, float f, float f1, int i)
    {
        super(ientityfactory, iparticleemitter, f, f1, i);
        mBlendingEnabled = true;
        mBlendFunctionSource = 770;
        mBlendFunctionDestination = 771;
    }

    public int getBlendFunctionDestination()
    {
        return mBlendFunctionDestination;
    }

    public int getBlendFunctionSource()
    {
        return mBlendFunctionSource;
    }

    public boolean isBlendingEnabled()
    {
        return mBlendingEnabled;
    }

    protected void postDraw(GLState glstate, Camera camera)
    {
        if (mBlendingEnabled)
        {
            glstate.disableBlend();
        }
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        if (mBlendingEnabled)
        {
            glstate.enableBlend();
            glstate.blendFunction(mBlendFunctionSource, mBlendFunctionDestination);
        }
    }

    public void setBlendFunction(int i, int j)
    {
        mBlendFunctionSource = i;
        mBlendFunctionDestination = j;
    }

    public void setBlendFunctionDestination(int i)
    {
        mBlendFunctionDestination = i;
    }

    public void setBlendFunctionSource(int i)
    {
        mBlendFunctionSource = i;
    }

    public void setBlendingEnabled(boolean flag)
    {
        mBlendingEnabled = flag;
    }
}
