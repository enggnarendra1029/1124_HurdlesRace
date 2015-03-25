// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.source;


// Referenced classes of package org.andengine.opengl.texture.atlas.source:
//            ITextureAtlasSource

public abstract class BaseTextureAtlasSource
    implements ITextureAtlasSource
{

    protected int mTextureHeight;
    protected int mTextureWidth;
    protected int mTextureX;
    protected int mTextureY;

    public BaseTextureAtlasSource(int i, int j, int k, int l)
    {
        mTextureX = i;
        mTextureY = j;
        mTextureWidth = k;
        mTextureHeight = l;
    }

    public int getTextureHeight()
    {
        return mTextureHeight;
    }

    public int getTextureWidth()
    {
        return mTextureWidth;
    }

    public int getTextureX()
    {
        return mTextureX;
    }

    public int getTextureY()
    {
        return mTextureY;
    }

    public void setTextureHeight(int i)
    {
        mTextureHeight = i;
    }

    public void setTextureWidth(int i)
    {
        mTextureWidth = i;
    }

    public void setTextureX(int i)
    {
        mTextureX = i;
    }

    public void setTextureY(int i)
    {
        mTextureY = i;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append("( ").append(getTextureWidth()).append("x").append(getTextureHeight()).append(" @ ").append(mTextureX).append("/").append(mTextureY).append(" )").toString();
    }
}
