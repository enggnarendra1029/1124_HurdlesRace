// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.ByteOrder;
import java.util.Arrays;
import javax.microedition.khronos.egl.EGLConfig;
import org.andengine.engine.options.RenderOptions;
import org.andengine.opengl.exception.GLException;
import org.andengine.opengl.exception.GLFrameBufferException;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.view.ConfigChooser;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.util:
//            GLMatrixStack, GLHelper

public class GLState
{

    public static final int GL_UNPACK_ALIGNMENT_DEFAULT = 4;
    private boolean mBlendEnabled;
    private boolean mCullingEnabled;
    private int mCurrentActiveTextureIndex;
    private int mCurrentArrayBufferID;
    private final int mCurrentBoundTextureIDs[] = new int[31];
    private int mCurrentDestinationBlendMode;
    private int mCurrentFramebufferID;
    private int mCurrentIndexBufferID;
    private int mCurrentShaderProgramID;
    private int mCurrentSourceBlendMode;
    private boolean mDepthTestEnabled;
    private boolean mDitherEnabled;
    private String mExtensions;
    private final int mHardwareIDContainer[] = new int[1];
    private float mLineWidth;
    private int mMaximumFragmentShaderUniformVectorCount;
    private int mMaximumTextureSize;
    private int mMaximumTextureUnits;
    private int mMaximumVertexAttributeCount;
    private int mMaximumVertexShaderUniformVectorCount;
    private final float mModelViewGLMatrix[] = new float[16];
    private final GLMatrixStack mModelViewGLMatrixStack = new GLMatrixStack();
    private final float mModelViewProjectionGLMatrix[] = new float[16];
    private final float mProjectionGLMatrix[] = new float[16];
    private final GLMatrixStack mProjectionGLMatrixStack = new GLMatrixStack();
    private String mRenderer;
    private boolean mScissorTestEnabled;
    private String mVersion;

    public GLState()
    {
        mCurrentArrayBufferID = -1;
        mCurrentIndexBufferID = -1;
        mCurrentShaderProgramID = -1;
        mCurrentFramebufferID = -1;
        mCurrentActiveTextureIndex = 0;
        mCurrentSourceBlendMode = -1;
        mCurrentDestinationBlendMode = -1;
        mDitherEnabled = true;
        mDepthTestEnabled = true;
        mScissorTestEnabled = false;
        mBlendEnabled = false;
        mCullingEnabled = false;
        mLineWidth = 1.0F;
    }

    public void activeTexture(int i)
    {
        int j = i - 33984;
        if (i != mCurrentActiveTextureIndex)
        {
            mCurrentActiveTextureIndex = j;
            GLES20.glActiveTexture(i);
        }
    }

    public void bindArrayBuffer(int i)
    {
        if (mCurrentArrayBufferID != i)
        {
            mCurrentArrayBufferID = i;
            GLES20.glBindBuffer(34962, i);
        }
    }

    public void bindFramebuffer(int i)
    {
        GLES20.glBindFramebuffer(36160, i);
    }

    public void bindIndexBuffer(int i)
    {
        if (mCurrentIndexBufferID != i)
        {
            mCurrentIndexBufferID = i;
            GLES20.glBindBuffer(34963, i);
        }
    }

    public void bindTexture(int i)
    {
        if (mCurrentBoundTextureIDs[mCurrentActiveTextureIndex] != i)
        {
            mCurrentBoundTextureIDs[mCurrentActiveTextureIndex] = i;
            GLES20.glBindTexture(3553, i);
        }
    }

    public void blendFunction(int i, int j)
    {
        if (mCurrentSourceBlendMode != i || mCurrentDestinationBlendMode != j)
        {
            mCurrentSourceBlendMode = i;
            mCurrentDestinationBlendMode = j;
            GLES20.glBlendFunc(i, j);
        }
    }

    public void checkError()
        throws GLException
    {
        int i = GLES20.glGetError();
        if (i != 0)
        {
            throw new GLException(i);
        } else
        {
            return;
        }
    }

