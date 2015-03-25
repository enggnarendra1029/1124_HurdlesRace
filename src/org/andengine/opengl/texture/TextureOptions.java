// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture;

import android.opengl.GLES20;

public class TextureOptions
{

    public static final TextureOptions BILINEAR = new TextureOptions(9729, 9729, 33071, 33071, false);
    public static final TextureOptions BILINEAR_PREMULTIPLYALPHA = new TextureOptions(9729, 9729, 33071, 33071, true);
    public static final TextureOptions DEFAULT;
    public static final TextureOptions NEAREST;
    public static final TextureOptions NEAREST_PREMULTIPLYALPHA = new TextureOptions(9728, 9728, 33071, 33071, true);
    public static final TextureOptions REPEATING_BILINEAR = new TextureOptions(9729, 9729, 10497, 10497, false);
    public static final TextureOptions REPEATING_BILINEAR_PREMULTIPLYALPHA = new TextureOptions(9729, 9729, 10497, 10497, true);
    public static final TextureOptions REPEATING_NEAREST = new TextureOptions(9728, 9728, 10497, 10497, false);
    public static final TextureOptions REPEATING_NEAREST_PREMULTIPLYALPHA = new TextureOptions(9728, 9728, 10497, 10497, true);
    public final int mMagFilter;
    public final int mMinFilter;
    public final boolean mPreMultiplyAlpha;
    public final float mWrapS;
    public final float mWrapT;

    public TextureOptions(int i, int j, int k, int l, boolean flag)
    {
        mMinFilter = i;
        mMagFilter = j;
        mWrapT = k;
        mWrapS = l;
        mPreMultiplyAlpha = flag;
    }

    public void apply()
    {
        GLES20.glTexParameterf(3553, 10241, mMinFilter);
        GLES20.glTexParameterf(3553, 10240, mMagFilter);
        GLES20.glTexParameterf(3553, 10242, mWrapS);
        GLES20.glTexParameterf(3553, 10243, mWrapT);
    }

    static 
    {
        NEAREST = new TextureOptions(9728, 9728, 33071, 33071, false);
        DEFAULT = NEAREST;
    }
}
