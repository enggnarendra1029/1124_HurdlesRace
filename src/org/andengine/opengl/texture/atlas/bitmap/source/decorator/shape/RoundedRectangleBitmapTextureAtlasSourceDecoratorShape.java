// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape:
//            IBitmapTextureAtlasSourceDecoratorShape

public class RoundedRectangleBitmapTextureAtlasSourceDecoratorShape
    implements IBitmapTextureAtlasSourceDecoratorShape
{

    private static final float CORNER_RADIUS_DEFAULT = 1F;
    private static RoundedRectangleBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;
    private final float mCornerRadiusX;
    private final float mCornerRadiusY;
    private final RectF mRectF;

    public RoundedRectangleBitmapTextureAtlasSourceDecoratorShape()
    {
        this(1.0F, 1.0F);
    }

    public RoundedRectangleBitmapTextureAtlasSourceDecoratorShape(float f, float f1)
    {
        mRectF = new RectF();
        mCornerRadiusX = f;
        mCornerRadiusY = f1;
    }

    public static RoundedRectangleBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
    {
        if (sDefaultInstance == null)
        {
            sDefaultInstance = new RoundedRectangleBitmapTextureAtlasSourceDecoratorShape();
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
        canvas.drawRoundRect(mRectF, mCornerRadiusX, mCornerRadiusY, paint);
    }
}
