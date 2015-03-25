// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.primitive.vbo.HighPerformanceRectangleVertexBufferObject;
import org.andengine.entity.primitive.vbo.IRectangleVertexBufferObject;
import org.andengine.entity.shape.RectangularShape;
import org.andengine.opengl.shader.PositionColorShaderProgram;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.IVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributesBuilder;

public class Rectangle extends RectangularShape
{

    public static final int COLOR_INDEX = 2;
    public static final int RECTANGLE_SIZE = 12;
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(2)).add(0, "a_position", 2, 5126, false).add(1, "a_color", 4, 5121, true).build();
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 3;
    public static final int VERTICES_PER_RECTANGLE = 4;
    protected final IRectangleVertexBufferObject mRectangleVertexBufferObject;

    public Rectangle(float f, float f1, float f2, float f3, IRectangleVertexBufferObject irectanglevertexbufferobject)
    {
        super(f, f1, f2, f3, PositionColorShaderProgram.getInstance());
        mRectangleVertexBufferObject = irectanglevertexbufferobject;
        onUpdateVertices();
        onUpdateColor();
        setBlendingEnabled(true);
    }

    public Rectangle(float f, float f1, float f2, float f3, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, f2, f3, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Rectangle(float f, float f1, float f2, float f3, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, f2, f3, ((IRectangleVertexBufferObject) (new HighPerformanceRectangleVertexBufferObject(vertexbufferobjectmanager, 12, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    protected void draw(GLState glstate, Camera camera)
    {
        mRectangleVertexBufferObject.draw(5, 4);
    }

    public IRectangleVertexBufferObject getVertexBufferObject()
    {
        return mRectangleVertexBufferObject;
    }

    public volatile IVertexBufferObject getVertexBufferObject()
    {
        return getVertexBufferObject();
    }

    protected void onUpdateColor()
    {
        mRectangleVertexBufferObject.onUpdateColor(this);
    }

    protected void onUpdateVertices()
    {
        mRectangleVertexBufferObject.onUpdateVertices(this);
    }

    protected void postDraw(GLState glstate, Camera camera)
    {
        mRectangleVertexBufferObject.unbind(glstate, mShaderProgram);
        super.postDraw(glstate, camera);
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        super.preDraw(glstate, camera);
        mRectangleVertexBufferObject.bind(glstate, mShaderProgram);
    }

}
