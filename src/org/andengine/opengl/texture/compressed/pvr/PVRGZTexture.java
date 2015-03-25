// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.compressed.pvr;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy.IPVRTexturePixelBufferStrategy;

// Referenced classes of package org.andengine.opengl.texture.compressed.pvr:
//            PVRTexture

public abstract class PVRGZTexture extends PVRTexture
{

    public PVRGZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat);
    }

    public PVRGZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, itexturestatelistener);
    }

    public PVRGZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, TextureOptions textureoptions)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, textureoptions);
    }

    public PVRGZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, textureoptions, itexturestatelistener);
    }

    public PVRGZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy);
    }

    public PVRGZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, itexturestatelistener);
    }

    public PVRGZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, TextureOptions textureoptions)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, textureoptions);
    }

    public PVRGZTexture(TextureManager texturemanager, PVRTexture.PVRTextureFormat pvrtextureformat, IPVRTexturePixelBufferStrategy ipvrtexturepixelbufferstrategy, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException, IOException
    {
        super(texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, textureoptions, itexturestatelistener);
    }

    public volatile InputStream getInputStream()
        throws IOException
    {
        return getInputStream();
    }

    public GZIPInputStream getInputStream()
        throws IOException
    {
        return new GZIPInputStream(onGetInputStream());
    }
}
