// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader;

import android.opengl.GLES20;
import java.util.HashMap;
import org.andengine.opengl.shader.exception.ShaderProgramCompileException;
import org.andengine.opengl.shader.exception.ShaderProgramException;
import org.andengine.opengl.shader.exception.ShaderProgramLinkException;
import org.andengine.opengl.shader.source.IShaderSource;
import org.andengine.opengl.shader.source.StringShaderSource;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

public class ShaderProgram
{

    private static final int HARDWAREID_CONTAINER[] = new int[1];
    private static final int LENGTH_CONTAINER[] = new int[1];
    private static final byte NAME_CONTAINER[] = new byte[64];
    private static final int NAME_CONTAINER_SIZE = 64;
    private static final int PARAMETERS_CONTAINER[] = new int[1];
    private static final int SIZE_CONTAINER[] = new int[1];
    private static final int TYPE_CONTAINER[] = new int[1];
    protected final HashMap mAttributeLocations;
    protected boolean mCompiled;
    protected final IShaderSource mFragmentShaderSource;
    protected int mProgramID;
    protected final HashMap mUniformLocations;
    protected final IShaderSource mVertexShaderSource;

    public ShaderProgram(String s, String s1)
    {
        this(((IShaderSource) (new StringShaderSource(s))), ((IShaderSource) (new StringShaderSource(s1))));
    }

    public ShaderProgram(IShaderSource ishadersource, IShaderSource ishadersource1)
    {
        mProgramID = -1;
        mUniformLocations = new HashMap();
        mAttributeLocations = new HashMap();
        mVertexShaderSource = ishadersource;
        mFragmentShaderSource = ishadersource1;
    }

    private static int compileShader(String s, int i)
        throws ShaderProgramException
    {
        int j = GLES20.glCreateShader(i);
        if (j == 0)
        {
            throw new ShaderProgramException((new StringBuilder("Could not create Shader of type: '")).append(i).append('"').toString());
        }
        GLES20.glShaderSource(j, s);
        GLES20.glCompileShader(j);
        GLES20.glGetShaderiv(j, 35713, HARDWAREID_CONTAINER, 0);
        if (HARDWAREID_CONTAINER[0] == 0)
        {
            throw new ShaderProgramCompileException(GLES20.glGetShaderInfoLog(j), s);
        } else
        {
            return j;
        }
    }

    private void initAttributeLocations()
    {
        int i;
        int j;
        mAttributeLocations.clear();
        PARAMETERS_CONTAINER[0] = 0;
        GLES20.glGetProgramiv(mProgramID, 35721, PARAMETERS_CONTAINER, 0);
        i = PARAMETERS_CONTAINER[0];
        j = 0;
_L6:
        int k;
        if (j >= i)
        {
            return;
        }
        GLES20.glGetActiveAttrib(mProgramID, j, 64, LENGTH_CONTAINER, 0, SIZE_CONTAINER, 0, TYPE_CONTAINER, 0, NAME_CONTAINER, 0);
        k = LENGTH_CONTAINER[0];
        if (k != 0) goto _L2; else goto _L1
_L1:
        if (k < 64 && NAME_CONTAINER[k] != 0) goto _L3; else goto _L2
_L2:
        String s;
        int l;
        int i1;
        s = new String(NAME_CONTAINER, 0, k);
        l = GLES20.glGetAttribLocation(mProgramID, s);
        if (l != -1)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        i1 = 0;
_L4:
        if (i1 >= 64 || NAME_CONTAINER[i1] == 0)
        {
            s = new String(NAME_CONTAINER, 0, i1);
            l = GLES20.glGetAttribLocation(mProgramID, s);
            if (l == -1)
            {
                throw new ShaderProgramLinkException((new StringBuilder("Invalid location for attribute: '")).append(s).append("'.").toString());
            }
            break MISSING_BLOCK_LABEL_214;
        }
        break MISSING_BLOCK_LABEL_208;
_L3:
        k++;
          goto _L1
        i1++;
          goto _L4
        mAttributeLocations.put(s, Integer.valueOf(l));
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void initUniformLocations()
        throws ShaderProgramLinkException
    {
        int i;
        int j;
        mUniformLocations.clear();
        PARAMETERS_CONTAINER[0] = 0;
        GLES20.glGetProgramiv(mProgramID, 35718, PARAMETERS_CONTAINER, 0);
        i = PARAMETERS_CONTAINER[0];
        j = 0;
_L6:
        int k;
        if (j >= i)
        {
            return;
        }
        GLES20.glGetActiveUniform(mProgramID, j, 64, LENGTH_CONTAINER, 0, SIZE_CONTAINER, 0, TYPE_CONTAINER, 0, NAME_CONTAINER, 0);
        k = LENGTH_CONTAINER[0];
        if (k != 0) goto _L2; else goto _L1
_L1:
        if (k < 64 && NAME_CONTAINER[k] != 0) goto _L3; else goto _L2
_L2:
        String s;
        int l;
        int i1;
        s = new String(NAME_CONTAINER, 0, k);
        l = GLES20.glGetUniformLocation(mProgramID, s);
        if (l != -1)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        i1 = 0;
_L4:
        if (i1 >= 64 || NAME_CONTAINER[i1] == 0)
        {
            s = new String(NAME_CONTAINER, 0, i1);
            l = GLES20.glGetUniformLocation(mProgramID, s);
            if (l == -1)
            {
                throw new ShaderProgramLinkException((new StringBuilder("Invalid location for uniform: '")).append(s).append("'.").toString());
            }
            break MISSING_BLOCK_LABEL_214;
        }
        break MISSING_BLOCK_LABEL_208;
_L3:
        k++;
          goto _L1
        i1++;
          goto _L4
        mUniformLocations.put(s, Integer.valueOf(l));
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void bind(GLState glstate, VertexBufferObjectAttributes vertexbufferobjectattributes)
        throws ShaderProgramException
    {
        if (!mCompiled)
        {
            compile(glstate);
        }
        glstate.useProgram(mProgramID);
        vertexbufferobjectattributes.glVertexAttribPointers();
    }

    protected void compile(GLState glstate)
        throws ShaderProgramException
    {
        String s = mVertexShaderSource.getShaderSource(glstate);
        int i = compileShader(s, 35633);
        String s1 = mFragmentShaderSource.getShaderSource(glstate);
        int j = compileShader(s1, 35632);
        mProgramID = GLES20.glCreateProgram();
        GLES20.glAttachShader(mProgramID, i);
        GLES20.glAttachShader(mProgramID, j);
        try
        {
            link(glstate);
        }
        catch (ShaderProgramLinkException shaderprogramlinkexception)
        {
            throw new ShaderProgramLinkException((new StringBuilder("VertexShaderSource:\n##########################\n")).append(s).append("\n##########################").append("\n\nFragmentShaderSource:\n##########################\n").append(s1).append("\n##########################").toString(), shaderprogramlinkexception);
        }
        GLES20.glDeleteShader(i);
        GLES20.glDeleteShader(j);
    }

    public void delete(GLState glstate)
    {
        if (mCompiled)
        {
            mCompiled = false;
            glstate.deleteProgram(mProgramID);
            mProgramID = -1;
        }
    }

    public int getAttributeLocation(String s)
    {
        Integer integer = (Integer)mAttributeLocations.get(s);
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            throw new ShaderProgramException((new StringBuilder("Unexpected attribute: '")).append(s).append("'. Existing attributes: ").append(mAttributeLocations.toString()).toString());
        }
    }

    public int getAttributeLocationOptional(String s)
    {
        Integer integer = (Integer)mAttributeLocations.get(s);
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            return -1;
        }
    }

