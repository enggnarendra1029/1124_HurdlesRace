// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import java.io.IOException;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.Texture;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.util.GLState;
import org.andengine.util.StreamUtils;
import org.andengine.util.adt.io.in.IInputStreamOpener;
import org.andengine.util.exception.NullBitmapException;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.opengl.texture.bitmap:
//            BitmapTextureFormat

public class BitmapTexture extends Texture
{

    private final BitmapTextureFormat mBitmapTextureFormat;
    private final int mHeight;
    private final IInputStreamOpener mInputStreamOpener;
    private final int mWidth;

    public BitmapTexture(TextureManager texturemanager, IInputStreamOpener iinputstreamopener)
        throws IOException
    {
        this(texturemanager, iinputstreamopener, BitmapTextureFormat.RGBA_8888, TextureOptions.DEFAULT, null);
    }

    public BitmapTexture(TextureManager texturemanager, IInputStreamOpener iinputstreamopener, TextureOptions textureoptions)
        throws IOException
    {
        this(texturemanager, iinputstreamopener, BitmapTextureFormat.RGBA_8888, textureoptions, null);
    }

    public BitmapTexture(TextureManager texturemanager, IInputStreamOpener iinputstreamopener, BitmapTextureFormat bitmaptextureformat)
        throws IOException
    {
        this(texturemanager, iinputstreamopener, bitmaptextureformat, TextureOptions.DEFAULT, null);
    }

    public BitmapTexture(TextureManager texturemanager, IInputStreamOpener iinputstreamopener, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions)
        throws IOException
    {
        this(texturemanager, iinputstreamopener, bitmaptextureformat, textureoptions, null);
    }

    public BitmapTexture(TextureManager texturemanager, IInputStreamOpener iinputstreamopener, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IOException
    {
        android.graphics.BitmapFactory.Options options;
        super(texturemanager, bitmaptextureformat.getPixelFormat(), textureoptions, itexturestatelistener);
        mInputStreamOpener = iinputstreamopener;
        mBitmapTextureFormat = bitmaptextureformat;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(iinputstreamopener.open(), null, options);
        StreamUtils.close(null);
        mWidth = options.outWidth;
        mHeight = options.outHeight;
        return;
        Exception exception;
        exception;
        StreamUtils.close(null);
        throw exception;
    }

    public int getHeight()
    {
        return mHeight;
    }

    public int getWidth()
    {
        return mWidth;
    }

    protected Bitmap onGetBitmap(android.graphics.Bitmap.Config config)
        throws IOException
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = config;
        return BitmapFactory.decodeStream(mInputStreamOpener.open(), null, options);
    }

    protected void writeTextureToHardware(GLState glstate)
        throws IOException
    {
        Bitmap bitmap = onGetBitmap(mBitmapTextureFormat.getBitmapConfig());
        if (bitmap == null)
        {
            throw new NullBitmapException((new StringBuilder("Caused by: '")).append(toString()).append("'.").toString());
        }
        boolean flag;
        if (MathUtils.isPowerOfTwo(bitmap.getWidth()) && MathUtils.isPowerOfTwo(bitmap.getHeight()) && mPixelFormat == PixelFormat.RGBA_8888)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            GLES20.glPixelStorei(3317, 1);
        }
        if (mTextureOptions.mPreMultiplyAlpha)
        {
            GLUtils.texImage2D(3553, 0, bitmap, 0);
        } else
        {
            glstate.glTexImage2D(3553, 0, bitmap, 0, mPixelFormat);
        }
        if (!flag)
        {
            GLES20.glPixelStorei(3317, 4);
        }
        bitmap.recycle();
    }
}
