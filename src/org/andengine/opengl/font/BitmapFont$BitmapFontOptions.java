// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;


// Referenced classes of package org.andengine.opengl.font:
//            BitmapFont

public static class mTextureOffsetY
{

    public static final mTextureOffsetY DEFAULT = new <init>(0, 0);
    private final int mTextureOffsetX;
    private final int mTextureOffsetY;

    public int getTextureOffsetX()
    {
        return mTextureOffsetX;
    }

    public int getTextureOffsetY()
    {
        return mTextureOffsetY;
    }




    public (int i, int j)
    {
        mTextureOffsetX = i;
        mTextureOffsetY = j;
    }
}
