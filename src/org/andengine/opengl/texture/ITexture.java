// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture;

import java.io.IOException;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.opengl.texture:
//            PixelFormat, TextureOptions, ITextureStateListener

public interface ITexture
{

    public abstract void bind(GLState glstate);

    public abstract void bind(GLState glstate, int i);

    public abstract int getHardwareTextureID();

    public abstract int getHeight();

    public abstract PixelFormat getPixelFormat();

    public abstract TextureOptions getTextureOptions();

    public abstract ITextureStateListener getTextureStateListener();

    public abstract int getWidth();

    public abstract boolean hasTextureStateListener();

    public abstract boolean isLoadedToHardware();

    public abstract boolean isUpdateOnHardwareNeeded();

    public abstract void load();

    public abstract void load(GLState glstate)
        throws IOException;

    public abstract void loadToHardware(GLState glstate)
        throws IOException;

    public abstract void reloadToHardware(GLState glstate)
        throws IOException;

    public abstract void setNotLoadedToHardware();

    public abstract void setTextureStateListener(ITextureStateListener itexturestatelistener);

    public abstract void setUpdateOnHardwareNeeded(boolean flag);

    public abstract void unload();

    public abstract void unload(GLState glstate);

    public abstract void unloadFromHardware(GLState glstate);
}
