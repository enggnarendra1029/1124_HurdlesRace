// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.AvoidXfermode;
import android.graphics.Paint;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            BaseShapeBitmapTextureAtlasSourceDecorator

public class ColorSwapBitmapTextureAtlasSourceDecorator extends BaseShapeBitmapTextureAtlasSourceDecorator
{

    private static final int TOLERANCE_DEFAULT;
    protected final int mColorKeyColorARGBPackedInt;
    protected final int mColorSwapColorARGBPackedInt;
    protected final int mTolerance;

    public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, 0, j, null);
    }

    public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j, int k)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, j, k, null);
    }

    public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j, int k, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, textureatlassourcedecoratoroptions);
        mColorKeyColorARGBPackedInt = i;
        mTolerance = j;
        mColorSwapColorARGBPackedInt = k;
        mPaint.setXfermode(new AvoidXfermode(i, j, android.graphics.AvoidXfermode.Mode.TARGET));
        mPaint.setColor(k);
    }

    public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, 0, j, textureatlassourcedecoratoroptions);
    }

    public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, Color color, int i, Color color1)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, color.getARGBPackedInt(), i, color1.getARGBPackedInt());
    }

    public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, Color color, int i, Color color1, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, color.getARGBPackedInt(), i, color1.getARGBPackedInt(), textureatlassourcedecoratoroptions);
    }

    public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, Color color, Color color1)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, color.getARGBPackedInt(), color1.getARGBPackedInt());
    }

    public ColorSwapBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, Color color, Color color1, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, color.getARGBPackedInt(), color1.getARGBPackedInt(), textureatlassourcedecoratoroptions);
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public volatile BaseShapeBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return deepCopy();
    }

    public ColorSwapBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return new ColorSwapBitmapTextureAtlasSourceDecorator(mBitmapTextureAtlasSource, mBitmapTextureAtlasSourceDecoratorShape, mColorKeyColorARGBPackedInt, mTolerance, mColorSwapColorARGBPackedInt, mTextureAtlasSourceDecoratorOptions);
    }

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }
}
