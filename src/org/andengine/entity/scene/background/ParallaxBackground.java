// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background;

import java.util.ArrayList;
import org.andengine.engine.camera.Camera;
import org.andengine.entity.shape.IAreaShape;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.entity.scene.background:
//            Background

public class ParallaxBackground extends Background
{
    public static class ParallaxEntity
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

        public ParallaxEntity(float f, IAreaShape iareashape)
        {
            mParallaxFactor = f;
            mAreaShape = iareashape;
        }
    }


    private final ArrayList mParallaxEntities = new ArrayList();
    private int mParallaxEntityCount;
    protected float mParallaxValue;

    public ParallaxBackground(float f, float f1, float f2)
    {
        super(f, f1, f2);
    }

    public void attachParallaxEntity(ParallaxEntity parallaxentity)
    {
        mParallaxEntities.add(parallaxentity);
        mParallaxEntityCount = 1 + mParallaxEntityCount;
    }

    public boolean detachParallaxEntity(ParallaxEntity parallaxentity)
    {
        mParallaxEntityCount = -1 + mParallaxEntityCount;
        boolean flag = mParallaxEntities.remove(parallaxentity);
        if (!flag)
        {
            mParallaxEntityCount = 1 + mParallaxEntityCount;
        }
        return flag;
    }

    public void onDraw(GLState glstate, Camera camera)
    {
        super.onDraw(glstate, camera);
        float f = mParallaxValue;
        ArrayList arraylist = mParallaxEntities;
        int i = 0;
        do
        {
            if (i >= mParallaxEntityCount)
            {
                return;
            }
            ((ParallaxEntity)arraylist.get(i)).onDraw(glstate, camera, f);
            i++;
        } while (true);
    }

    public void setParallaxValue(float f)
    {
        mParallaxValue = f;
    }
}
