// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import org.andengine.opengl.texture.atlas.source.BaseTextureAtlasSource;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.StreamUtils;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source:
//            IBitmapTextureAtlasSource

public class AssetBitmapTextureAtlasSource extends BaseTextureAtlasSource
    implements IBitmapTextureAtlasSource
{

    private final AssetManager mAssetManager;
    private final String mAssetPath;

    AssetBitmapTextureAtlasSource(AssetManager assetmanager, String s, int i, int j, int k, int l)
    {
        super(i, j, k, l);
        mAssetManager = assetmanager;
        mAssetPath = s;
    }

    public static AssetBitmapTextureAtlasSource create(AssetManager assetmanager, String s)
    {
        return create(assetmanager, s, 0, 0);
    }

    public static AssetBitmapTextureAtlasSource create(AssetManager assetmanager, String s, int i, int j)
    {
        android.graphics.BitmapFactory.Options options;
        java.io.InputStream inputstream;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        inputstream = null;
        inputstream = assetmanager.open(s);
        BitmapFactory.decodeStream(inputstream, null, options);
        StreamUtils.close(inputstream);
_L2:
        return new AssetBitmapTextureAtlasSource(assetmanager, s, i, j, options.outWidth, options.outHeight);
        IOException ioexception;
        ioexception;
        Debug.e((new StringBuilder("Failed loading Bitmap in AssetBitmapTextureAtlasSource. AssetPath: ")).append(s).toString(), ioexception);
        StreamUtils.close(inputstream);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
    }

    public AssetBitmapTextureAtlasSource deepCopy()
    {
        return new AssetBitmapTextureAtlasSource(mAssetManager, mAssetPath, mTextureX, mTextureY, mTextureWidth, mTextureHeight);
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
        java.io.InputStream inputstream = null;
        Bitmap bitmap;
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = config;
        inputstream = mAssetManager.open(mAssetPath);
        bitmap = BitmapFactory.decodeStream(inputstream, null, options);
        StreamUtils.close(inputstream);
        return bitmap;
        IOException ioexception;
        ioexception;
        Debug.e((new StringBuilder("Failed loading Bitmap in ")).append(getClass().getSimpleName()).append(". AssetPath: ").append(mAssetPath).toString(), ioexception);
        StreamUtils.close(inputstream);
        return null;
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append("(").append(mAssetPath).append(")").toString();
    }
}
