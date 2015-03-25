// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.shape;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.primitive.Line;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.util.algorithm.collision.RectangularShapeCollisionChecker;

// Referenced classes of package org.andengine.entity.shape:
//            Shape, IAreaShape, IShape

public abstract class RectangularShape extends Shape
    implements IAreaShape
{

    protected float mHeight;
    protected float mWidth;

    public RectangularShape(float f, float f1, float f2, float f3, ShaderProgram shaderprogram)
    {
        super(f, f1, shaderprogram);
        mWidth = f2;
        mHeight = f3;
        resetRotationCenter();
        resetScaleCenter();
        resetSkewCenter();
    }

    public boolean collidesWith(IShape ishape)
    {
        if (ishape instanceof RectangularShape)
        {
            return RectangularShapeCollisionChecker.checkCollision(this, (RectangularShape)ishape);
        }
        if (ishape instanceof Line)
        {
            return RectangularShapeCollisionChecker.checkCollision(this, (Line)ishape);
        } else
        {
            return false;
        }
    }

    public boolean contains(float f, float f1)
    {
        return RectangularShapeCollisionChecker.checkContains(this, f, f1);
    }

    public float getHeight()
    {
        return mHeight;
    }

    public float getHeightScaled()
    {
        return getHeight() * mScaleY;
    }

    public float[] getSceneCenterCoordinates()
    {
        return convertLocalToSceneCoordinates(0.5F * mWidth, 0.5F * mHeight);
    }

    public float[] getSceneCenterCoordinates(float af[])
    {
        return convertLocalToSceneCoordinates(0.5F * mWidth, 0.5F * mHeight, af);
    }

    public float getWidth()
    {
        return mWidth;
    }

    public float getWidthScaled()
    {
        return getWidth() * mScaleX;
    }

    public boolean isCulled(Camera camera)
    {
        return !RectangularShapeCollisionChecker.isVisible(camera, this);
    }

    public void reset()
    {
        super.reset();
        resetRotationCenter();
        resetSkewCenter();
        resetScaleCenter();
    }

    public void resetRotationCenter()
    {
        mRotationCenterX = 0.5F * mWidth;
        mRotationCenterY = 0.5F * mHeight;
    }

    public void resetScaleCenter()
    {
        mScaleCenterX = 0.5F * mWidth;
        mScaleCenterY = 0.5F * mHeight;
    }

    public void resetSkewCenter()
    {
        mSkewCenterX = 0.5F * mWidth;
        mSkewCenterY = 0.5F * mHeight;
    }

    public void setHeight(float f)
    {
        mHeight = f;
        onUpdateVertices();
    }

    public void setSize(float f, float f1)
    {
        mWidth = f;
        mHeight = f1;
        onUpdateVertices();
    }

    public void setWidth(float f)
    {
        mWidth = f;
        onUpdateVertices();
    }
}
