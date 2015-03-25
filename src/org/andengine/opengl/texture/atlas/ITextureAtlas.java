// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas;

import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.debug.Debug;

public interface ITextureAtlas
    extends ITexture
{
    public static interface ITextureAtlasStateListener
        extends ITextureStateListener
    {

        public abstract void onTextureAtlasSourceLoadExeption(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource, Throwable throwable);

        public abstract void onTextureAtlasSourceLoaded(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource);
    }

    public static class ITextureAtlasStateListener.DebugTextureAtlasStateListener
        implements ITextureAtlasStateListener
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

        public ITextureAtlasStateListener.DebugTextureAtlasStateListener()
        {
        }
    }

    public static class ITextureAtlasStateListener.TextureAtlasStateAdapter
        implements ITextureAtlasStateListener
    {

        public void onLoadedToHardware(ITexture itexture)
        {
        }

        public void onTextureAtlasSourceLoadExeption(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource, Throwable throwable)
        {
        }

        public void onTextureAtlasSourceLoaded(ITextureAtlas itextureatlas, ITextureAtlasSource itextureatlassource)
        {
        }

        public void onUnloadedFromHardware(ITexture itexture)
        {
        }

        public ITextureAtlasStateListener.TextureAtlasStateAdapter()
        {
        }
    }


    public abstract void addEmptyTextureAtlasSource(int i, int j, int k, int l);

    public abstract void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j)
        throws IllegalArgumentException;

    public abstract void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j, int k)
        throws IllegalArgumentException;

    public abstract void clearTextureAtlasSources();

    public abstract ITextureAtlasStateListener getTextureAtlasStateListener();

    public abstract ITextureAtlasStateListener getTextureStateListener();

    public abstract boolean hasTextureAtlasStateListener();

    public abstract boolean hasTextureStateListener();

    public abstract void removeTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j);

    public abstract void setTextureAtlasStateListener(ITextureAtlasStateListener itextureatlasstatelistener);

    public abstract void setTextureStateListener(ITextureStateListener itexturestatelistener);
}
