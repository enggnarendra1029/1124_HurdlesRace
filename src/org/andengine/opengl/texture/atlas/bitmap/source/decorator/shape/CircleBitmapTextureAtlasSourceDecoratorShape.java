// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape:
//            IBitmapTextureAtlasSourceDecoratorShape

public class CircleBitmapTextureAtlasSourceDecoratorShape
    implements IBitmapTextureAtlasSourceDecoratorShape
{

    private static CircleBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;

    public CircleBitmapTextureAtlasSourceDecoratorShape()
    {
    }

    public static CircleBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
    {
        if (sDefaultInstance == null)
        {
            sDefaultInstance = new CircleBitmapTextureAtlasSourceDecoratorShape();
        }
        return sDefaultInstance;
    }

    public void onDecorateBitmap(Canvas canvas, Paint paint, org.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        float f = (float)canvas.getWidth() - textureatlassourcedecoratoroptions.getInsetLeft() - textureatlassourcedecoratoroptions.getInsetRight();
        float f1 = (float)canvas.getHeight() - textureatlassourcedecoratoroptions.getInsetTop() - textureatlassourcedecoratoroptions.getInsetBottom();
        canvas.drawCircle(0.5F * (((float)canvas.getWidth() + textureatlassourcedecoratoroptions.getInsetLeft()) - textureatlassourcedecoratoroptions.getInsetRight()), 0.5F * (((float)canvas.getHeight() + textureatlassourcedecoratoroptions.getInsetTop()) - textureatlassourcedecoratoroptions.getInsetBottom()), Math.min(f * 0.5F, f1 * 0.5F), paint);
    }
}
