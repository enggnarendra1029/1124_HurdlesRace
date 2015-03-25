// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util;

import android.opengl.Matrix;
import org.andengine.util.exception.AndEngineRuntimeException;

public class GLMatrixStack
{
    public static class GLMatrixStackOverflowException extends AndEngineRuntimeException
    {

        private static final long serialVersionUID = 0xf4e2d12f8a9d35fcL;

        public GLMatrixStackOverflowException()
        {
        }
    }

    public static class GLMatrixStackUnderflowException extends AndEngineRuntimeException
    {

        private static final long serialVersionUID = 0xd2a5a7d493970726L;

        public GLMatrixStackUnderflowException()
        {
        }
    }


    private static final int GLMATRIXSTACKOFFSET_OVERFLOW = 512;
    private static final int GLMATRIXSTACKOFFSET_UNDERFLOW = -16;
    public static final int GLMATRIXSTACK_DEPTH_MAX = 32;
    public static final int GLMATRIX_SIZE = 16;
    final float mMatrixStack[] = new float[512];
    int mMatrixStackOffset;
    private final float mTemp[] = new float[32];

    public GLMatrixStack()
    {
        glLoadIdentity();
    }

    private static void setSkewM(float af[], int i, float f, float f1)
    {
        af[i + 0] = 1.0F;
        af[i + 1] = (float)Math.tan(-0.01745329F * f1);
        af[i + 2] = 0.0F;
        af[i + 3] = 0.0F;
        af[i + 4] = (float)Math.tan(-0.01745329F * f);
        af[i + 5] = 1.0F;
        af[i + 6] = 0.0F;
        af[i + 7] = 0.0F;
        af[i + 8] = 0.0F;
        af[i + 9] = 0.0F;
        af[i + 10] = 1.0F;
        af[i + 11] = 0.0F;
        af[i + 12] = 0.0F;
        af[i + 13] = 0.0F;
        af[i + 14] = 0.0F;
        af[i + 15] = 1.0F;
    }

    public void getMatrix(float af[])
    {
        System.arraycopy(mMatrixStack, mMatrixStackOffset, af, 0, 16);
    }

    public void glLoadIdentity()
    {
        Matrix.setIdentityM(mMatrixStack, mMatrixStackOffset);
    }

    public void glOrthof(float f, float f1, float f2, float f3, float f4, float f5)
    {
        Matrix.orthoM(mMatrixStack, mMatrixStackOffset, f, f1, f2, f3, f4, f5);
    }

    public void glPopMatrix()
    {
        if (-16 + mMatrixStackOffset <= -16)
        {
            throw new GLMatrixStackUnderflowException();
        } else
        {
            mMatrixStackOffset = -16 + mMatrixStackOffset;
            return;
        }
    }

    public void glPushMatrix()
        throws GLMatrixStackOverflowException
    {
        if (16 + mMatrixStackOffset >= 512)
        {
            throw new GLMatrixStackOverflowException();
        } else
        {
            System.arraycopy(mMatrixStack, mMatrixStackOffset, mMatrixStack, 16 + mMatrixStackOffset, 16);
            mMatrixStackOffset = 16 + mMatrixStackOffset;
            return;
        }
    }

    public void glRotatef(float f, float f1, float f2, float f3)
    {
        Matrix.setRotateM(mTemp, 0, f, f1, f2, f3);
        System.arraycopy(mMatrixStack, mMatrixStackOffset, mTemp, 16, 16);
        Matrix.multiplyMM(mMatrixStack, mMatrixStackOffset, mTemp, 16, mTemp, 0);
    }

    public void glScalef(float f, float f1, float f2)
    {
        Matrix.scaleM(mMatrixStack, mMatrixStackOffset, f, f1, f2);
    }

    public void glSkewf(float f, float f1)
    {
        setSkewM(mTemp, 0, f, f1);
        System.arraycopy(mMatrixStack, mMatrixStackOffset, mTemp, 16, 16);
        Matrix.multiplyMM(mMatrixStack, mMatrixStackOffset, mTemp, 16, mTemp, 0);
    }

    public void glTranslatef(float f, float f1, float f2)
    {
        Matrix.translateM(mMatrixStack, mMatrixStackOffset, f, f1, f2);
    }

    public void reset()
    {
        mMatrixStackOffset = 0;
        glLoadIdentity();
    }
}
