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

public class OutlineBitmapTextureAtlasSourceDecorator extends BaseShapeBitmapTextureAtlasSourceDecorator
{

    protected final int mOutlineColor;

    public OutlineBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, null);
    }

    public OutlineBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, textureatlassourcedecoratoroptions);
        mOutlineColor = i;
        mPaint.setStyle(android.graphics.Paint.Style.STROKE);
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

    public OutlineBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return new OutlineBitmapTextureAtlasSourceDecorator(mBitmapTextureAtlasSource, mBitmapTextureAtlasSourceDecoratorShape, mOutlineColor, mTextureAtlasSourceDecoratorOptions);
    }

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }
}
