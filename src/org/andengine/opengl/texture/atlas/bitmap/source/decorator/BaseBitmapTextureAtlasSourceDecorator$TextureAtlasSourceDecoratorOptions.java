// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;


// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            BaseBitmapTextureAtlasSourceDecorator

public static class mInsetBottom
{

    public static final mInsetBottom DEFAULT = new <init>();
    private boolean mAntiAliasing;
    private float mInsetBottom;
    private float mInsetLeft;
    private float mInsetRight;
    private float mInsetTop;

    protected mInsetBottom deepCopy()
    {
        mInsetBottom minsetbottom = new <init>();
        minsetbottom.setInsets(mInsetLeft, mInsetTop, mInsetRight, mInsetBottom);
        minsetbottom.setAntiAliasing(mAntiAliasing);
        return minsetbottom;
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

    public mInsetTop setAntiAliasing(boolean flag)
    {
        mAntiAliasing = flag;
        return this;
    }

    public mAntiAliasing setInsetBottom(float f)
    {
        mInsetBottom = f;
        return this;
    }

    public mInsetBottom setInsetLeft(float f)
    {
        mInsetLeft = f;
        return this;
    }

    public mInsetLeft setInsetRight(float f)
    {
        mInsetRight = f;
        return this;
    }

    public mInsetRight setInsetTop(float f)
    {
        mInsetTop = f;
        return this;
    }

    public mInsetTop setInsets(float f)
    {
        return setInsets(f, f, f, f);
    }

    public setInsets setInsets(float f, float f1, float f2, float f3)
    {
        mInsetLeft = f;
        mInsetTop = f1;
        mInsetRight = f2;
        mInsetBottom = f3;
        return this;
    }


    public _89_()
    {
        mInsetLeft = 0.25F;
        mInsetRight = 0.25F;
        mInsetTop = 0.25F;
        mInsetBottom = 0.25F;
    }
}
