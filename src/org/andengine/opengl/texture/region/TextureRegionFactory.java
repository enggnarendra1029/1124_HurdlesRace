// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.region;

import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.atlas.ITextureAtlas;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.region:
//            TextureRegion, TiledTextureRegion

public class TextureRegionFactory
{

    public TextureRegionFactory()
    {
    }

    public static TextureRegion createFromSource(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource, int i, int j)
    {
        return createFromSource(itextureatlas, itextureatlassource, i, j, false);
    }

    public static TextureRegion createFromSource(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource, int i, int j, boolean flag)
    {
        TextureRegion textureregion = new TextureRegion(itextureatlas, i, j, itextureatlassource.getTextureWidth(), itextureatlassource.getTextureHeight(), flag);
        itextureatlas.addTextureAtlasSource(itextureatlassource, i, j);
        return textureregion;
    }

    public static TiledTextureRegion createTiledFromSource(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource, int i, int j, int k, int l)
    {
        return createTiledFromSource(itextureatlas, itextureatlassource, i, j, k, l, false);
    }

    public static TiledTextureRegion createTiledFromSource(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource, int i, int j, int k, int l, boolean flag)
    {
        TiledTextureRegion tiledtextureregion = TiledTextureRegion.create(itextureatlas, i, j, itextureatlassource.getTextureWidth(), itextureatlassource.getTextureHeight(), k, l, flag);
        itextureatlas.addTextureAtlasSource(itextureatlassource, i, j);
        return tiledtextureregion;
    }

    public static TextureRegion extractFromTexture(ITexture itexture)
    {
        return extractFromTexture(itexture, false);
    }

    public static TextureRegion extractFromTexture(ITexture itexture, int i, int j, int k, int l)
    {
        return extractFromTexture(itexture, i, j, k, l, false);
    }

    public static TextureRegion extractFromTexture(ITexture itexture, int i, int j, int k, int l, boolean flag)
    {
        return new TextureRegion(itexture, i, j, k, l, flag);
    }

    public static TextureRegion extractFromTexture(ITexture itexture, boolean flag)
    {
        return new TextureRegion(itexture, 0.0F, 0.0F, itexture.getWidth(), itexture.getHeight(), flag);
    }

    public static TiledTextureRegion extractTiledFromTexture(ITexture itexture, int i, int j)
    {
        return TiledTextureRegion.create(itexture, 0, 0, itexture.getWidth(), itexture.getHeight(), i, j);
    }

    public static TiledTextureRegion extractTiledFromTexture(ITexture itexture, int i, int j, int k, int l, int i1, int j1)
    {
        return TiledTextureRegion.create(itexture, i, j, k, l, i1, j1);
    }
}
