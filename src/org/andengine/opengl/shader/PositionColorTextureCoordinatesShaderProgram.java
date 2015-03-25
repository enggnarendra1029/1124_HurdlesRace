// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader;

import android.opengl.GLES20;
import org.andengine.opengl.shader.exception.ShaderProgramLinkException;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

// Referenced classes of package org.andengine.opengl.shader:
//            ShaderProgram

public class PositionColorTextureCoordinatesShaderProgram extends ShaderProgram
{

    public static final String FRAGMENTSHADER = "precision lowp float;\nuniform sampler2D u_texture_0;\nvarying lowp vec4 v_color;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tgl_FragColor = v_color * texture2D(u_texture_0, v_textureCoordinates);\n}";
    private static PositionColorTextureCoordinatesShaderProgram INSTANCE;
    public static final String VERTEXSHADER = "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_textureCoordinates;\nvarying vec4 v_color;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_color = a_color;\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}";
    public static int sUniformModelViewPositionMatrixLocation = -1;
    public static int sUniformTexture0Location = -1;

    private PositionColorTextureCoordinatesShaderProgram()
    {
        super("uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_textureCoordinates;\nvarying vec4 v_color;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_color = a_color;\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}", "precision lowp float;\nuniform sampler2D u_texture_0;\nvarying lowp vec4 v_color;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tgl_FragColor = v_color * texture2D(u_texture_0, v_textureCoordinates);\n}");
    }

    public static PositionColorTextureCoordinatesShaderProgram getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new PositionColorTextureCoordinatesShaderProgram();
        }
        return INSTANCE;
    }

    public void bind(GLState glstate, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super.bind(glstate, vertexbufferobjectattributes);
        GLES20.glUniformMatrix4fv(sUniformModelViewPositionMatrixLocation, 1, false, glstate.getModelViewProjectionGLMatrix(), 0);
        GLES20.glUniform1i(sUniformTexture0Location, 0);
    }

    protected void link(GLState glstate)
        throws ShaderProgramLinkException
    {
        GLES20.glBindAttribLocation(mProgramID, 0, "a_position");
        GLES20.glBindAttribLocation(mProgramID, 1, "a_color");
        GLES20.glBindAttribLocation(mProgramID, 3, "a_textureCoordinates");
        super.link(glstate);
        sUniformModelViewPositionMatrixLocation = getUniformLocation("u_modelViewProjectionMatrix");
        sUniformTexture0Location = getUniformLocation("u_texture_0");
    }

}
