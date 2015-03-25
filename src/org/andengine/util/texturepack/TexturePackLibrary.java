// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.texturepack;

import java.util.HashMap;

// Referenced classes of package org.andengine.util.texturepack:
//            TexturePackTextureRegion, TexturePack, TexturePackTextureRegionLibrary

public class TexturePackLibrary
{

    private final HashMap mTexturePackMapping = new HashMap();
    private final HashMap mTexturePackTextureRegionSourceMapping = new HashMap();

    public TexturePackLibrary()
    {
    }

    public TexturePackTextureRegion getTexturePackTextureRegion(String s)
    {
        return (TexturePackTextureRegion)mTexturePackTextureRegionSourceMapping.get(s);
    }

    public void put(String s, TexturePack texturepack)
    {
        mTexturePackMapping.put(s, texturepack);
        mTexturePackTextureRegionSourceMapping.putAll(texturepack.getTexturePackTextureRegionLibrary().getSourceMapping());
    }
}