    public void checkFramebufferStatus()
        throws GLFrameBufferException, GLException
    {
        int i = getFramebufferStatus();
        i;
        JVM INSTR lookupswitch 6: default 64
    //                   0: 117
    //                   36053: 124
    //                   36054: 84
    //                   36055: 106
    //                   36057: 95
    //                   36061: 73;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        throw new GLFrameBufferException(i);
_L7:
        throw new GLFrameBufferException(i, "GL_FRAMEBUFFER_UNSUPPORTED");
_L4:
        throw new GLFrameBufferException(i, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT");
_L6:
        throw new GLFrameBufferException(i, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS");
_L5:
        throw new GLFrameBufferException(i, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT");
_L2:
        checkError();
          goto _L1
_L3:
    }

    public void clearError()
    {
        GLES20.glGetError();
    }

    public void deleteArrayBuffer(int i)
    {
        if (mCurrentArrayBufferID == i)
        {
            mCurrentArrayBufferID = -1;
        }
        mHardwareIDContainer[0] = i;
        GLES20.glDeleteBuffers(1, mHardwareIDContainer, 0);
    }

    public void deleteFramebuffer(int i)
    {
        if (mCurrentFramebufferID == i)
        {
            mCurrentFramebufferID = -1;
        }
        mHardwareIDContainer[0] = i;
        GLES20.glDeleteFramebuffers(1, mHardwareIDContainer, 0);
    }

    public void deleteIndexBuffer(int i)
    {
        if (mCurrentIndexBufferID == i)
        {
            mCurrentIndexBufferID = -1;
        }
        mHardwareIDContainer[0] = i;
        GLES20.glDeleteBuffers(1, mHardwareIDContainer, 0);
    }

    public void deleteProgram(int i)
    {
        if (mCurrentShaderProgramID == i)
        {
            mCurrentShaderProgramID = -1;
        }
        GLES20.glDeleteProgram(i);
    }

    public void deleteTexture(int i)
    {
        if (mCurrentBoundTextureIDs[mCurrentActiveTextureIndex] == i)
        {
            mCurrentBoundTextureIDs[mCurrentActiveTextureIndex] = -1;
        }
        mHardwareIDContainer[0] = i;
        GLES20.glDeleteTextures(1, mHardwareIDContainer, 0);
    }

    public boolean disableBlend()
    {
        if (!mBlendEnabled)
        {
            return false;
        } else
        {
            mBlendEnabled = false;
            GLES20.glDisable(3042);
            return true;
        }
    }

    public boolean disableCulling()
    {
        if (!mCullingEnabled)
        {
            return false;
        } else
        {
            mCullingEnabled = false;
            GLES20.glDisable(2884);
            return true;
        }
    }

    public boolean disableDepthTest()
    {
        if (!mDepthTestEnabled)
        {
            return false;
        } else
        {
            mDepthTestEnabled = false;
            GLES20.glDisable(2929);
            return true;
        }
    }

    public boolean disableDither()
    {
        if (!mDitherEnabled)
        {
            return false;
        } else
        {
            mDitherEnabled = false;
            GLES20.glDisable(3024);
            return true;
        }
    }

    public boolean disableScissorTest()
    {
        if (!mScissorTestEnabled)
        {
            return false;
        } else
        {
            mScissorTestEnabled = false;
            GLES20.glDisable(3089);
            return true;
        }
    }

    public boolean enableBlend()
    {
        if (mBlendEnabled)
        {
            return true;
        } else
        {
            mBlendEnabled = true;
            GLES20.glEnable(3042);
            return false;
        }
    }

    public boolean enableCulling()
    {
        if (mCullingEnabled)
        {
            return true;
        } else
        {
            mCullingEnabled = true;
            GLES20.glEnable(2884);
            return false;
        }
    }

    public boolean enableDepthTest()
    {
        if (mDepthTestEnabled)
        {
            return true;
        } else
        {
            mDepthTestEnabled = true;
            GLES20.glEnable(2929);
            return false;
        }
    }

    public boolean enableDither()
    {
        if (mDitherEnabled)
        {
            return true;
        } else
        {
            mDitherEnabled = true;
            GLES20.glEnable(3024);
            return false;
        }
    }

    public boolean enableScissorTest()
    {
        if (mScissorTestEnabled)
        {
            return true;
        } else
        {
            mScissorTestEnabled = true;
            GLES20.glEnable(3089);
            return false;
        }
    }

    public void finish()
    {
        GLES20.glFinish();
    }

    public void flush()
    {
        GLES20.glFlush();
    }

    public int generateArrayBuffer(int i, int j)
    {
        GLES20.glGenBuffers(1, mHardwareIDContainer, 0);
        int k = mHardwareIDContainer[0];
        bindArrayBuffer(k);
        GLES20.glBufferData(34962, i, null, j);
        bindArrayBuffer(0);
        return k;
    }

    public int generateBuffer()
    {
        GLES20.glGenBuffers(1, mHardwareIDContainer, 0);
        return mHardwareIDContainer[0];
    }

    public int generateFramebuffer()
    {
        GLES20.glGenFramebuffers(1, mHardwareIDContainer, 0);
        return mHardwareIDContainer[0];
    }

    public int generateIndexBuffer(int i, int j)
    {
        GLES20.glGenBuffers(1, mHardwareIDContainer, 0);
        int k = mHardwareIDContainer[0];
        bindIndexBuffer(k);
        GLES20.glBufferData(34963, i, null, j);
        bindIndexBuffer(0);
        return k;
    }

    public int generateTexture()
    {
        GLES20.glGenTextures(1, mHardwareIDContainer, 0);
        return mHardwareIDContainer[0];
    }

    public int getActiveFramebuffer()
    {
        return getInteger(36006);
    }

    public int getActiveTexture()
    {
        return 33984 + mCurrentActiveTextureIndex;
    }

    public int getError()
    {
        return GLES20.glGetError();
    }

    public String getExtensions()
    {
        return mExtensions;
    }

    public int getFramebufferStatus()
    {
        return GLES20.glCheckFramebufferStatus(36160);
    }

    public int getInteger(int i)
    {
        GLES20.glGetIntegerv(i, mHardwareIDContainer, 0);
        return mHardwareIDContainer[0];
    }

    public int getMaximumFragmentShaderUniformVectorCount()
    {
        return mMaximumFragmentShaderUniformVectorCount;
    }

    public int getMaximumTextureSize()
    {
        return mMaximumTextureSize;
    }

    public int getMaximumTextureUnits()
    {
        return mMaximumTextureUnits;
    }

    public int getMaximumVertexAttributeCount()
    {
        return mMaximumVertexAttributeCount;
    }

    public int getMaximumVertexShaderUniformVectorCount()
    {
        return mMaximumVertexShaderUniformVectorCount;
    }

    public float[] getModelViewGLMatrix()
    {
        mModelViewGLMatrixStack.getMatrix(mModelViewGLMatrix);
        return mModelViewGLMatrix;
    }

    public float[] getModelViewProjectionGLMatrix()
    {
        Matrix.multiplyMM(mModelViewProjectionGLMatrix, 0, mProjectionGLMatrixStack.mMatrixStack, mProjectionGLMatrixStack.mMatrixStackOffset, mModelViewGLMatrixStack.mMatrixStack, mModelViewGLMatrixStack.mMatrixStackOffset);
        return mModelViewProjectionGLMatrix;
    }

    public float[] getProjectionGLMatrix()
    {
        mProjectionGLMatrixStack.getMatrix(mProjectionGLMatrix);
        return mProjectionGLMatrix;
    }

    public String getRenderer()
    {
        return mRenderer;
    }

    public String getVersion()
    {
        return mVersion;
    }

    public void glTexImage2D(int i, int j, Bitmap bitmap, int k, PixelFormat pixelformat)
    {
        java.nio.Buffer buffer = GLHelper.getPixels(bitmap, pixelformat, ByteOrder.BIG_ENDIAN);
        GLES20.glTexImage2D(i, j, pixelformat.getGLInternalFormat(), bitmap.getWidth(), bitmap.getHeight(), k, pixelformat.getGLFormat(), pixelformat.getGLType(), buffer);
    }

    public void glTexSubImage2D(int i, int j, int k, int l, Bitmap bitmap, PixelFormat pixelformat)
    {
        java.nio.Buffer buffer = GLHelper.getPixels(bitmap, pixelformat, ByteOrder.BIG_ENDIAN);
        GLES20.glTexSubImage2D(i, j, k, l, bitmap.getWidth(), bitmap.getHeight(), pixelformat.getGLFormat(), pixelformat.getGLType(), buffer);
    }

    public boolean isBlendEnabled()
    {
        return mBlendEnabled;
    }

    public boolean isCullingEnabled()
    {
        return mCullingEnabled;
    }

    public boolean isDepthTestEnabled()
    {
        return mDepthTestEnabled;
    }

    public boolean isDitherEnabled()
    {
        return mDitherEnabled;
    }

    public boolean isScissorTestEnabled()
    {
        return mScissorTestEnabled;
    }

    public boolean isTexture(int i)
    {
        return GLES20.glIsTexture(i);
    }

    public void lineWidth(float f)
    {
        if (mLineWidth != f)
        {
            mLineWidth = f;
            GLES20.glLineWidth(f);
        }
    }

    public void loadModelViewGLMatrixIdentity()
    {
        mModelViewGLMatrixStack.glLoadIdentity();
    }

    public void loadProjectionGLMatrixIdentity()
    {
        mProjectionGLMatrixStack.glLoadIdentity();
    }

    public void orthoModelViewGLMatrixf(float f, float f1, float f2, float f3, float f4, float f5)
    {
        mModelViewGLMatrixStack.glOrthof(f, f1, f2, f3, f4, f5);
    }

    public void orthoProjectionGLMatrixf(float f, float f1, float f2, float f3, float f4, float f5)
    {
        mProjectionGLMatrixStack.glOrthof(f, f1, f2, f3, f4, f5);
    }

    public void popModelViewGLMatrix()
    {
        mModelViewGLMatrixStack.glPopMatrix();
    }

    public void popProjectionGLMatrix()
    {
        mProjectionGLMatrixStack.glPopMatrix();
    }

    public void pushModelViewGLMatrix()
    {
        mModelViewGLMatrixStack.glPushMatrix();
    }

    public void pushProjectionGLMatrix()
    {
        mProjectionGLMatrixStack.glPushMatrix();
    }

    public void reset(RenderOptions renderoptions, ConfigChooser configchooser, EGLConfig eglconfig)
    {
        mVersion = GLES20.glGetString(7938);
        mRenderer = GLES20.glGetString(7937);
        mExtensions = GLES20.glGetString(7939);
        mMaximumVertexAttributeCount = getInteger(34921);
        mMaximumVertexShaderUniformVectorCount = getInteger(36347);
        mMaximumFragmentShaderUniformVectorCount = getInteger(36349);
        mMaximumTextureUnits = getInteger(34930);
        mMaximumTextureSize = getInteger(3379);
        Debug.d((new StringBuilder("VERSION: ")).append(mVersion).toString());
        Debug.d((new StringBuilder("RENDERER: ")).append(mRenderer).toString());
        Debug.d((new StringBuilder("EGLCONFIG: ")).append(javax/microedition/khronos/egl/EGLConfig.getSimpleName()).append("(Red=").append(configchooser.getRedSize()).append(", Green=").append(configchooser.getGreenSize()).append(", Blue=").append(configchooser.getBlueSize()).append(", Alpha=").append(configchooser.getAlphaSize()).append(", Depth=").append(configchooser.getDepthSize()).append(", Stencil=").append(configchooser.getStencilSize()).append(")").toString());
        Debug.d((new StringBuilder("EXTENSIONS: ")).append(mExtensions).toString());
        Debug.d((new StringBuilder("MAX_VERTEX_ATTRIBS: ")).append(mMaximumVertexAttributeCount).toString());
        Debug.d((new StringBuilder("MAX_VERTEX_UNIFORM_VECTORS: ")).append(mMaximumVertexShaderUniformVectorCount).toString());
        Debug.d((new StringBuilder("MAX_FRAGMENT_UNIFORM_VECTORS: ")).append(mMaximumFragmentShaderUniformVectorCount).toString());
        Debug.d((new StringBuilder("MAX_TEXTURE_IMAGE_UNITS: ")).append(mMaximumTextureUnits).toString());
        Debug.d((new StringBuilder("MAX_TEXTURE_SIZE: ")).append(mMaximumTextureSize).toString());
        mModelViewGLMatrixStack.reset();
        mProjectionGLMatrixStack.reset();
        mCurrentArrayBufferID = -1;
        mCurrentIndexBufferID = -1;
        mCurrentShaderProgramID = -1;
        Arrays.fill(mCurrentBoundTextureIDs, -1);
        mCurrentFramebufferID = -1;
        mCurrentActiveTextureIndex = 0;
        mCurrentSourceBlendMode = -1;
        mCurrentDestinationBlendMode = -1;
        enableDither();
        enableDepthTest();
        disableBlend();
        disableCulling();
        GLES20.glEnableVertexAttribArray(0);
        GLES20.glEnableVertexAttribArray(1);
        GLES20.glEnableVertexAttribArray(3);
        mLineWidth = 1.0F;
    }

    public void resetGLMatrixStacks()
    {
        mModelViewGLMatrixStack.reset();
        mProjectionGLMatrixStack.reset();
    }

    public void resetModelViewGLMatrixStack()
    {
        mModelViewGLMatrixStack.reset();
    }

    public void resetProjectionGLMatrixStack()
    {
        mProjectionGLMatrixStack.reset();
    }

    public void rotateModelViewGLMatrixf(float f, float f1, float f2, float f3)
    {
        mModelViewGLMatrixStack.glRotatef(f, f1, f2, f3);
    }

    public void rotateProjectionGLMatrixf(float f, float f1, float f2, float f3)
    {
        mProjectionGLMatrixStack.glRotatef(f, f1, f2, f3);
    }

    public void scaleModelViewGLMatrixf(float f, float f1, int i)
    {
        mModelViewGLMatrixStack.glScalef(f, f1, i);
    }

    public void scaleProjectionGLMatrixf(float f, float f1, float f2)
    {
        mProjectionGLMatrixStack.glScalef(f, f1, f2);
    }

    public boolean setBlendEnabled(boolean flag)
    {
        if (flag)
        {
            return enableBlend();
        } else
        {
            return disableBlend();
        }
    }

    public boolean setCullingEnabled(boolean flag)
    {
        if (flag)
        {
            return enableCulling();
        } else
        {
            return disableCulling();
        }
    }

    public boolean setDepthTestEnabled(boolean flag)
    {
        if (flag)
        {
            return enableDepthTest();
        } else
        {
            return disableDepthTest();
        }
    }

    public boolean setDitherEnabled(boolean flag)
    {
        if (flag)
        {
            return enableDither();
        } else
        {
            return disableDither();
        }
    }

    public boolean setScissorTestEnabled(boolean flag)
    {
        if (flag)
        {
            return enableScissorTest();
        } else
        {
            return disableScissorTest();
        }
    }

    public void skewModelViewGLMatrixf(float f, float f1)
    {
        mModelViewGLMatrixStack.glSkewf(f, f1);
    }

    public void skewProjectionGLMatrixf(float f, float f1)
    {
        mProjectionGLMatrixStack.glSkewf(f, f1);
    }

    public void translateModelViewGLMatrixf(float f, float f1, float f2)
    {
        mModelViewGLMatrixStack.glTranslatef(f, f1, f2);
    }

    public void translateProjectionGLMatrixf(float f, float f1, float f2)
    {
        mProjectionGLMatrixStack.glTranslatef(f, f1, f2);
    }

    public void useProgram(int i)
    {
        if (mCurrentShaderProgramID != i)
        {
            mCurrentShaderProgramID = i;
            GLES20.glUseProgram(i);
        }
    }
}
