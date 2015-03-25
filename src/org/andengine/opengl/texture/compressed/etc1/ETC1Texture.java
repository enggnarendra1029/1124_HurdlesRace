// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.etc1;

import android.opengl.ETC1;
import android.opengl.ETC1Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.Texture;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.util.GLState;
import org.andengine.util.StreamUtils;

public abstract class ETC1Texture extends Texture
{
    public static class ETC1TextureHeader
    {

        private final ByteBuffer mDataByteBuffer = ByteBuffer.allocateDirect(16).order(ByteOrder.nativeOrder());
        private final int mHeight;
        private final int mWidth;

        public int getHeight()
        {
            return mHeight;
        }

        public int getWidth()
        {
            return mWidth;
        }

        public ETC1TextureHeader(byte abyte0[])
        {
            if (abyte0.length != 16)
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid ")).append(getClass().getSimpleName()).append("!").toString());
            }
            mDataByteBuffer.put(abyte0, 0, 16);
            mDataByteBuffer.position(0);
            if (!ETC1.isValid(mDataByteBuffer))
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid ")).append(getClass().getSimpleName()).append("!").toString());
            } else
            {
                mWidth = ETC1.getWidth(mDataByteBuffer);
                mHeight = ETC1.getHeight(mDataByteBuffer);
                return;
            }
        }
    }


    private ETC1TextureHeader mETC1TextureHeader;

    public ETC1Texture(TextureManager texturemanager)
        throws IOException
    {
        this(texturemanager, TextureOptions.DEFAULT, null);
    }

    public ETC1Texture(TextureManager texturemanager, ITextureStateListener itexturestatelistener)
        throws IOException
    {
        this(texturemanager, TextureOptions.DEFAULT, itexturestatelistener);
    }

    public ETC1Texture(TextureManager texturemanager, TextureOptions textureoptions)
        throws IOException
    {
        this(texturemanager, textureoptions, null);
    }

    public ETC1Texture(TextureManager texturemanager, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IOException
    {
        InputStream inputstream;
        super(texturemanager, PixelFormat.RGB_565, textureoptions, itexturestatelistener);
        inputstream = null;
        inputstream = getInputStream();
        mETC1TextureHeader = new ETC1TextureHeader(StreamUtils.streamToBytes(inputstream, 16));
        StreamUtils.close(inputstream);
        return;
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
    }

    public int getHeight()
    {
        return mETC1TextureHeader.getHeight();
    }

    protected abstract InputStream getInputStream()
        throws IOException;

    public int getWidth()
    {
        return mETC1TextureHeader.getWidth();
    }

    protected void writeTextureToHardware(GLState glstate)
        throws IOException
    {
        InputStream inputstream = getInputStream();
        ETC1Util.loadTexture(3553, 0, 0, mPixelFormat.getGLFormat(), mPixelFormat.getGLType(), inputstream);
    }
}
