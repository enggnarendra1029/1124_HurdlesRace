// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape:
//            IBitmapTextureAtlasSourceDecoratorShape

public class EllipseBitmapTextureAtlasSourceDecoratorShape
    implements IBitmapTextureAtlasSourceDecoratorShape
{

    private static EllipseBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;
    private final RectF mRectF = new RectF();

    public EllipseBitmapTextureAtlasSourceDecoratorShape()
    {
    }

    public static EllipseBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
    {
        if (sDefaultInstance == null)
        {
            sDefaultInstance = new EllipseBitmapTextureAtlasSourceDecoratorShape();
        }
        return sDefaultInstance;
    }

    public void onDecorateBitmap(Canvas canvas, Paint paint, org.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        float f = textureatlassourcedecoratoroptions.getInsetLeft();
        float f1 = textureatlassourcedecoratoroptions.getInsetTop();
        float f2 = (float)canvas.getWidth() - textureatlassourcedecoratoroptions.getInsetRight();
        float f3 = (float)canvas.getHeight() - textureatlassourcedecoratoroptions.getInsetBottom();
        mRectF.set(f, f1, f2, f3);
        canvas.drawOval(mRectF, paint);
    }
}
