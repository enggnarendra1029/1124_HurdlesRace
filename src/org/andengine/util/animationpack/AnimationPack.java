// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.animationpack;

import org.andengine.util.texturepack.TexturePackLibrary;

// Referenced classes of package org.andengine.util.animationpack:
//            AnimationPackTiledTextureRegionLibrary

public class AnimationPack
{

    private final AnimationPackTiledTextureRegionLibrary mAnimationPackTiledTextureRegionLibrary;
    private final TexturePackLibrary mTexturePackLibrary;

    public AnimationPack(TexturePackLibrary texturepacklibrary, AnimationPackTiledTextureRegionLibrary animationpacktiledtextureregionlibrary)
    {
        mTexturePackLibrary = texturepacklibrary;
        mAnimationPackTiledTextureRegionLibrary = animationpacktiledtextureregionlibrary;
    }

    public AnimationPackTiledTextureRegionLibrary getAnimationPackAnimationDataLibrary()
    {
        return mAnimationPackTiledTextureRegionLibrary;
    }

    public TexturePackLibrary getTexturePackLibrary()
    {
        return mTexturePackLibrary;
    }
}
