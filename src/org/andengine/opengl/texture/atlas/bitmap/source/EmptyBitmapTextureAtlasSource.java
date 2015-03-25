// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source;

import android.graphics.Bitmap;
import org.andengine.opengl.texture.atlas.source.BaseTextureAtlasSource;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source:
//            IBitmapTextureAtlasSource

public class EmptyBitmapTextureAtlasSource extends BaseTextureAtlasSource
    implements IBitmapTextureAtlasSource
{

    public EmptyBitmapTextureAtlasSource(int i, int j)
    {
        this(0, 0, i, j);
    }

    public EmptyBitmapTextureAtlasSource(int i, int j, int k, int l)
    {
        super(i, j, k, l);
    }

    public EmptyBitmapTextureAtlasSource deepCopy()
    {
        return new EmptyBitmapTextureAtlasSource(mTextureX, mTextureY, mTextureWidth, mTextureHeight);
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public Bitmap onLoadBitmap(android.graphics.Bitmap.Config config)
    {
        return Bitmap.createBitmap(mTextureWidth, mTextureHeight, config);
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append("(").append(mTextureWidth).append(" x ").append(mTextureHeight).append(")").toString();
    }
}
