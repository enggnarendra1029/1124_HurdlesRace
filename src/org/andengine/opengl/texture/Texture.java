// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture;

import java.io.IOException;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.opengl.texture:
//            ITexture, TextureManager, TextureOptions, ITextureStateListener, 
//            PixelFormat

public abstract class Texture
    implements ITexture
{

    public static final int HARDWARE_TEXTURE_ID_INVALID = -1;
    protected int mHardwareTextureID;
    protected final PixelFormat mPixelFormat;
    protected final TextureManager mTextureManager;
    protected final TextureOptions mTextureOptions;
    protected ITextureStateListener mTextureStateListener;
    protected boolean mUpdateOnHardwareNeeded;

    public Texture(TextureManager texturemanager, PixelFormat pixelformat, TextureOptions textureoptions, ITextureStateListener itexturestatelistener)
        throws IllegalArgumentException
    {
        mHardwareTextureID = -1;
        mUpdateOnHardwareNeeded = false;
        mTextureManager = texturemanager;
        mPixelFormat = pixelformat;
        mTextureOptions = textureoptions;
        mTextureStateListener = itexturestatelistener;
    }

    public void bind(GLState glstate)
    {
        glstate.bindTexture(mHardwareTextureID);
    }

    public void bind(GLState glstate, int i)
    {
        glstate.activeTexture(i);
        glstate.bindTexture(mHardwareTextureID);
    }

    public int getHardwareTextureID()
    {
        return mHardwareTextureID;
    }

    public PixelFormat getPixelFormat()
    {
        return mPixelFormat;
    }

    public TextureOptions getTextureOptions()
    {
        return mTextureOptions;
    }

    public ITextureStateListener getTextureStateListener()
    {
        return mTextureStateListener;
    }

    public boolean hasTextureStateListener()
    {
        return mTextureStateListener != null;
    }

    public boolean isLoadedToHardware()
    {
        return mHardwareTextureID != -1;
    }

    public boolean isUpdateOnHardwareNeeded()
    {
        return mUpdateOnHardwareNeeded;
    }

    public void load()
    {
        mTextureManager.loadTexture(this);
    }

    public void load(GLState glstate)
        throws IOException
    {
        mTextureManager.loadTexture(glstate, this);
    }

    public void loadToHardware(GLState glstate)
        throws IOException
    {
        mHardwareTextureID = glstate.generateTexture();
        glstate.bindTexture(mHardwareTextureID);
        writeTextureToHardware(glstate);
        mTextureOptions.apply();
        mUpdateOnHardwareNeeded = false;
        if (mTextureStateListener != null)
        {
            mTextureStateListener.onLoadedToHardware(this);
        }
    }

    public void reloadToHardware(GLState glstate)
        throws IOException
    {
        unloadFromHardware(glstate);
        loadToHardware(glstate);
    }

    public void setNotLoadedToHardware()
    {
        mHardwareTextureID = -1;
    }

    public void setTextureStateListener(ITextureStateListener itexturestatelistener)
    {
        mTextureStateListener = itexturestatelistener;
    }

    public void setUpdateOnHardwareNeeded(boolean flag)
    {
        mUpdateOnHardwareNeeded = flag;
    }

    public void unload()
    {
        mTextureManager.unloadTexture(this);
    }

    public void unload(GLState glstate)
    {
        mTextureManager.unloadTexture(glstate, this);
    }

    public void unloadFromHardware(GLState glstate)
    {
        glstate.deleteTexture(mHardwareTextureID);
        mHardwareTextureID = -1;
        if (mTextureStateListener != null)
        {
            mTextureStateListener.onUnloadedFromHardware(this);
        }
    }

    protected abstract void writeTextureToHardware(GLState glstate)
        throws IOException;
}
