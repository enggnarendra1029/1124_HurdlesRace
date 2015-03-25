// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Canvas;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            BaseBitmapTextureAtlasSourceDecorator

public abstract class BaseShapeBitmapTextureAtlasSourceDecorator extends BaseBitmapTextureAtlasSourceDecorator
{

    protected final IBitmapTextureAtlasSourceDecoratorShape mBitmapTextureAtlasSourceDecoratorShape;

    public BaseShapeBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, textureatlassourcedecoratoroptions);
        mBitmapTextureAtlasSourceDecoratorShape = ibitmaptextureatlassourcedecoratorshape;
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public volatile BaseBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return deepCopy();
    }

    public abstract BaseShapeBitmapTextureAtlasSourceDecorator deepCopy();

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    protected void onDecorateBitmap(Canvas canvas)
    {
        IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape = mBitmapTextureAtlasSourceDecoratorShape;
        android.graphics.Paint paint = mPaint;
        BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions;
        if (mTextureAtlasSourceDecoratorOptions == null)
        {
            textureatlassourcedecoratoroptions = BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions.DEFAULT;
        } else
        {
            textureatlassourcedecoratoroptions = mTextureAtlasSourceDecoratorOptions;
        }
        ibitmaptextureatlassourcedecoratorshape.onDecorateBitmap(canvas, paint, textureatlassourcedecoratoroptions);
    }
}
