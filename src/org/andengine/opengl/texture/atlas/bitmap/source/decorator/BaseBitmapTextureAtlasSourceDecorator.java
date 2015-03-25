// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.source.BaseTextureAtlasSource;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.debug.Debug;

public abstract class BaseBitmapTextureAtlasSourceDecorator extends BaseTextureAtlasSource
    implements IBitmapTextureAtlasSource
{
    public static class TextureAtlasSourceDecoratorOptions
    {

        public static final TextureAtlasSourceDecoratorOptions DEFAULT = new TextureAtlasSourceDecoratorOptions();
        private boolean mAntiAliasing;
        private float mInsetBottom;
        private float mInsetLeft;
        private float mInsetRight;
        private float mInsetTop;

        protected TextureAtlasSourceDecoratorOptions deepCopy()
        {
            TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions = new TextureAtlasSourceDecoratorOptions();
            textureatlassourcedecoratoroptions.setInsets(mInsetLeft, mInsetTop, mInsetRight, mInsetBottom);
            textureatlassourcedecoratoroptions.setAntiAliasing(mAntiAliasing);
            return textureatlassourcedecoratoroptions;
        }

        public boolean getAntiAliasing()
        {
            return mAntiAliasing;
        }

        public float getInsetBottom()
        {
            return mInsetBottom;
        }

        public float getInsetLeft()
        {
            return mInsetLeft;
        }

        public float getInsetRight()
        {
            return mInsetRight;
        }

        public float getInsetTop()
        {
            return mInsetTop;
        }

        public TextureAtlasSourceDecoratorOptions setAntiAliasing(boolean flag)
        {
            mAntiAliasing = flag;
            return this;
        }

        public TextureAtlasSourceDecoratorOptions setInsetBottom(float f)
        {
            mInsetBottom = f;
            return this;
        }

        public TextureAtlasSourceDecoratorOptions setInsetLeft(float f)
        {
            mInsetLeft = f;
            return this;
        }

        public TextureAtlasSourceDecoratorOptions setInsetRight(float f)
        {
            mInsetRight = f;
            return this;
        }

        public TextureAtlasSourceDecoratorOptions setInsetTop(float f)
        {
            mInsetTop = f;
            return this;
        }

        public TextureAtlasSourceDecoratorOptions setInsets(float f)
        {
            return setInsets(f, f, f, f);
        }

        public TextureAtlasSourceDecoratorOptions setInsets(float f, float f1, float f2, float f3)
        {
            mInsetLeft = f;
            mInsetTop = f1;
            mInsetRight = f2;
            mInsetBottom = f3;
            return this;
        }


        public TextureAtlasSourceDecoratorOptions()
        {
            mInsetLeft = 0.25F;
            mInsetRight = 0.25F;
            mInsetTop = 0.25F;
            mInsetBottom = 0.25F;
        }
    }


    protected final IBitmapTextureAtlasSource mBitmapTextureAtlasSource;
    protected Paint mPaint;
    protected TextureAtlasSourceDecoratorOptions mTextureAtlasSourceDecoratorOptions;

    public BaseBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource)
    {
        this(ibitmaptextureatlassource, new TextureAtlasSourceDecoratorOptions());
    }

    public BaseBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource.getTextureX(), ibitmaptextureatlassource.getTextureY(), ibitmaptextureatlassource.getTextureWidth(), ibitmaptextureatlassource.getTextureHeight());
        mPaint = new Paint();
        mBitmapTextureAtlasSource = ibitmaptextureatlassource;
        if (textureatlassourcedecoratoroptions == null)
        {
            textureatlassourcedecoratoroptions = new TextureAtlasSourceDecoratorOptions();
        }
        mTextureAtlasSourceDecoratorOptions = textureatlassourcedecoratoroptions;
        mPaint.setAntiAlias(mTextureAtlasSourceDecoratorOptions.getAntiAliasing());
    }

    private static Bitmap ensureLoadedBitmapIsMutable(Bitmap bitmap)
    {
        if (bitmap.isMutable())
        {
            return bitmap;
        } else
        {
            Bitmap bitmap1 = bitmap.copy(bitmap.getConfig(), true);
            bitmap.recycle();
            return bitmap1;
        }
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public abstract BaseBitmapTextureAtlasSourceDecorator deepCopy();

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public Paint getPaint()
    {
        return mPaint;
    }

    public TextureAtlasSourceDecoratorOptions getTextureAtlasSourceDecoratorOptions()
    {
        return mTextureAtlasSourceDecoratorOptions;
    }

    public int getTextureHeight()
    {
        return mBitmapTextureAtlasSource.getTextureHeight();
    }

    public int getTextureWidth()
    {
        return mBitmapTextureAtlasSource.getTextureWidth();
    }

    protected abstract void onDecorateBitmap(Canvas canvas)
        throws Exception;

    public Bitmap onLoadBitmap(android.graphics.Bitmap.Config config)
    {
        Bitmap bitmap = ensureLoadedBitmapIsMutable(mBitmapTextureAtlasSource.onLoadBitmap(config));
        Canvas canvas = new Canvas(bitmap);
        try
        {
            onDecorateBitmap(canvas);
        }
        catch (Exception exception)
        {
            Debug.e(exception);
            return bitmap;
        }
        return bitmap;
    }

    public void setPaint(Paint paint)
    {
        mPaint = paint;
    }

    public void setTextureAtlasSourceDecoratorOptions(TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        mTextureAtlasSourceDecoratorOptions = textureatlassourcedecoratoroptions;
    }
}
