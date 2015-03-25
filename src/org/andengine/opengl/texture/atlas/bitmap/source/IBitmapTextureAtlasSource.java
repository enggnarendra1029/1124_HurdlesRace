// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source;

import android.graphics.Bitmap;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

public interface IBitmapTextureAtlasSource
    extends ITextureAtlasSource
{

    public abstract IBitmapTextureAtlasSource deepCopy();

    public abstract Bitmap onLoadBitmap(android.graphics.Bitmap.Config config);
}
