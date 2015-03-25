// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.render;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import java.io.IOException;
import java.nio.IntBuffer;
import org.andengine.opengl.exception.GLException;
import org.andengine.opengl.exception.GLFrameBufferException;
import org.andengine.opengl.exception.RenderTextureInitializationException;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.Texture;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.util.GLHelper;
import org.andengine.opengl.util.GLState;
import org.andengine.util.color.Color;

public class RenderTexture extends Texture
{

    private static final float CLEARCOLOR_CONTAINER[] = new float[4];
    private static final int CLEARCOLOR_CONTAINER_ALPHA_INDEX = 3;
    private static final int CLEARCOLOR_CONTAINER_BLUE_INDEX = 2;
    private static final int CLEARCOLOR_CONTAINER_GREEN_INDEX = 1;
    private static final int CLEARCOLOR_CONTAINER_RED_INDEX = 0;
    private static final int VIEWPORT_CONTAINER[] = new int[4];
    private static final int VIEWPORT_CONTAINER_HEIGHT_INDEX = 3;
    private static final int VIEWPORT_CONTAINER_WIDTH_INDEX = 2;
    private static final int VIEWPORT_CONTAINER_X_INDEX = 0;
    private static final int VIEWPORT_CONTAINER_Y_INDEX = 1;
    protected int mFramebufferObjectID;
    protected final int mHeight;
    private boolean mInitialized;
    protected final PixelFormat mPixelFormat;
    private int mPreviousFramebufferObjectID;
    private int mPreviousViewPortHeight;
    private int mPreviousViewPortWidth;
    private int mPreviousViewPortX;
    private int mPreviousViewPortY;
    protected final int mWidth;

    public RenderTexture(TextureManager texturemanager, int i, int j)
    {
        this(texturemanager, i, j, PixelFormat.RGBA_8888, TextureOptions.NEAREST);
    }

    public RenderTexture(TextureManager texturemanager, int i, int j, PixelFormat pixelformat)
    {
        this(texturemanager, i, j, pixelformat, TextureOptions.NEAREST);
    }

    public RenderTexture(TextureManager texturemanager, int i, int j, PixelFormat pixelformat, TextureOptions textureoptions)
    {
        this(texturemanager, i, j, pixelformat, textureoptions, null);
    }

