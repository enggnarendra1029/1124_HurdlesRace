// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture;

import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.texture:
//            ITextureStateListener, ITexture

public class DebugTextureStateListener
    implements ITextureStateListener
{

    public DebugTextureStateListener()
    {
    }

    public void onLoadedToHardware(ITexture itexture)
    {
        Debug.d((new StringBuilder("Texture loaded: ")).append(itexture.toString()).toString());
    }

    public void onUnloadedFromHardware(ITexture itexture)
    {
        Debug.d((new StringBuilder("Texture unloaded: ")).append(itexture.toString()).toString());
    }
}
