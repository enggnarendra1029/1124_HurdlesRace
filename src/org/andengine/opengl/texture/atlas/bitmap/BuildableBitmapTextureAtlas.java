// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap;

import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas;
import org.andengine.opengl.texture.bitmap.BitmapTextureFormat;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap:
//            BitmapTextureAtlas

public class BuildableBitmapTextureAtlas extends BuildableTextureAtlas
{

    public BuildableBitmapTextureAtlas(TextureManager texturemanager, int i, int j)
    {
        this(texturemanager, i, j, BitmapTextureFormat.RGBA_8888);
    }

    public BuildableBitmapTextureAtlas(TextureManager texturemanager, int i, int j, TextureOptions textureoptions)
        throws IllegalArgumentException
    {
        this(texturemanager, i, j, BitmapTextureFormat.RGBA_8888, textureoptions, null);
    }

    public BuildableBitmapTextureAtlas(TextureManager texturemanager, int i, int j, TextureOptions textureoptions, org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
        throws IllegalArgumentException
    {
        this(texturemanager, i, j, BitmapTextureFormat.RGBA_8888, textureoptions, itextureatlasstatelistener);
    }

    public BuildableBitmapTextureAtlas(TextureManager texturemanager, int i, int j, org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
    {
        this(texturemanager, i, j, BitmapTextureFormat.RGBA_8888, TextureOptions.DEFAULT, itextureatlasstatelistener);
    }

    public BuildableBitmapTextureAtlas(TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat)
    {
        this(texturemanager, i, j, bitmaptextureformat, TextureOptions.DEFAULT, null);
    }

    public BuildableBitmapTextureAtlas(TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions)
        throws IllegalArgumentException
    {
        this(texturemanager, i, j, bitmaptextureformat, textureoptions, null);
    }

    public BuildableBitmapTextureAtlas(TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
        throws IllegalArgumentException
    {
        super(new BitmapTextureAtlas(texturemanager, i, j, bitmaptextureformat, textureoptions, itextureatlasstatelistener));
    }

    public BuildableBitmapTextureAtlas(TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
    {
        this(texturemanager, i, j, bitmaptextureformat, TextureOptions.DEFAULT, itextureatlasstatelistener);
    }
}
