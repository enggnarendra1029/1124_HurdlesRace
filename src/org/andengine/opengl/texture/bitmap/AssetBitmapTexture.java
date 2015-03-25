// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.bitmap;

import android.content.res.AssetManager;
import java.io.IOException;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.util.adt.io.in.AssetInputStreamOpener;

// Referenced classes of package org.andengine.opengl.texture.bitmap:
//            BitmapTexture, BitmapTextureFormat

public class AssetBitmapTexture extends BitmapTexture
{

    public AssetBitmapTexture(TextureManager texturemanager, AssetManager assetmanager, String s)
        throws IOException
    {
        super(texturemanager, new AssetInputStreamOpener(assetmanager, s));
    }

    public AssetBitmapTexture(TextureManager texturemanager, AssetManager assetmanager, String s, TextureOptions textureoptions)
        throws IOException
    {
        super(texturemanager, new AssetInputStreamOpener(assetmanager, s), textureoptions);
    }

    public AssetBitmapTexture(TextureManager texturemanager, AssetManager assetmanager, String s, BitmapTextureFormat bitmaptextureformat)
        throws IOException
    {
        super(texturemanager, new AssetInputStreamOpener(assetmanager, s), bitmaptextureformat);
    }

    public AssetBitmapTexture(TextureManager texturemanager, AssetManager assetmanager, String s, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions)
        throws IOException
    {
        super(texturemanager, new AssetInputStreamOpener(assetmanager, s), bitmaptextureformat, textureoptions);
    }

    public AssetBitmapTexture(TextureManager texturemanager, AssetManager assetmanager, String s, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IOException
    {
        super(texturemanager, new AssetInputStreamOpener(assetmanager, s), bitmaptextureformat, textureoptions, itexturestatelistener);
    }
}
