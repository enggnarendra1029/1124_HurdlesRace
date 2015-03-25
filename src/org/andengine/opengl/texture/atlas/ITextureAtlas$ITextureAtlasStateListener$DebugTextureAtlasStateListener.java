// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas;

import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.texture.atlas:
//            ITextureAtlas

public static class 
    implements 
{

    public void onLoadedToHardware(ITexture itexture)
    {
        Debug.d((new StringBuilder("Texture loaded: ")).append(itexture.toString()).toString());
    }

    public void onTextureAtlasSourceLoadExeption(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource, Throwable throwable)
    {
        Debug.e((new StringBuilder("Exception loading TextureAtlasSource. TextureAtlas: ")).append(itextureatlas.toString()).append(" TextureAtlasSource: ").append(itextureatlassource.toString()).toString(), throwable);
    }

    public void onTextureAtlasSourceLoaded(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource)
    {
        Debug.e((new StringBuilder("Loaded TextureAtlasSource. TextureAtlas: ")).append(itextureatlas.toString()).append(" TextureAtlasSource: ").append(itextureatlassource.toString()).toString());
    }

    public void onUnloadedFromHardware(ITexture itexture)
    {
        Debug.d((new StringBuilder("Texture unloaded: ")).append(itexture.toString()).toString());
    }

    public ()
    {
    }
}
