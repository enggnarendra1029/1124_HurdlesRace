// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.region;

import org.andengine.opengl.texture.ITexture;

// Referenced classes of package org.andengine.opengl.texture.region:
//            BaseTextureRegion, ITextureRegion

public class TextureRegion extends BaseTextureRegion
{

    private static final float SCALE_DEFAULT = 1F;
    protected final boolean mRotated;
    protected final float mScale;
    protected float mTextureHeight;
    protected float mTextureWidth;
    protected float mTextureX;
    protected float mTextureY;
    protected float mU;
    protected float mU2;
    protected float mV;
    protected float mV2;

    public TextureRegion(ITexture itexture, float f, float f1, float f2, float f3)
    {
        this(itexture, f, f1, f2, f3, false);
    }

    public TextureRegion(ITexture itexture, float f, float f1, float f2, float f3, float f4)
    {
        this(itexture, f, f1, f2, f3, f4, false);
    }

    public TextureRegion(ITexture itexture, float f, float f1, float f2, float f3, float f4, boolean flag)
    {
        super(itexture);
        mTextureX = f;
        mTextureY = f1;
        if (flag)
        {
            mRotated = true;
            mTextureWidth = f3;
            mTextureHeight = f2;
        } else
        {
            mRotated = false;
            mTextureWidth = f2;
            mTextureHeight = f3;
        }
        mScale = f4;
        updateUV();
    }

    public TextureRegion(ITexture itexture, float f, float f1, float f2, float f3, boolean flag)
    {
        this(itexture, f, f1, f2, f3, 1.0F, flag);
    }

    public volatile ITextureRegion deepCopy()
    {
        return deepCopy();
    }

    public TextureRegion deepCopy()
    {
        if (mRotated)
        {
            return new TextureRegion(mTexture, mTextureX, mTextureY, mTextureHeight, mTextureWidth, mScale, mRotated);
        } else
        {
            return new TextureRegion(mTexture, mTextureX, mTextureY, mTextureWidth, mTextureHeight, mScale, mRotated);
        }
    }

    public float getHeight()
    {
        if (mRotated)
        {
            return mTextureWidth * mScale;
        } else
        {
            return mTextureHeight * mScale;
        }
    }

    public float getScale()
    {
        return mScale;
    }

    public float getTextureX()
    {
        return mTextureX;
    }

    public float getTextureY()
    {
        return mTextureY;
    }

    public float getU()
    {
        return mU;
    }

    public float getU2()
    {
        return mU2;
    }

    public float getV()
    {
        return mV;
    }

    public float getV2()
    {
        return mV2;
    }

    public float getWidth()
    {
        if (mRotated)
        {
            return mTextureHeight * mScale;
        } else
        {
            return mTextureWidth * mScale;
        }
    }

    public boolean isRotated()
    {
        return mRotated;
    }

    public boolean isScaled()
    {
        return mScale != 1.0F;
    }

    public void set(float f, float f1, float f2, float f3)
    {
        mTextureX = f;
        mTextureY = f1;
        mTextureWidth = f2;
        mTextureHeight = f3;
        updateUV();
    }

    public void setTextureHeight(float f)
    {
        mTextureHeight = f;
        updateUV();
    }

    public void setTexturePosition(float f, float f1)
    {
        mTextureX = f;
        mTextureY = f1;
        updateUV();
    }

    public void setTextureSize(float f, float f1)
    {
        mTextureWidth = f;
        mTextureHeight = f1;
        updateUV();
    }

    public void setTextureWidth(float f)
    {
        mTextureWidth = f;
        updateUV();
    }

    public void setTextureX(float f)
    {
        mTextureX = f;
        updateUV();
    }

    public void setTextureY(float f)
    {
        mTextureY = f;
        updateUV();
    }

    public void updateUV()
    {
        ITexture itexture = mTexture;
        float f = itexture.getWidth();
        float f1 = itexture.getHeight();
        float f2 = getTextureX();
        float f3 = getTextureY();
        mU = f2 / f;
        mU2 = (f2 + mTextureWidth) / f;
        mV = f3 / f1;
        mV2 = (f3 + mTextureHeight) / f1;
    }
}
