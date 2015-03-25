// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Paint;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            BaseShapeBitmapTextureAtlasSourceDecorator

public class FillBitmapTextureAtlasSourceDecorator extends BaseShapeBitmapTextureAtlasSourceDecorator
{

    protected final int mFillColor;

    public FillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, null);
    }

    public FillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, textureatlassourcedecoratoroptions);
        mFillColor = i;
        mPaint.setStyle(android.graphics.Paint.Style.FILL);
        mPaint.setColor(i);
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public volatile BaseShapeBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return deepCopy();
    }

    public FillBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return new FillBitmapTextureAtlasSourceDecorator(mBitmapTextureAtlasSource, mBitmapTextureAtlasSourceDecoratorShape, mFillColor, mTextureAtlasSourceDecoratorOptions);
    }

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }
}
