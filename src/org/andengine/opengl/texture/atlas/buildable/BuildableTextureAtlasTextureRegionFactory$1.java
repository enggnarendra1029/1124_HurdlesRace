// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable;

import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.opengl.texture.region.TextureRegion;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.opengl.texture.atlas.buildable:
//            BuildableTextureAtlasTextureRegionFactory

class val.textureRegion
    implements Callback
{

    private final TextureRegion val$textureRegion;

    public volatile void onCallback(Object obj)
    {
        onCallback((ITextureAtlasSource)obj);
    }

    public void onCallback(ITextureAtlasSource itextureatlassource)
    {
        val$textureRegion.setTexturePosition(itextureatlassource.getTextureX(), itextureatlassource.getTextureY());
    }

    ()
    {
        val$textureRegion = textureregion;
        super();
    }
}
