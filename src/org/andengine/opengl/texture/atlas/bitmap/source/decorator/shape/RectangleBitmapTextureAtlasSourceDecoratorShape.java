// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape:
//            IBitmapTextureAtlasSourceDecoratorShape

public class RectangleBitmapTextureAtlasSourceDecoratorShape
    implements IBitmapTextureAtlasSourceDecoratorShape
{

    private static RectangleBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;

    public RectangleBitmapTextureAtlasSourceDecoratorShape()
    {
    }

    public static RectangleBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
    {
        if (sDefaultInstance == null)
        {
            sDefaultInstance = new RectangleBitmapTextureAtlasSourceDecoratorShape();
        }
        return sDefaultInstance;
    }

    public void onDecorateBitmap(Canvas canvas, Paint paint, org.andengine.opengl.texture.atlas.bitmap.source.decorator.BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        canvas.drawRect(textureatlassourcedecoratoroptions.getInsetLeft(), textureatlassourcedecoratoroptions.getInsetTop(), (float)canvas.getWidth() - textureatlassourcedecoratoroptions.getInsetRight(), (float)canvas.getHeight() - textureatlassourcedecoratoroptions.getInsetBottom(), paint);
    }
}
