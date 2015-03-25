// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.animationpack;

import java.util.HashMap;

// Referenced classes of package org.andengine.util.animationpack:
//            AnimationPackTiledTextureRegion

public class AnimationPackTiledTextureRegionLibrary
{

    private final HashMap mAnimationPackTiledTextureRegionMapping = new HashMap();

    public AnimationPackTiledTextureRegionLibrary()
    {
    }

    public AnimationPackTiledTextureRegion get(String s)
    {
        return (AnimationPackTiledTextureRegion)mAnimationPackTiledTextureRegionMapping.get(s);
    }

    public void put(AnimationPackTiledTextureRegion animationpacktiledtextureregion)
    {
        mAnimationPackTiledTextureRegionMapping.put(animationpacktiledtextureregion.getAnimationName(), animationpacktiledtextureregion);
    }
}
