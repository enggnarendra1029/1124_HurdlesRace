// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import java.util.ArrayList;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.atlas.TextureAtlas;
import org.andengine.opengl.texture.atlas.bitmap.source.EmptyBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.bitmap.BitmapTextureFormat;
import org.andengine.opengl.util.GLState;
import org.andengine.util.exception.NullBitmapException;
import org.andengine.util.math.MathUtils;

public class BitmapTextureAtlas extends TextureAtlas
{

    private final BitmapTextureFormat mBitmapTextureFormat;

    public BitmapTextureAtlas(TextureManager texturemanager, int i, int j)
    {
        this(texturemanager, i, j, BitmapTextureFormat.RGBA_8888);
    }

    public BitmapTextureAtlas(TextureManager texturemanager, int i, int j, TextureOptions textureoptions)
        throws IllegalArgumentException
    {
        this(texturemanager, i, j, BitmapTextureFormat.RGBA_8888, textureoptions, null);
    }

    public BitmapTextureAtlas(TextureManager texturemanager, int i, int j, TextureOptions textureoptions, org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
        throws IllegalArgumentException
    {
        this(texturemanager, i, j, BitmapTextureFormat.RGBA_8888, textureoptions, itextureatlasstatelistener);
    }

    public BitmapTextureAtlas(TextureManager texturemanager, int i, int j, org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
    {
        this(texturemanager, i, j, BitmapTextureFormat.RGBA_8888, TextureOptions.DEFAULT, itextureatlasstatelistener);
    }

    public BitmapTextureAtlas(TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat)
    {
        this(texturemanager, i, j, bitmaptextureformat, TextureOptions.DEFAULT, null);
    }

    public BitmapTextureAtlas(TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions)
        throws IllegalArgumentException
    {
        this(texturemanager, i, j, bitmaptextureformat, textureoptions, null);
    }

    public BitmapTextureAtlas(TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
        throws IllegalArgumentException
    {
        super(texturemanager, i, j, bitmaptextureformat.getPixelFormat(), textureoptions, itextureatlasstatelistener);
        mBitmapTextureFormat = bitmaptextureformat;
    }

    public BitmapTextureAtlas(TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
    {
        this(texturemanager, i, j, bitmaptextureformat, TextureOptions.DEFAULT, itextureatlasstatelistener);
    }

    public void addEmptyTextureAtlasSource(int i, int j, int k, int l)
    {
        addTextureAtlasSource(new EmptyBitmapTextureAtlasSource(k, l), i, j);
    }

    public BitmapTextureFormat getBitmapTextureFormat()
    {
        return mBitmapTextureFormat;
    }

    protected void writeTextureToHardware(GLState glstate)
    {
        PixelFormat pixelformat;
        int j;
        int k;
        boolean flag;
        android.graphics.Bitmap.Config config;
        ArrayList arraylist;
        org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener;
        int i1;
        pixelformat = mBitmapTextureFormat.getPixelFormat();
        int i = pixelformat.getGLInternalFormat();
        j = pixelformat.getGLFormat();
        k = pixelformat.getGLType();
        GLES20.glTexImage2D(3553, 0, i, mWidth, mHeight, 0, j, k, null);
        flag = mTextureOptions.mPreMultiplyAlpha;
        int l;
        if (flag)
        {
            config = mBitmapTextureFormat.getBitmapConfig();
        } else
        {
            config = android.graphics.Bitmap.Config.ARGB_8888;
        }
        arraylist = mTextureAtlasSources;
        l = arraylist.size();
        itextureatlasstatelistener = getTextureAtlasStateListener();
        i1 = 0;
_L2:
        IBitmapTextureAtlasSource ibitmaptextureatlassource;
        if (i1 >= l)
        {
            return;
        }
        ibitmaptextureatlassource = (IBitmapTextureAtlasSource)arraylist.get(i1);
        Bitmap bitmap = ibitmaptextureatlassource.onLoadBitmap(config);
        if (bitmap != null)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            throw new NullBitmapException((new StringBuilder("Caused by: ")).append(ibitmaptextureatlassource.getClass().toString()).append(" --> ").append(ibitmaptextureatlassource.toString()).append(" returned a null Bitmap.").toString());
        }
        catch (NullBitmapException nullbitmapexception)
        {
            if (itextureatlasstatelistener != null)
            {
                itextureatlasstatelistener.onTextureAtlasSourceLoadExeption(this, ibitmaptextureatlassource, nullbitmapexception);
            } else
            {
                throw nullbitmapexception;
            }
        }
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        boolean flag1;
        if (MathUtils.isPowerOfTwo(bitmap.getWidth()) && MathUtils.isPowerOfTwo(bitmap.getHeight()) && pixelformat == PixelFormat.RGBA_8888)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_254;
        }
        GLES20.glPixelStorei(3317, 1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_321;
        }
        GLUtils.texSubImage2D(3553, 0, ibitmaptextureatlassource.getTextureX(), ibitmaptextureatlassource.getTextureY(), bitmap, j, k);
_L3:
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_298;
        }
        GLES20.glPixelStorei(3317, 4);
        bitmap.recycle();
        if (itextureatlasstatelistener == null)
        {
            break MISSING_BLOCK_LABEL_204;
        }
        itextureatlasstatelistener.onTextureAtlasSourceLoaded(this, ibitmaptextureatlassource);
        break MISSING_BLOCK_LABEL_204;
        glstate.glTexSubImage2D(3553, 0, ibitmaptextureatlassource.getTextureX(), ibitmaptextureatlassource.getTextureY(), bitmap, mPixelFormat);
          goto _L3
    }
}
