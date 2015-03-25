// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.shape.IAreaShape;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.entity.scene.background:
//            ParallaxBackground

public static class mAreaShape
{

    final IAreaShape mAreaShape;
    final float mParallaxFactor;

    public void onDraw(GLState glstate, Camera camera, float f)
    {
        glstate.pushModelViewGLMatrix();
        float f1 = camera.getWidth();
        float f2 = mAreaShape.getWidthScaled();
        float f3 = (f * mParallaxFactor) % f2;
        do
        {
            if (f3 <= 0.0F)
            {
                glstate.translateModelViewGLMatrixf(f3, 0.0F, 0.0F);
                float f4 = f3;
                do
                {
                    mAreaShape.onDraw(glstate, camera);
                    glstate.translateModelViewGLMatrixf(f2, 0.0F, 0.0F);
                    f4 += f2;
                } while (f4 < f1);
                glstate.popModelViewGLMatrix();
                return;
            }
            f3 -= f2;
        } while (true);
    }

    public (float f, IAreaShape iareashape)
    {
        mParallaxFactor = f;
        mAreaShape = iareashape;
    }
}
