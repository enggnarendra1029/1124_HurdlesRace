// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;

import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            ColorSwapBitmapTextureAtlasSourceDecorator

public class ColorKeyBitmapTextureAtlasSourceDecorator extends ColorSwapBitmapTextureAtlasSourceDecorator
{

    public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, Color.TRANSPARENT_ARGB_PACKED_INT);
    }

    public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, j, Color.TRANSPARENT_ARGB_PACKED_INT);
    }

    public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, j, Color.TRANSPARENT_ARGB_PACKED_INT, textureatlassourcedecoratoroptions);
    }

    public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, Color.TRANSPARENT_ARGB_PACKED_INT, textureatlassourcedecoratoroptions);
    }

    public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, Color color)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, color, Color.TRANSPARENT);
    }

    public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, Color color, int i)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, color, i, Color.TRANSPARENT);
    }

    public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, Color color, int i, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, color, i, Color.TRANSPARENT, textureatlassourcedecoratoroptions);
    }

    public ColorKeyBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, Color color, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, color, Color.TRANSPARENT, textureatlassourcedecoratoroptions);
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public ColorKeyBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return new ColorKeyBitmapTextureAtlasSourceDecorator(mBitmapTextureAtlasSource, mBitmapTextureAtlasSourceDecoratorShape, mColorKeyColorARGBPackedInt, mTolerance, mTextureAtlasSourceDecoratorOptions);
    }

    public volatile ColorSwapBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return deepCopy();
    }

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }
}
