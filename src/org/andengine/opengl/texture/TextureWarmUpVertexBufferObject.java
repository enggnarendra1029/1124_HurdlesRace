// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import org.andengine.opengl.shader.PositionTextureCoordinatesShaderProgram;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObject;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributesBuilder;

// Referenced classes of package org.andengine.opengl.texture:
//            ITexture

public class TextureWarmUpVertexBufferObject extends VertexBufferObject
{

    public static final int TEXTURECOORDINATES_INDEX_U = 2;
    public static final int TEXTURECOORDINATES_INDEX_V = 3;
    public static final VertexBufferObjectAttributes VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT = (new VertexBufferObjectAttributesBuilder(2)).add(0, "a_position", 2, 5126, false).add(3, "a_textureCoordinates", 2, 5126, false).build();
    public static final int VERTEXBUFFEROBJECT_SIZE = 12;
    public static final int VERTEX_INDEX_X = 0;
    public static final int VERTEX_INDEX_Y = 1;
    public static final int VERTEX_SIZE = 4;
    public static final int VERTICES_PER_VERTEXBUFFEROBJECT_SIZE = 3;
    protected final FloatBuffer mFloatBuffer;

    public TextureWarmUpVertexBufferObject()
    {
        super(null, 12, DrawType.STATIC, true, VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT);
        mFloatBuffer = mByteBuffer.asFloatBuffer();
        mFloatBuffer.put(0, 0.0F);
        mFloatBuffer.put(1, 0.0F);
        mFloatBuffer.put(2, 0.0F);
        mFloatBuffer.put(3, 0.0F);
        mFloatBuffer.put(4, 1.0F);
        mFloatBuffer.put(5, 0.0F);
        mFloatBuffer.put(6, 1.0F);
        mFloatBuffer.put(7, 0.0F);
        mFloatBuffer.put(8, 0.0F);
        mFloatBuffer.put(9, 1.0F);
        mFloatBuffer.put(10, 0.0F);
        mFloatBuffer.put(11, 1.0F);
    }

    public int getHeapMemoryByteSize()
    {
        return 0;
    }

    public int getNativeHeapMemoryByteSize()
    {
        return getByteCapacity();
    }

    protected void onBufferData()
    {
        GLES20.glBufferData(34962, mByteBuffer.limit(), mByteBuffer, mUsage);
    }

    public void warmup(GLState glstate, ITexture itexture)
    {
        itexture.bind(glstate);
        bind(glstate, PositionTextureCoordinatesShaderProgram.getInstance());
        glstate.pushModelViewGLMatrix();
        glstate.loadModelViewGLMatrixIdentity();
        glstate.translateModelViewGLMatrixf(1000000F, 1000000F, 0.0F);
        glstate.scaleModelViewGLMatrixf(1E-04F, 1E-04F, 0);
        draw(4, 3);
        glstate.popModelViewGLMatrix();
        unbind(glstate, PositionTextureCoordinatesShaderProgram.getInstance());
    }

}
