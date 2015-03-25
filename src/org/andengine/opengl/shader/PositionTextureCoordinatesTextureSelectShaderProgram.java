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

public class PositionTextureCoordinatesTextureSelectShaderProgram extends ShaderProgram
{

    public static final String FRAGMENTSHADER = "precision lowp float;\nuniform sampler2D u_texture_0;\nuniform sampler2D u_texture_1;\nuniform bool u_textureselect_texture_0;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tif(u_textureselect_texture_0) {\n\t\tgl_FragColor = texture2D(u_texture_0, v_textureCoordinates);\n\t} else {\n\t\tgl_FragColor = texture2D(u_texture_1, v_textureCoordinates);\n\t}\n}";
    private static PositionTextureCoordinatesTextureSelectShaderProgram INSTANCE;
    public static final String VERTEXSHADER = "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec2 a_textureCoordinates;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}";
    public static int sUniformModelViewPositionMatrixLocation = -1;
    public static int sUniformTexture0Location = -1;
    public static int sUniformTexture1Location = -1;
    public static int sUniformTextureSelectTexture0Location = -1;

    private PositionTextureCoordinatesTextureSelectShaderProgram()
    {
        super("uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec2 a_textureCoordinates;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}", "precision lowp float;\nuniform sampler2D u_texture_0;\nuniform sampler2D u_texture_1;\nuniform bool u_textureselect_texture_0;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tif(u_textureselect_texture_0) {\n\t\tgl_FragColor = texture2D(u_texture_0, v_textureCoordinates);\n\t} else {\n\t\tgl_FragColor = texture2D(u_texture_1, v_textureCoordinates);\n\t}\n}");
    }

    public static PositionTextureCoordinatesTextureSelectShaderProgram getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new PositionTextureCoordinatesTextureSelectShaderProgram();
        }
        return INSTANCE;
    }

    public void bind(GLState glstate, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        GLES20.glDisableVertexAttribArray(1);
        super.bind(glstate, vertexbufferobjectattributes);
        GLES20.glUniformMatrix4fv(sUniformModelViewPositionMatrixLocation, 1, false, glstate.getModelViewProjectionGLMatrix(), 0);
        GLES20.glUniform1i(sUniformTexture0Location, 0);
        GLES20.glUniform1i(sUniformTexture1Location, 1);
    }

    protected void link(GLState glstate)
        throws ShaderProgramLinkException
    {
        GLES20.glBindAttribLocation(mProgramID, 0, "a_position");
        GLES20.glBindAttribLocation(mProgramID, 3, "a_textureCoordinates");
        super.link(glstate);
        sUniformModelViewPositionMatrixLocation = getUniformLocation("u_modelViewProjectionMatrix");
        sUniformTexture0Location = getUniformLocation("u_texture_0");
        sUniformTexture1Location = getUniformLocation("u_texture_1");
        sUniformTextureSelectTexture0Location = getUniformLocation("u_textureselect_texture_0");
    }

    public void unbind(GLState glstate)
    {
        GLES20.glEnableVertexAttribArray(1);
        super.unbind(glstate);
    }

}
