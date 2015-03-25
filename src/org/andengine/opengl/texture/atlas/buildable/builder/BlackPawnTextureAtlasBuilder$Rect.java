// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable.builder;


// Referenced classes of package org.andengine.opengl.texture.atlas.buildable.builder:
//            BlackPawnTextureAtlasBuilder

protected static class mHeight
{

    private final int mHeight;
    private final int mLeft;
    private final int mTop;
    private final int mWidth;

    public int getBottom()
    {
        return mTop + mHeight;
    }

    public int getHeight()
    {
        return mHeight;
    }

    public int getLeft()
    {
        return mLeft;
    }

    public int getRight()
    {
        return mLeft + mWidth;
    }

    public int getTop()
    {
        return mTop;
    }

    public int getWidth()
    {
        return mWidth;
    }

    public String toString()
    {
        return (new StringBuilder("@: ")).append(mLeft).append("/").append(mTop).append(" * ").append(mWidth).append("x").append(mHeight).toString();
    }



    public (int i, int j, int k, int l)
    {
        mLeft = i;
        mTop = j;
        mWidth = k;
        mHeight = l;
    }
}
