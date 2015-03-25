// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.IOException;
import org.andengine.opengl.texture.atlas.bitmap.source.AssetBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.ResourceBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlasTextureRegionFactory;
import org.andengine.opengl.texture.region.TextureRegion;
import org.andengine.opengl.texture.region.TextureRegionFactory;
import org.andengine.opengl.texture.region.TiledTextureRegion;
import org.andengine.util.exception.AndEngineRuntimeException;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap:
//            BitmapTextureAtlas, BuildableBitmapTextureAtlas

public class BitmapTextureAtlasTextureRegionFactory
{

    private static String sAssetBasePath = "";

    public BitmapTextureAtlasTextureRegionFactory()
    {
    }

    public static TextureRegion createFromAsset(BitmapTextureAtlas bitmaptextureatlas, Context context, String s, int i, int j)
    {
        return createFromAsset(bitmaptextureatlas, context.getAssets(), s, i, j);
    }

    public static TextureRegion createFromAsset(BitmapTextureAtlas bitmaptextureatlas, AssetManager assetmanager, String s, int i, int j)
    {
        return createFromSource(bitmaptextureatlas, AssetBitmapTextureAtlasSource.create(assetmanager, (new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), i, j);
    }

    public static TextureRegion createFromAsset(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Context context, String s)
    {
        return createFromAsset(buildablebitmaptextureatlas, context.getAssets(), s);
    }

    public static TextureRegion createFromAsset(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Context context, String s, boolean flag)
    {
        return createFromAsset(buildablebitmaptextureatlas, context.getAssets(), s, flag);
    }

    public static TextureRegion createFromAsset(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, AssetManager assetmanager, String s)
    {
        return createFromAsset(buildablebitmaptextureatlas, assetmanager, s, false);
    }

    public static TextureRegion createFromAsset(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, AssetManager assetmanager, String s, boolean flag)
    {
        return createFromSource(buildablebitmaptextureatlas, AssetBitmapTextureAtlasSource.create(assetmanager, (new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), flag);
    }

    public static TextureRegion createFromResource(BitmapTextureAtlas bitmaptextureatlas, Context context, int i, int j, int k)
    {
        return createFromResource(bitmaptextureatlas, context.getResources(), i, j, k);
    }

    public static TextureRegion createFromResource(BitmapTextureAtlas bitmaptextureatlas, Resources resources, int i, int j, int k)
    {
        return createFromSource(bitmaptextureatlas, ResourceBitmapTextureAtlasSource.create(resources, i), j, k);
    }

    public static TextureRegion createFromResource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Context context, int i)
    {
        return createFromResource(buildablebitmaptextureatlas, context.getResources(), i);
    }

    public static TextureRegion createFromResource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Context context, int i, boolean flag)
    {
        return createFromResource(buildablebitmaptextureatlas, context.getResources(), i, flag);
    }

