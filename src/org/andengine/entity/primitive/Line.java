// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.primitive.vbo.HighPerformanceLineVertexBufferObject;
import org.andengine.entity.primitive.vbo.ILineVertexBufferObject;
import org.andengine.entity.shape.IShape;
import org.andengine.entity.shape.RectangularShape;
import org.andengine.entity.shape.Shape;
import org.andengine.opengl.shader.PositionColorShaderProgram;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.IVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributesBuilder;
import org.andengine.util.algorithm.collision.LineCollisionChecker;
import org.andengine.util.algorithm.collision.RectangularShapeCollisionChecker;
import org.andengine.util.exception.MethodNotSupportedException;

public class Line extends Shape
{

    public static final int COLOR_INDEX = 2;
    public static final int LINE_SIZE = 6;
    public static final float LINE_WIDTH_DEFAULT = 1F;
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(2)).add(0, "a_position", 2, 5126, false).add(1, "a_color", 4, 5121, true).build();
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 3;
    public static final int VERTICES_PER_LINE = 2;
    protected final ILineVertexBufferObject mLineVertexBufferObject;
    protected float mLineWidth;
    protected float mX2;
    protected float mY2;

    public Line(float f, float f1, float f2, float f3, float f4, ILineVertexBufferObject ilinevertexbufferobject)
    {
        super(f, f1, PositionColorShaderProgram.getInstance());
        mX2 = f2;
        mY2 = f3;
        mLineWidth = f4;
        mLineVertexBufferObject = ilinevertexbufferobject;
        onUpdateVertices();
        onUpdateColor();
        float f5 = 0.5F * (mX2 - mX);
        float f6 = 0.5F * (mY2 - mY);
        mRotationCenterX = f5;
        mRotationCenterY = f6;
        mScaleCenterX = mRotationCenterX;
        mScaleCenterY = mRotationCenterY;
        setBlendingEnabled(true);
    }

    public Line(float f, float f1, float f2, float f3, float f4, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, f2, f3, f4, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Line(float f, float f1, float f2, float f3, float f4, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, f2, f3, f4, ((ILineVertexBufferObject) (new HighPerformanceLineVertexBufferObject(vertexbufferobjectmanager, 6, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    public Line(float f, float f1, float f2, float f3, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, f2, f3, 1.0F, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Line(float f, float f1, float f2, float f3, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, f2, f3, 1.0F, vertexbufferobjectmanager, drawtype);
    }

    public boolean collidesWith(IShape ishape)
    {
        if (ishape instanceof Line)
        {
            Line line = (Line)ishape;
            return LineCollisionChecker.checkLineCollision(mX, mY, mX2, mY2, line.mX, line.mY, line.mX2, line.mY2);
        }
        if (ishape instanceof RectangularShape)
        {
            return RectangularShapeCollisionChecker.checkCollision((RectangularShape)ishape, this);
        } else
        {
            return false;
        }
    }

    public boolean contains(float f, float f1)
    {
        throw new MethodNotSupportedException();
    }

    protected void draw(GLState glstate, Camera camera)
    {
        mLineVertexBufferObject.draw(1, 2);
    }

    public float getLineWidth()
    {
        return mLineWidth;
    }

    public float[] getSceneCenterCoordinates()
    {
        throw new MethodNotSupportedException();
    }

    public float[] getSceneCenterCoordinates(float af[])
    {
        throw new MethodNotSupportedException();
    }

    public ILineVertexBufferObject getVertexBufferObject()
    {
        return mLineVertexBufferObject;
    }

    public volatile IVertexBufferObject getVertexBufferObject()
    {
        return getVertexBufferObject();
    }

    public float getX()
    {
        return super.getX();
    }

    public float getX1()
    {
        return super.getX();
    }

    public float getX2()
    {
        return mX2;
    }

    public float getY()
    {
        return super.getY();
    }

    public float getY1()
    {
        return super.getY();
    }

    public float getY2()
    {
        return mY2;
    }

    public boolean isCulled(Camera camera)
    {
        return camera.isLineVisible(this);
    }

    protected void onUpdateColor()
    {
        mLineVertexBufferObject.onUpdateColor(this);
    }

    protected void onUpdateVertices()
    {
        mLineVertexBufferObject.onUpdateVertices(this);
    }

    protected void postDraw(GLState glstate, Camera camera)
    {
        mLineVertexBufferObject.unbind(glstate, mShaderProgram);
        super.postDraw(glstate, camera);
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        super.preDraw(glstate, camera);
        glstate.lineWidth(mLineWidth);
        mLineVertexBufferObject.bind(glstate, mShaderProgram);
    }

    public void setLineWidth(float f)
    {
        mLineWidth = f;
    }

    public void setPosition(float f, float f1)
    {
        float f2 = mX - f;
        float f3 = mY - f1;
        super.setPosition(f, f1);
        mX2 = f2 + mX2;
        mY2 = f3 + mY2;
    }

    public void setPosition(float f, float f1, float f2, float f3)
    {
        mX2 = f2;
        mY2 = f3;
        super.setPosition(f, f1);
        onUpdateVertices();
    }

    public void setX(float f)
    {
        float f1 = mX - f;
        super.setX(f);
        mX2 = f1 + mX2;
    }

    public void setY(float f)
    {
        float f1 = mY - f;
        super.setY(f);
        mY2 = f1 + mY2;
    }

}
