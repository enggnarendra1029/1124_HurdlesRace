// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.modifier;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.particle.Particle;
import org.andengine.entity.shape.RectangularShape;

// Referenced classes of package org.andengine.entity.particle.modifier:
//            IParticleModifier

public class OffCameraExpireParticleModifier
    implements IParticleModifier
{

    private final Camera mCamera;

    public OffCameraExpireParticleModifier(Camera camera)
    {
        mCamera = camera;
    }

    public Camera getCamera()
    {
        return mCamera;
    }

    public void onInitializeParticle(Particle particle)
    {
    }

    public void onUpdateParticle(Particle particle)
    {
        if (!mCamera.isRectangularShapeVisible((RectangularShape)particle.getEntity()))
        {
            particle.setExpired(true);
        }
    }
}
