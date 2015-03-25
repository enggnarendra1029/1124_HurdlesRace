// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable;

import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.opengl.texture.region.TiledTextureRegion;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.opengl.texture.atlas.buildable:
//            BuildableTextureAtlasTextureRegionFactory

class val.tiledTextureRegion
    implements Callback
{

    private final ITextureAtlasSource val$pTextureAtlasSource;
    private final int val$pTileColumns;
    private final int val$pTileRows;
    private final TiledTextureRegion val$tiledTextureRegion;

    public volatile void onCallback(Object obj)
    {
        onCallback((ITextureAtlasSource)obj);
    }

    public void onCallback(ITextureAtlasSource itextureatlassource)
    {
        int i;
        int j;
        int k;
        i = val$pTextureAtlasSource.getTextureWidth() / val$pTileColumns;
        j = val$pTextureAtlasSource.getTextureHeight() / val$pTileRows;
        k = 0;
_L2:
        if (k >= val$pTileColumns)
        {
            return;
        }
        int l = 0;
        do
        {
label0:
            {
                if (l < val$pTileRows)
                {
                    break label0;
                }
                k++;
            }
            if (true)
            {
                continue;
            }
            int i1 = k + l * val$pTileColumns;
            int j1 = itextureatlassource.getTextureX() + k * i;
            int k1 = itextureatlassource.getTextureY() + l * j;
            val$tiledTextureRegion.setTexturePosition(i1, j1, k1);
            l++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    ()
    {
        val$pTextureAtlasSource = itextureatlassource;
        val$pTileColumns = i;
        val$pTileRows = j;
        val$tiledTextureRegion = tiledtextureregion;
        super();
    }
}