    public int getUniformLocation(String s)
    {
        Integer integer = (Integer)mUniformLocations.get(s);
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            throw new ShaderProgramException((new StringBuilder("Unexpected uniform: '")).append(s).append("'. Existing uniforms: ").append(mUniformLocations.toString()).toString());
        }
    }

    public int getUniformLocationOptional(String s)
    {
        Integer integer = (Integer)mUniformLocations.get(s);
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            return -1;
        }
    }

    public boolean isCompiled()
    {
        return mCompiled;
    }

    protected void link(GLState glstate)
        throws ShaderProgramLinkException
    {
        GLES20.glLinkProgram(mProgramID);
        GLES20.glGetProgramiv(mProgramID, 35714, HARDWAREID_CONTAINER, 0);
        if (HARDWAREID_CONTAINER[0] == 0)
        {
            throw new ShaderProgramLinkException(GLES20.glGetProgramInfoLog(mProgramID));
        } else
        {
            initAttributeLocations();
            initUniformLocations();
            mCompiled = true;
            return;
        }
    }

    public void setCompiled(boolean flag)
    {
        mCompiled = flag;
    }

    public void setTexture(String s, int i)
    {
        GLES20.glUniform1i(getUniformLocation(s), i);
    }

    public void setTextureOptional(String s, int i)
    {
        int j = getUniformLocationOptional(s);
        if (j != -1)
        {
            GLES20.glUniform1i(j, i);
        }
    }

    public void setUniform(String s, float f)
    {
        GLES20.glUniform1f(getUniformLocation(s), f);
    }

    public void setUniform(String s, float f, float f1)
    {
        GLES20.glUniform2f(getUniformLocation(s), f, f1);
    }

    public void setUniform(String s, float f, float f1, float f2)
    {
        GLES20.glUniform3f(getUniformLocation(s), f, f1, f2);
    }

    public void setUniform(String s, float f, float f1, float f2, float f3)
    {
        GLES20.glUniform4f(getUniformLocation(s), f, f1, f2, f3);
    }

    public void setUniform(String s, float af[])
    {
        GLES20.glUniformMatrix4fv(getUniformLocation(s), 1, false, af, 0);
    }

    public void setUniformOptional(String s, float f)
    {
        if (getUniformLocationOptional(s) != -1)
        {
            GLES20.glUniform1f(getUniformLocationOptional(s), f);
        }
    }

    public void setUniformOptional(String s, float f, float f1)
    {
        if (getUniformLocationOptional(s) != -1)
        {
            GLES20.glUniform2f(getUniformLocationOptional(s), f, f1);
        }
    }

    public void setUniformOptional(String s, float f, float f1, float f2)
    {
        if (getUniformLocationOptional(s) != -1)
        {
            GLES20.glUniform3f(getUniformLocationOptional(s), f, f1, f2);
        }
    }

    public void setUniformOptional(String s, float f, float f1, float f2, float f3)
    {
        if (getUniformLocationOptional(s) != -1)
        {
            GLES20.glUniform4f(getUniformLocationOptional(s), f, f1, f2, f3);
        }
    }

    public void setUniformOptional(String s, float af[])
    {
        if (getUniformLocationOptional(s) != -1)
        {
            GLES20.glUniformMatrix4fv(getUniformLocationOptional(s), 1, false, af, 0);
        }
    }

    public void unbind(GLState glstate)
        throws ShaderProgramException
    {
    }

}
