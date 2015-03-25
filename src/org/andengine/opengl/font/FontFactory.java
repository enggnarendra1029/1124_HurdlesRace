// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.andengine.opengl.texture.bitmap.BitmapTextureFormat;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.opengl.font:
//            Font, StrokeFont, FontManager

public class FontFactory
{

    private static final boolean ANTIALIAS_DEFAULT = true;
    private static final int COLOR_DEFAULT;
    private static String sAssetBasePath = "";

    public FontFactory()
    {
    }

    public static Font create(FontManager fontmanager, ITexture itexture, float f)
    {
        return create(fontmanager, itexture, f, true, COLOR_DEFAULT);
    }

    public static Font create(FontManager fontmanager, ITexture itexture, float f, int i)
    {
        return create(fontmanager, itexture, f, true, i);
    }

    public static Font create(FontManager fontmanager, ITexture itexture, float f, boolean flag)
    {
        return create(fontmanager, itexture, f, flag, COLOR_DEFAULT);
    }

    public static Font create(FontManager fontmanager, ITexture itexture, float f, boolean flag, int i)
    {
        return create(fontmanager, itexture, Typeface.create(Typeface.DEFAULT, 0), f, flag, i);
    }

    public static Font create(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, int i)
    {
        return new Font(fontmanager, itexture, typeface, f, flag, i);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, float f, boolean flag, int k)
    {
        return create(fontmanager, texturemanager, i, j, TextureOptions.DEFAULT, f, flag, k);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, Typeface typeface, float f)
    {
        return create(fontmanager, texturemanager, i, j, TextureOptions.DEFAULT, typeface, f, true, COLOR_DEFAULT);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, Typeface typeface, float f, int k)
    {
        return create(fontmanager, texturemanager, i, j, TextureOptions.DEFAULT, typeface, f, true, k);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, Typeface typeface, float f, boolean flag)
    {
        return create(fontmanager, texturemanager, i, j, TextureOptions.DEFAULT, typeface, f, flag, COLOR_DEFAULT);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, Typeface typeface, float f, boolean flag, int k)
    {
        return create(fontmanager, texturemanager, i, j, TextureOptions.DEFAULT, typeface, f, flag, k);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, TextureOptions textureoptions, float f, boolean flag, int k)
    {
        return create(fontmanager, texturemanager, i, j, textureoptions, Typeface.create(Typeface.DEFAULT, 0), f, flag, k);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, TextureOptions textureoptions, Typeface typeface, float f)
    {
        return create(fontmanager, texturemanager, i, j, textureoptions, typeface, f, true, COLOR_DEFAULT);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, TextureOptions textureoptions, Typeface typeface, float f, int k)
    {
        return create(fontmanager, texturemanager, i, j, textureoptions, typeface, f, true, k);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, TextureOptions textureoptions, Typeface typeface, float f, boolean flag)
    {
        return create(fontmanager, texturemanager, i, j, textureoptions, typeface, f, flag, COLOR_DEFAULT);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, TextureOptions textureoptions, Typeface typeface, float f, boolean flag, 
            int k)
    {
        return create(fontmanager, texturemanager, i, j, BitmapTextureFormat.RGBA_8888, textureoptions, typeface, f, flag, k);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, Typeface typeface, float f)
    {
        return create(fontmanager, texturemanager, i, j, bitmaptextureformat, textureoptions, typeface, f, true, COLOR_DEFAULT);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, Typeface typeface, float f, 
            int k)
    {
        return create(fontmanager, texturemanager, i, j, bitmaptextureformat, textureoptions, typeface, f, true, k);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, Typeface typeface, float f, 
            boolean flag)
    {
        return create(fontmanager, texturemanager, i, j, bitmaptextureformat, textureoptions, typeface, f, flag, COLOR_DEFAULT);
    }

    public static Font create(FontManager fontmanager, TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, Typeface typeface, float f, 
            boolean flag, int k)
    {
        return create(fontmanager, ((ITexture) (new BitmapTextureAtlas(texturemanager, i, j, bitmaptextureformat, textureoptions))), typeface, f, flag, k);
    }

    public static Font createFromAsset(FontManager fontmanager, ITexture itexture, AssetManager assetmanager, String s, float f, boolean flag, int i)
    {
        return new Font(fontmanager, itexture, Typeface.createFromAsset(assetmanager, (new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), f, flag, i);
    }

    public static Font createFromAsset(FontManager fontmanager, TextureManager texturemanager, int i, int j, AssetManager assetmanager, String s, float f, boolean flag, 
            int k)
    {
        return createFromAsset(fontmanager, texturemanager, i, j, TextureOptions.DEFAULT, assetmanager, s, f, flag, k);
    }

    public static Font createFromAsset(FontManager fontmanager, TextureManager texturemanager, int i, int j, TextureOptions textureoptions, AssetManager assetmanager, String s, float f, 
            boolean flag, int k)
    {
        return createFromAsset(fontmanager, texturemanager, i, j, BitmapTextureFormat.RGBA_8888, textureoptions, assetmanager, s, f, flag, k);
    }

    public static Font createFromAsset(FontManager fontmanager, TextureManager texturemanager, int i, int j, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, AssetManager assetmanager, String s, 
            float f, boolean flag, int k)
    {
        Font font = new Font(fontmanager, new BitmapTextureAtlas(texturemanager, i, j, bitmaptextureformat, textureoptions), Typeface.createFromAsset(assetmanager, (new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), f, flag, k);
        return font;
    }

    public static StrokeFont createStroke(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, int i, float f1, int j)
    {
        return new StrokeFont(fontmanager, itexture, typeface, f, flag, i, f1, j);
    }

    public static StrokeFont createStroke(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, int i, float f1, int j, 
            boolean flag1)
    {
        return new StrokeFont(fontmanager, itexture, typeface, f, flag, i, f1, j, flag1);
    }

    public static StrokeFont createStrokeFromAsset(FontManager fontmanager, ITexture itexture, AssetManager assetmanager, String s, float f, boolean flag, int i, float f1, 
            int j)
    {
        return new StrokeFont(fontmanager, itexture, Typeface.createFromAsset(assetmanager, (new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), f, flag, i, f1, j);
    }

    public static StrokeFont createStrokeFromAsset(FontManager fontmanager, ITexture itexture, AssetManager assetmanager, String s, float f, boolean flag, int i, float f1, 
            int j, boolean flag1)
    {
        return new StrokeFont(fontmanager, itexture, Typeface.createFromAsset(assetmanager, (new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), f, flag, i, f1, j, flag1);
    }

    public static String getAssetBasePath()
    {
        return sAssetBasePath;
    }

    public static void onCreate()
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
            throw new IllegalStateException("pAssetBasePath must end with '/' or be lenght zero.");
        }
    }

    static 
    {
        COLOR_DEFAULT = Color.BLACK_ARGB_PACKED_INT;
    }
}
