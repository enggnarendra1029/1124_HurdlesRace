// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.region;

import org.andengine.opengl.texture.ITexture;

// Referenced classes of package org.andengine.opengl.texture.region:
//            ITextureRegion

public abstract class BaseTextureRegion
    implements ITextureRegion
{

    protected final ITexture mTexture;

    public BaseTextureRegion(ITexture itexture)
    {
        mTexture = itexture;
    }

    public abstract ITextureRegion deepCopy();

    public ITexture getTexture()
    {
        return mTexture;
    }
}
