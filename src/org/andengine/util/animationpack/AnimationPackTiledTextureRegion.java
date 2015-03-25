// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.animationpack;

import org.andengine.entity.sprite.AnimationData;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.texture.region.TiledTextureRegion;

public class AnimationPackTiledTextureRegion extends TiledTextureRegion
{

    private final AnimationData mAnimationData;
    private final String mAnimationName;

    public transient AnimationPackTiledTextureRegion(String s, long al[], int i, ITexture itexture, ITextureRegion aitextureregion[])
    {
        super(itexture, aitextureregion);
        mAnimationName = s;
        int j = al.length;
        int ai[] = new int[j];
        int k = 0;
        do
        {
            if (k >= j)
            {
                mAnimationData = new AnimationData(al, ai, i);
                return;
            }
            ai[k] = k;
            k++;
        } while (true);
    }

    public AnimationData getAnimationData()
    {
        return mAnimationData;
    }

    public String getAnimationName()
    {
        return mAnimationName;
    }
}