    public RenderTexture(TextureManager texturemanager, int i, int j, PixelFormat pixelformat, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
    {
        super(texturemanager, pixelformat, textureoptions, itexturestatelistener);
        mWidth = i;
        mHeight = j;
        mPixelFormat = pixelformat;
    }

    public RenderTexture(TextureManager texturemanager, int i, int j, TextureOptions textureoptions)
    {
        this(texturemanager, i, j, PixelFormat.RGBA_8888, textureoptions);
    }

    public void begin(GLState glstate)
    {
        begin(glstate, false, false);
    }

    public void begin(GLState glstate, float f, float f1, float f2, float f3)
    {
        begin(glstate, false, false, f, f1, f2, f3);
    }

    public void begin(GLState glstate, Color color)
    {
        begin(glstate, color.getRed(), color.getGreen(), color.getBlue(), color.getAlpha());
    }

    public void begin(GLState glstate, boolean flag, boolean flag1)
    {
        savePreviousViewport();
        GLES20.glViewport(0, 0, mWidth, mHeight);
        glstate.pushProjectionGLMatrix();
        float f;
        float f1;
        float f2;
        float f3;
        if (flag)
        {
            f1 = mWidth;
            f = 0.0F;
        } else
        {
            f = mWidth;
            f1 = 0.0F;
        }
        if (flag1)
        {
            f3 = mHeight;
            f2 = 0.0F;
        } else
        {
            f2 = mHeight;
            f3 = 0.0F;
        }
        glstate.orthoProjectionGLMatrixf(f1, f, f2, f3, -1F, 1.0F);
        savePreviousFramebufferObjectID(glstate);
        glstate.bindFramebuffer(mFramebufferObjectID);
        glstate.pushModelViewGLMatrix();
        glstate.loadModelViewGLMatrixIdentity();
    }

    public void begin(GLState glstate, boolean flag, boolean flag1, float f, float f1, float f2, float f3)
    {
        begin(glstate, flag, flag1);
        GLES20.glGetFloatv(3106, CLEARCOLOR_CONTAINER, 0);
        GLES20.glClearColor(f, f1, f2, f3);
        GLES20.glClear(16384);
        GLES20.glClearColor(CLEARCOLOR_CONTAINER[0], CLEARCOLOR_CONTAINER[1], CLEARCOLOR_CONTAINER[2], CLEARCOLOR_CONTAINER[3]);
    }

    public void begin(GLState glstate, boolean flag, boolean flag1, Color color)
    {
        begin(glstate, flag, flag1, color.getRed(), color.getGreen(), color.getBlue(), color.getAlpha());
    }

    public void destroy(GLState glstate)
    {
        unloadFromHardware(glstate);
        glstate.deleteFramebuffer(mFramebufferObjectID);
        mInitialized = false;
    }

    public void end(GLState glstate)
    {
        end(glstate, false, false);
    }

    public void end(GLState glstate, boolean flag, boolean flag1)
    {
        if (!flag1) goto _L2; else goto _L1
_L1:
        finish(glstate);
_L4:
        glstate.popModelViewGLMatrix();
        restorePreviousFramebufferObjectID(glstate);
        glstate.popProjectionGLMatrix();
        resotorePreviousViewport();
        return;
_L2:
        if (flag)
        {
            flush(glstate);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void finish(GLState glstate)
    {
        glstate.finish();
    }

    public void flush(GLState glstate)
    {
        glstate.flush();
    }

    public Bitmap getBitmap(GLState glstate)
    {
        return getBitmap(glstate, 0, 0, mWidth, mHeight);
    }

    public Bitmap getBitmap(GLState glstate, int i, int j, int k, int l)
    {
        if (mPixelFormat != PixelFormat.RGBA_8888)
        {
            throw new IllegalStateException((new StringBuilder("Currently only 'PixelFormat.")).append(PixelFormat.RGBA_8888).append("' is supported to be retrieved as a Bitmap.").toString());
        } else
        {
            return Bitmap.createBitmap(getPixelsARGB_8888(glstate, i, j, k, l), k, l, android.graphics.Bitmap.Config.ARGB_8888);
        }
    }

    public int getHeight()
    {
        return mHeight;
    }

    public int[] getPixelsARGB_8888(GLState glstate)
    {
        return getPixelsARGB_8888(glstate, 0, 0, mWidth, mHeight);
    }

    public int[] getPixelsARGB_8888(GLState glstate, int i, int j, int k, int l)
    {
        int ai[] = new int[k * l];
        IntBuffer intbuffer = IntBuffer.wrap(ai);
        intbuffer.position(0);
        begin(glstate);
        GLES20.glReadPixels(i, j, k, l, mPixelFormat.getGLFormat(), mPixelFormat.getGLType(), intbuffer);
        end(glstate);
        return GLHelper.convertRGBA_8888toARGB_8888(ai);
    }

    public int getWidth()
    {
        return mWidth;
    }

    public void init(GLState glstate)
        throws GLFrameBufferException, GLException
    {
        savePreviousFramebufferObjectID(glstate);
        Exception exception;
        GLException glexception;
        try
        {
            loadToHardware(glstate);
        }
        catch (IOException ioexception) { }
        glstate.bindTexture(0);
        mFramebufferObjectID = glstate.generateFramebuffer();
        glstate.bindFramebuffer(mFramebufferObjectID);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, mHardwareTextureID, 0);
        glstate.checkFramebufferStatus();
        restorePreviousFramebufferObjectID(glstate);
        mInitialized = true;
        return;
        glexception;
        destroy(glstate);
        throw new RenderTextureInitializationException(glexception);
        exception;
        restorePreviousFramebufferObjectID(glstate);
        throw exception;
    }

    public boolean isInitialized()
    {
        return mInitialized;
    }

    protected void resotorePreviousViewport()
    {
        GLES20.glViewport(mPreviousViewPortX, mPreviousViewPortY, mPreviousViewPortWidth, mPreviousViewPortHeight);
    }

    protected void restorePreviousFramebufferObjectID(GLState glstate)
    {
        glstate.bindFramebuffer(mPreviousFramebufferObjectID);
    }

    protected void savePreviousFramebufferObjectID(GLState glstate)
    {
        mPreviousFramebufferObjectID = glstate.getActiveFramebuffer();
    }

    protected void savePreviousViewport()
    {
        GLES20.glGetIntegerv(2978, VIEWPORT_CONTAINER, 0);
        mPreviousViewPortX = VIEWPORT_CONTAINER[0];
        mPreviousViewPortY = VIEWPORT_CONTAINER[1];
        mPreviousViewPortWidth = VIEWPORT_CONTAINER[2];
        mPreviousViewPortHeight = VIEWPORT_CONTAINER[3];
    }

    protected void writeTextureToHardware(GLState glstate)
    {
        GLES20.glTexImage2D(3553, 0, mPixelFormat.getGLInternalFormat(), mWidth, mHeight, 0, mPixelFormat.getGLFormat(), mPixelFormat.getGLType(), null);
    }

}
