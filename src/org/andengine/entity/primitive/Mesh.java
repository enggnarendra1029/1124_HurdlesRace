// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.primitive.vbo.HighPerformanceMeshVertexBufferObject;
import org.andengine.entity.primitive.vbo.IMeshVertexBufferObject;
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
import org.andengine.util.exception.MethodNotSupportedException;

// Referenced classes of package org.andengine.entity.primitive:
//            DrawMode, Line

public class Mesh extends Shape
{

    public static final int COLOR_INDEX = 2;
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(2)).add(0, "a_position", 2, 5126, false).add(1, "a_color", 4, 5121, true).build();
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 3;
    private int mDrawMode;
    protected final IMeshVertexBufferObject mMeshVertexBufferObject;
    private int mVertexCountToDraw;

    public Mesh(float f, float f1, int i, DrawMode drawmode, IMeshVertexBufferObject imeshvertexbufferobject)
    {
        super(f, f1, PositionColorShaderProgram.getInstance());
        mDrawMode = drawmode.getDrawMode();
        mMeshVertexBufferObject = imeshvertexbufferobject;
        mVertexCountToDraw = i;
        mMeshVertexBufferObject.setDirtyOnHardware();
        setBlendingEnabled(true);
    }

    public Mesh(float f, float f1, float af[], int i, DrawMode drawmode, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, af, i, drawmode, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public Mesh(float f, float f1, float af[], int i, DrawMode drawmode, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, i, drawmode, ((IMeshVertexBufferObject) (new HighPerformanceMeshVertexBufferObject(vertexbufferobjectmanager, af, i, drawtype, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    public boolean collidesWith(IShape ishape)
    {
        while ((ishape instanceof Line) || !(ishape instanceof RectangularShape)) 
        {
            return false;
        }
        return false;
    }

    public boolean contains(float f, float f1)
    {
        throw new MethodNotSupportedException();
    }

    protected void draw(GLState glstate, Camera camera)
    {
        mMeshVertexBufferObject.draw(mDrawMode, mVertexCountToDraw);
    }

    public float[] getBufferData()
    {
        return mMeshVertexBufferObject.getBufferData();
    }

    public IMeshVertexBufferObject getVertexBufferObject()
    {
        return mMeshVertexBufferObject;
    }

    public volatile IVertexBufferObject getVertexBufferObject()
    {
        return getVertexBufferObject();
    }

    protected void onUpdateColor()
    {
        mMeshVertexBufferObject.onUpdateColor(this);
    }

    protected void onUpdateVertices()
    {
        mMeshVertexBufferObject.onUpdateVertices(this);
    }

    protected void postDraw(GLState glstate, Camera camera)
    {
        mMeshVertexBufferObject.unbind(glstate, mShaderProgram);
        super.postDraw(glstate, camera);
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        super.preDraw(glstate, camera);
        mMeshVertexBufferObject.bind(glstate, mShaderProgram);
    }

    public void setDrawMode(DrawMode drawmode)
    {
        mDrawMode = drawmode.mDrawMode;
    }

    public void setVertexCountToDraw(int i)
    {
        mVertexCountToDraw = i;
    }

}