    public static TextureRegion createFromResource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Resources resources, int i)
    {
        return createFromResource(buildablebitmaptextureatlas, resources, i, false);
    }

    public static TextureRegion createFromResource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Resources resources, int i, boolean flag)
    {
        return createFromSource(buildablebitmaptextureatlas, ResourceBitmapTextureAtlasSource.create(resources, i), flag);
    }

    public static TextureRegion createFromSource(BitmapTextureAtlas bitmaptextureatlas, IBitmapTextureAtlasSource ibitmaptextureatlassource, int i, int j)
    {
        return TextureRegionFactory.createFromSource(bitmaptextureatlas, ibitmaptextureatlassource, i, j);
    }

    public static TextureRegion createFromSource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, IBitmapTextureAtlasSource ibitmaptextureatlassource)
    {
        return createFromSource(buildablebitmaptextureatlas, ibitmaptextureatlassource, false);
    }

    public static TextureRegion createFromSource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, IBitmapTextureAtlasSource ibitmaptextureatlassource, boolean flag)
    {
        return BuildableTextureAtlasTextureRegionFactory.createFromSource(buildablebitmaptextureatlas, ibitmaptextureatlassource, flag);
    }

    public static TiledTextureRegion createTiledFromAsset(BitmapTextureAtlas bitmaptextureatlas, Context context, String s, int i, int j, int k, int l)
    {
        return createTiledFromAsset(bitmaptextureatlas, context.getAssets(), s, i, j, k, l);
    }

    public static TiledTextureRegion createTiledFromAsset(BitmapTextureAtlas bitmaptextureatlas, AssetManager assetmanager, String s, int i, int j, int k, int l)
    {
        return createTiledFromSource(bitmaptextureatlas, AssetBitmapTextureAtlasSource.create(assetmanager, (new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), i, j, k, l);
    }

    public static TiledTextureRegion createTiledFromAsset(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Context context, String s, int i, int j)
    {
        return createTiledFromAsset(buildablebitmaptextureatlas, context.getAssets(), s, i, j);
    }

    public static TiledTextureRegion createTiledFromAsset(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, AssetManager assetmanager, String s, int i, int j)
    {
        return createTiledFromSource(buildablebitmaptextureatlas, AssetBitmapTextureAtlasSource.create(assetmanager, (new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), i, j);
    }

    public static TiledTextureRegion createTiledFromAssetDirectory(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, AssetManager assetmanager, String s)
    {
        String as[];
        int i;
        TextureRegion atextureregion[];
        int j;
        try
        {
            as = assetmanager.list((new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString());
        }
        catch (IOException ioexception)
        {
            throw new AndEngineRuntimeException((new StringBuilder("Listing assets subdirectory: '")).append(sAssetBasePath).append(s).append("' failed. Does it exist?").toString(), ioexception);
        }
        i = as.length;
        atextureregion = new TextureRegion[i];
        j = 0;
        do
        {
            if (j >= i)
            {
                return new TiledTextureRegion(buildablebitmaptextureatlas, atextureregion);
            }
            atextureregion[j] = createFromAsset(buildablebitmaptextureatlas, assetmanager, (new StringBuilder(String.valueOf(s))).append("/").append(as[j]).toString());
            j++;
        } while (true);
    }

    public static TiledTextureRegion createTiledFromResource(BitmapTextureAtlas bitmaptextureatlas, Context context, int i, int j, int k, int l, int i1)
    {
        return createTiledFromResource(bitmaptextureatlas, context.getResources(), i, j, k, l, i1);
    }

    public static TiledTextureRegion createTiledFromResource(BitmapTextureAtlas bitmaptextureatlas, Resources resources, int i, int j, int k, int l, int i1)
    {
        return createTiledFromSource(bitmaptextureatlas, ResourceBitmapTextureAtlasSource.create(resources, i), j, k, l, i1);
    }

    public static TiledTextureRegion createTiledFromResource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Context context, int i, int j, int k)
    {
        return createTiledFromResource(buildablebitmaptextureatlas, context.getResources(), i, j, k);
    }

    public static TiledTextureRegion createTiledFromResource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, Resources resources, int i, int j, int k)
    {
        return createTiledFromSource(buildablebitmaptextureatlas, ResourceBitmapTextureAtlasSource.create(resources, i), j, k);
    }

    public static TiledTextureRegion createTiledFromSource(BitmapTextureAtlas bitmaptextureatlas, IBitmapTextureAtlasSource ibitmaptextureatlassource, int i, int j, int k, int l)
    {
        return TextureRegionFactory.createTiledFromSource(bitmaptextureatlas, ibitmaptextureatlassource, i, j, k, l);
    }

    public static TiledTextureRegion createTiledFromSource(BuildableBitmapTextureAtlas buildablebitmaptextureatlas, IBitmapTextureAtlasSource ibitmaptextureatlassource, int i, int j)
    {
        return BuildableTextureAtlasTextureRegionFactory.createTiledFromSource(buildablebitmaptextureatlas, ibitmaptextureatlassource, i, j);
    }

    public static String getAssetBasePath()
    {
        return sAssetBasePath;
    }

    public static void reset()
    {
        setAssetBasePath("");
    }

    public static void setAssetBasePath(String s)
    {
        if (s.endsWith("/") || s.length() == 0)
        {
            sAssetBasePath = s;
            return;
        } else
        {
            throw new IllegalArgumentException("pAssetBasePath must end with '/' or be lenght zero.");
        }
    }

}
