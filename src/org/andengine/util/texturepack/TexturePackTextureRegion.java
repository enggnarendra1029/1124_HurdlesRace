// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.texturepack;

import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.region.TextureRegion;

public class TexturePackTextureRegion extends TextureRegion
{

    private final int mID;
    private final String mSource;
    private final int mSourceHeight;
    private final int mSourceWidth;
    private final int mSourceX;
    private final int mSourceY;
    private final boolean mTrimmed;

    public TexturePackTextureRegion(ITexture itexture, int i, int j, int k, int l, int i1, String s, 
            boolean flag, boolean flag1, int j1, int k1, int l1, int i2)
    {
        super(itexture, i, j, k, l, flag);
        mID = i1;
        mSource = s;
        mTrimmed = flag1;
        mSourceX = j1;
        mSourceY = k1;
        mSourceWidth = l1;
        mSourceHeight = i2;
    }

    public int getID()
    {
        return mID;
    }

    public String getSource()
    {
        return mSource;
    }

    public int getSourceHeight()
    {
        return mSourceHeight;
    }

    public int getSourceWidth()
    {
        return mSourceWidth;
    }

    public int getSourceX()
    {
        return mSourceX;
    }

    public int getSourceY()
    {
        return mSourceY;
    }

    public boolean isTrimmed()
    {
        return mTrimmed;
    }
}
