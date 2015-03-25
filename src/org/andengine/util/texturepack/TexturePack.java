// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.texturepack;

import org.andengine.opengl.texture.ITexture;

// Referenced classes of package org.andengine.util.texturepack:
//            TexturePackTextureRegionLibrary

public class TexturePack
{

    private final ITexture mTexture;
    private final TexturePackTextureRegionLibrary mTexturePackTextureRegionLibrary;

    public TexturePack(ITexture itexture, TexturePackTextureRegionLibrary texturepacktextureregionlibrary)
    {
        mTexture = itexture;
        mTexturePackTextureRegionLibrary = texturepacktextureregionlibrary;
    }

    public ITexture getTexture()
    {
        return mTexture;
    }

    public TexturePackTextureRegionLibrary getTexturePackTextureRegionLibrary()
    {
        return mTexturePackTextureRegionLibrary;
    }

    public void loadTexture()
    {
        mTexture.load();
    }

    public void unloadTexture()
    {
        mTexture.unload();
    }
}
