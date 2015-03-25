// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.andengine.opengl.texture.atlas.source.BaseTextureAtlasSource;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.FileUtils;
import org.andengine.util.StreamUtils;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source:
//            IBitmapTextureAtlasSource

public class FileBitmapTextureAtlasSource extends BaseTextureAtlasSource
    implements IBitmapTextureAtlasSource
{

    private final File mFile;

    FileBitmapTextureAtlasSource(File file, int i, int j, int k, int l)
    {
        super(i, j, k, l);
        mFile = file;
    }

    public static FileBitmapTextureAtlasSource create(File file)
    {
        return create(file, 0, 0);
    }

    public static FileBitmapTextureAtlasSource create(File file, int i, int j)
    {
        android.graphics.BitmapFactory.Options options;
        Object obj;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        obj = null;
        FileInputStream fileinputstream = new FileInputStream(file);
        BitmapFactory.decodeStream(fileinputstream, null, options);
        StreamUtils.close(fileinputstream);
_L1:
        return new FileBitmapTextureAtlasSource(file, i, j, options.outWidth, options.outHeight);
        IOException ioexception;
        ioexception;
_L4:
        Debug.e((new StringBuilder("Failed loading Bitmap in ")).append(org/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource.getSimpleName()).append(". File: ").append(file).toString(), ioexception);
        StreamUtils.close(((java.io.Closeable) (obj)));
          goto _L1
        Exception exception;
        exception;
_L3:
        StreamUtils.close(((java.io.Closeable) (obj)));
        throw exception;
        exception;
        obj = fileinputstream;
        if (true) goto _L3; else goto _L2
_L2:
        ioexception;
        obj = fileinputstream;
          goto _L4
    }

    public static FileBitmapTextureAtlasSource createFromExternalStorage(Context context, String s, int i, int j)
    {
        return create(new File(FileUtils.getAbsolutePathOnExternalStorage(context, s)), i, j);
    }

    public static FileBitmapTextureAtlasSource createFromInternalStorage(Context context, String s, int i, int j)
    {
        return create(new File(FileUtils.getAbsolutePathOnInternalStorage(context, s)), i, j);
    }

    public FileBitmapTextureAtlasSource deepCopy()
    {
        return new FileBitmapTextureAtlasSource(mFile, mTextureX, mTextureY, mTextureWidth, mTextureHeight);
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
        android.graphics.BitmapFactory.Options options;
        Object obj;
        options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = config;
        obj = null;
        FileInputStream fileinputstream = new FileInputStream(mFile);
        Bitmap bitmap = BitmapFactory.decodeStream(fileinputstream, null, options);
        StreamUtils.close(fileinputstream);
        return bitmap;
        IOException ioexception;
        ioexception;
_L4:
        Debug.e((new StringBuilder("Failed loading Bitmap in ")).append(getClass().getSimpleName()).append(". File: ").append(mFile).toString(), ioexception);
        StreamUtils.close(((java.io.Closeable) (obj)));
        return null;
        Exception exception;
        exception;
_L2:
        StreamUtils.close(((java.io.Closeable) (obj)));
        throw exception;
        exception;
        obj = fileinputstream;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        obj = fileinputstream;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append("(").append(mFile).append(")").toString();
    }
}
