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

public class PositionColorShaderProgram extends ShaderProgram
{

    public static final String FRAGMENTSHADER = "precision lowp float;\nvarying vec4 v_color;\nvoid main() {\n\tgl_FragColor = v_color;\n}";
    private static PositionColorShaderProgram INSTANCE;
    public static final String VERTEXSHADER = "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n\tv_color = a_color;\n}";
    public static int sUniformModelViewPositionMatrixLocation = -1;

    private PositionColorShaderProgram()
    {
        super("uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n\tv_color = a_color;\n}", "precision lowp float;\nvarying vec4 v_color;\nvoid main() {\n\tgl_FragColor = v_color;\n}");
    }

    public static PositionColorShaderProgram getInstance()
    {
        if (INSTANCE == null)
        {
            INSTANCE = new PositionColorShaderProgram();
        }
        return INSTANCE;
    }

    public void bind(GLState glstate, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        GLES20.glDisableVertexAttribArray(3);
        super.bind(glstate, vertexbufferobjectattributes);
        GLES20.glUniformMatrix4fv(sUniformModelViewPositionMatrixLocation, 1, false, glstate.getModelViewProjectionGLMatrix(), 0);
    }

    protected void link(GLState glstate)
        throws ShaderProgramLinkException
    {
        GLES20.glBindAttribLocation(mProgramID, 0, "a_position");
        GLES20.glBindAttribLocation(mProgramID, 1, "a_color");
        super.link(glstate);
        sUniformModelViewPositionMatrixLocation = getUniformLocation("u_modelViewProjectionMatrix");
    }

    public void unbind(GLState glstate)
    {
        GLES20.glEnableVertexAttribArray(3);
        super.unbind(glstate);
    }

}
