// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import org.andengine.opengl.texture.atlas.source.BaseTextureAtlasSource;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source:
//            IBitmapTextureAtlasSource

public abstract class PictureBitmapTextureAtlasSource extends BaseTextureAtlasSource
    implements IBitmapTextureAtlasSource
{

    protected final Picture mPicture;

    public PictureBitmapTextureAtlasSource(Picture picture)
    {
        this(picture, 0, 0);
    }

    public PictureBitmapTextureAtlasSource(Picture picture, int i, int j)
    {
        this(picture, i, j, picture.getWidth(), picture.getHeight());
    }

    public PictureBitmapTextureAtlasSource(Picture picture, int i, int j, float f)
    {
        this(picture, i, j, Math.round(f * (float)picture.getWidth()), Math.round(f * (float)picture.getHeight()));
    }

    public PictureBitmapTextureAtlasSource(Picture picture, int i, int j, int k, int l)
    {
        super(i, j, k, l);
        mPicture = picture;
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public abstract PictureBitmapTextureAtlasSource deepCopy();

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public Bitmap onLoadBitmap(android.graphics.Bitmap.Config config)
    {
        Picture picture = mPicture;
        if (picture == null)
        {
            Debug.e((new StringBuilder("Failed loading Bitmap in ")).append(getClass().getSimpleName()).append(".").toString());
            return null;
        } else
        {
            Bitmap bitmap = Bitmap.createBitmap(mTextureWidth, mTextureHeight, config);
            Canvas canvas = new Canvas(bitmap);
            canvas.scale((float)mTextureWidth / (float)mPicture.getWidth(), (float)mTextureHeight / (float)mPicture.getHeight(), 0.0F, 0.0F);
            picture.draw(canvas);
            return bitmap;
        }
    }
}
