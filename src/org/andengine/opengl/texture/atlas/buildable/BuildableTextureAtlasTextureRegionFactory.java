// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable;

import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.opengl.texture.region.TextureRegion;
import org.andengine.opengl.texture.region.TiledTextureRegion;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.opengl.texture.atlas.buildable:
//            BuildableTextureAtlas

public class BuildableTextureAtlasTextureRegionFactory
{

    public BuildableTextureAtlasTextureRegionFactory()
    {
    }

    public static TextureRegion createFromSource(BuildableTextureAtlas buildabletextureatlas, ITextureAtlasSource itextureatlassource, boolean flag)
    {
        final TextureRegion textureRegion = new TextureRegion(buildabletextureatlas, 0.0F, 0.0F, itextureatlassource.getTextureWidth(), itextureatlassource.getTextureHeight(), flag);
        buildabletextureatlas.addTextureAtlasSource(itextureatlassource, new Callback() {

            private final TextureRegion val$textureRegion;

            public volatile void onCallback(Object obj)
            {
                onCallback((ITextureAtlasSource)obj);
            }

            public void onCallback(ITextureAtlasSource itextureatlassource1)
            {
                textureRegion.setTexturePosition(itextureatlassource1.getTextureX(), itextureatlassource1.getTextureY());
            }

            
            {
                textureRegion = textureregion;
                super();
            }
        });
        return textureRegion;
    }

    public static TiledTextureRegion createTiledFromSource(BuildableTextureAtlas buildabletextureatlas, final ITextureAtlasSource pTextureAtlasSource, final int pTileColumns, final int pTileRows)
    {
        final TiledTextureRegion tiledTextureRegion = TiledTextureRegion.create(buildabletextureatlas, 0, 0, pTextureAtlasSource.getTextureWidth(), pTextureAtlasSource.getTextureHeight(), pTileColumns, pTileRows);
        buildabletextureatlas.addTextureAtlasSource(pTextureAtlasSource, new Callback() {

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
                i = pTextureAtlasSource.getTextureWidth() / pTileColumns;
                j = pTextureAtlasSource.getTextureHeight() / pTileRows;
                k = 0;
_L2:
                if (k >= pTileColumns)
                {
                    return;
                }
                int l = 0;
                do
                {
label0:
                    {
                        if (l < pTileRows)
                        {
                            break label0;
                        }
                        k++;
                    }
                    if (true)
                    {
                        continue;
                    }
                    int i1 = k + l * pTileColumns;
                    int j1 = itextureatlassource.getTextureX() + k * i;
                    int k1 = itextureatlassource.getTextureY() + l * j;
                    tiledTextureRegion.setTexturePosition(i1, j1, k1);
                    l++;
                } while (true);
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                pTextureAtlasSource = itextureatlassource;
                pTileColumns = i;
                pTileRows = j;
                tiledTextureRegion = tiledtextureregion;
                super();
            }
        });
        return tiledTextureRegion;
    }
}
