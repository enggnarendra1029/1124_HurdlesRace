// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import org.andengine.opengl.texture.atlas.source.BaseTextureAtlasSource;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source:
//            IBitmapTextureAtlasSource

public class ResourceBitmapTextureAtlasSource extends BaseTextureAtlasSource
    implements IBitmapTextureAtlasSource
{

    private final int mDrawableResourceID;
    private final Resources mResources;

    public ResourceBitmapTextureAtlasSource(Resources resources, int i, int j, int k, int l, int i1)
    {
        super(j, k, l, i1);
        mResources = resources;
        mDrawableResourceID = i;
    }

    public static ResourceBitmapTextureAtlasSource create(Resources resources, int i)
    {
        return create(resources, i, 0, 0);
    }

    public static ResourceBitmapTextureAtlasSource create(Resources resources, int i, int j, int k)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        return new ResourceBitmapTextureAtlasSource(resources, i, j, k, options.outWidth, options.outHeight);
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public ResourceBitmapTextureAtlasSource deepCopy()
    {
        return new ResourceBitmapTextureAtlasSource(mResources, mDrawableResourceID, mTextureX, mTextureY, mTextureWidth, mTextureHeight);
    }

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public Bitmap onLoadBitmap(android.graphics.Bitmap.Config config)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = config;
        return BitmapFactory.decodeResource(mResources, mDrawableResourceID, options);
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append("(").append(mDrawableResourceID).append(")").toString();
    }
}
