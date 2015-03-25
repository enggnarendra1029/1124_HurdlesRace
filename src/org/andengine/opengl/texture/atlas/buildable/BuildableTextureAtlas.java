// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable;

import java.io.IOException;
import java.util.ArrayList;
import org.andengine.opengl.texture.ITextureStateListener;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.atlas.ITextureAtlas;
import org.andengine.opengl.texture.atlas.buildable.builder.ITextureAtlasBuilder;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.opengl.util.GLState;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.opengl.texture.atlas.buildable:
//            IBuildableTextureAtlas

public class BuildableTextureAtlas
    implements IBuildableTextureAtlas
{
    public static class TextureAtlasSourceWithWithLocationCallback
    {

        private final Callback mCallback;
        private final ITextureAtlasSource mTextureAtlasSource;

        public Callback getCallback()
        {
            return mCallback;
        }

        public ITextureAtlasSource getTextureAtlasSource()
        {
            return mTextureAtlasSource;
        }


        public TextureAtlasSourceWithWithLocationCallback(ITextureAtlasSource itextureatlassource, Callback callback)
        {
            mTextureAtlasSource = itextureatlassource;
            mCallback = callback;
        }
    }


    private final ITextureAtlas mTextureAtlas;
    private final ArrayList mTextureAtlasSourcesToPlace = new ArrayList();

    public BuildableTextureAtlas(ITextureAtlas itextureatlas)
    {
        mTextureAtlas = itextureatlas;
    }

    public void addEmptyTextureAtlasSource(int i, int j, int k, int l)
    {
        mTextureAtlas.addEmptyTextureAtlasSource(i, j, k, l);
    }

    public void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j)
    {
        mTextureAtlas.addTextureAtlasSource(itextureatlassource, i, j);
    }

    public void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j, int k)
    {
        mTextureAtlas.addTextureAtlasSource(itextureatlassource, i, j, k);
    }

    public void addTextureAtlasSource(ITextureAtlasSource itextureatlassource, Callback callback)
    {
        mTextureAtlasSourcesToPlace.add(new TextureAtlasSourceWithWithLocationCallback(itextureatlassource, callback));
    }

    public void bind(GLState glstate)
    {
        mTextureAtlas.bind(glstate);
    }

    public void bind(GLState glstate, int i)
    {
        mTextureAtlas.bind(glstate, i);
    }

    public IBuildableTextureAtlas build(ITextureAtlasBuilder itextureatlasbuilder)
        throws org.andengine.opengl.texture.atlas.buildable.builder.ITextureAtlasBuilder.TextureAtlasBuilderException
    {
        itextureatlasbuilder.build(mTextureAtlas, mTextureAtlasSourcesToPlace);
        mTextureAtlasSourcesToPlace.clear();
        mTextureAtlas.setUpdateOnHardwareNeeded(true);
        return this;
    }

    public void clearTextureAtlasSources()
    {
        mTextureAtlas.clearTextureAtlasSources();
        mTextureAtlasSourcesToPlace.clear();
    }

    public int getHardwareTextureID()
    {
        return mTextureAtlas.getHardwareTextureID();
    }

    public int getHeight()
    {
        return mTextureAtlas.getHeight();
    }

    public PixelFormat getPixelFormat()
    {
        return mTextureAtlas.getPixelFormat();
    }

    public org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener getTextureAtlasStateListener()
    {
        return mTextureAtlas.getTextureAtlasStateListener();
    }

    public TextureOptions getTextureOptions()
    {
        return mTextureAtlas.getTextureOptions();
    }

    public volatile ITextureStateListener getTextureStateListener()
    {
        return getTextureStateListener();
    }

    public org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener getTextureStateListener()
    {
        return mTextureAtlas.getTextureStateListener();
    }

    public int getWidth()
    {
        return mTextureAtlas.getWidth();
    }

    public boolean hasTextureAtlasStateListener()
    {
        return mTextureAtlas.hasTextureAtlasStateListener();
    }

    public boolean hasTextureStateListener()
    {
        return mTextureAtlas.hasTextureStateListener();
    }

    public boolean isLoadedToHardware()
    {
        return mTextureAtlas.isLoadedToHardware();
    }

    public boolean isUpdateOnHardwareNeeded()
    {
        return mTextureAtlas.isUpdateOnHardwareNeeded();
    }

    public void load()
    {
        mTextureAtlas.load();
    }

    public void load(GLState glstate)
        throws IOException
    {
        mTextureAtlas.load(glstate);
    }

    public void loadToHardware(GLState glstate)
        throws IOException
    {
        mTextureAtlas.loadToHardware(glstate);
    }

    public void reloadToHardware(GLState glstate)
        throws IOException
    {
        mTextureAtlas.reloadToHardware(glstate);
    }

    public void removeTextureAtlasSource(ITextureAtlasSource itextureatlassource)
    {
        ArrayList arraylist = mTextureAtlasSourcesToPlace;
        int i = -1 + arraylist.size();
        do
        {
            if (i < 0)
            {
                return;
            }
            if (((TextureAtlasSourceWithWithLocationCallback)arraylist.get(i)).mTextureAtlasSource == itextureatlassource)
            {
                arraylist.remove(i);
                mTextureAtlas.setUpdateOnHardwareNeeded(true);
                return;
            }
            i--;
        } while (true);
    }

    public void removeTextureAtlasSource(ITextureAtlasSource itextureatlassource, int i, int j)
    {
        mTextureAtlas.removeTextureAtlasSource(itextureatlassource, i, j);
    }

    public void setNotLoadedToHardware()
    {
        mTextureAtlas.setNotLoadedToHardware();
    }

    public void setTextureAtlasStateListener(org.andengine.opengl.texture.atlas.ITextureAtlas.ITextureAtlasStateListener itextureatlasstatelistener)
    {
        mTextureAtlas.setTextureAtlasStateListener(itextureatlasstatelistener);
    }

    public void setTextureStateListener(ITextureStateListener itexturestatelistener)
    {
        mTextureAtlas.setTextureStateListener(itexturestatelistener);
    }

    public void setUpdateOnHardwareNeeded(boolean flag)
    {
        mTextureAtlas.setUpdateOnHardwareNeeded(flag);
    }

    public void unload()
    {
        mTextureAtlas.unload();
    }

    public void unload(GLState glstate)
    {
        mTextureAtlas.unload(glstate);
    }

    public void unloadFromHardware(GLState glstate)
    {
        mTextureAtlas.unloadFromHardware(glstate);
    }
}
