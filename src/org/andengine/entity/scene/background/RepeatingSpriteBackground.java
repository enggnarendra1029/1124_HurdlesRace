// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background;

import org.andengine.entity.sprite.Sprite;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.bitmap.BitmapTextureFormat;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.scene.background:
//            SpriteBackground

public class RepeatingSpriteBackground extends SpriteBackground
{

    private BitmapTextureAtlas mBitmapTextureAtlas;
    private final float mScale;

    public RepeatingSpriteBackground(float f, float f1, TextureManager texturemanager, IBitmapTextureAtlasSource ibitmaptextureatlassource, float f2, VertexBufferObjectManager vertexbufferobjectmanager)
        throws IllegalArgumentException
    {
        super(null);
        mScale = f2;
        mEntity = loadSprite(f, f1, texturemanager, ibitmaptextureatlassource, vertexbufferobjectmanager);
    }

    public RepeatingSpriteBackground(float f, float f1, TextureManager texturemanager, IBitmapTextureAtlasSource ibitmaptextureatlassource, VertexBufferObjectManager vertexbufferobjectmanager)
        throws IllegalArgumentException
    {
        this(f, f1, texturemanager, ibitmaptextureatlassource, 1.0F, vertexbufferobjectmanager);
    }

    private Sprite loadSprite(float f, float f1, TextureManager texturemanager, IBitmapTextureAtlasSource ibitmaptextureatlassource, VertexBufferObjectManager vertexbufferobjectmanager)
        throws IllegalArgumentException
    {
        mBitmapTextureAtlas = new BitmapTextureAtlas(texturemanager, ibitmaptextureatlassource.getTextureWidth(), ibitmaptextureatlassource.getTextureHeight(), BitmapTextureFormat.RGBA_8888, TextureOptions.REPEATING_NEAREST);
        org.andengine.opengl.texture.region.TextureRegion textureregion = BitmapTextureAtlasTextureRegionFactory.createFromSource(mBitmapTextureAtlas, ibitmaptextureatlassource, 0, 0);
        int i = Math.round(f / mScale);
        int j = Math.round(f1 / mScale);
        textureregion.setTextureWidth(i);
        textureregion.setTextureHeight(j);
        mBitmapTextureAtlas.load();
        Sprite sprite = new Sprite(0.0F, 0.0F, i, j, textureregion, vertexbufferobjectmanager);
        sprite.setScaleCenter(0.0F, 0.0F);
        sprite.setScale(mScale);
        return sprite;
    }

    public BitmapTextureAtlas getBitmapTextureAtlas()
    {
        return mBitmapTextureAtlas;
    }
}
