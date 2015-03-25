// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape:
//            IBitmapTextureAtlasSourceDecoratorShape

public class ArcBitmapTextureAtlasSourceDecoratorShape
    implements IBitmapTextureAtlasSourceDecoratorShape
{

    private static final float STARTANGLE_DEFAULT = 0F;
    private static final float SWEEPANGLE_DEFAULT = 360F;
    private static final boolean USECENTER_DEFAULT = true;
    private static ArcBitmapTextureAtlasSourceDecoratorShape sDefaultInstance;
    private final RectF mRectF;
    private final float mStartAngle;
    private final float mSweepAngle;
    private final boolean mUseCenter;

    public ArcBitmapTextureAtlasSourceDecoratorShape()
    {
        this(0.0F, 360F, true);
    }

    public ArcBitmapTextureAtlasSourceDecoratorShape(float f, float f1, boolean flag)
    {
        mRectF = new RectF();
        mStartAngle = f;
        mSweepAngle = f1;
        mUseCenter = flag;
    }

    public static ArcBitmapTextureAtlasSourceDecoratorShape getDefaultInstance()
    {
        if (sDefaultInstance == null)
        {
            sDefaultInstance = new ArcBitmapTextureAtlasSourceDecoratorShape();
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
        canvas.drawArc(mRectF, mStartAngle, mSweepAngle, mUseCenter, paint);
    }
}
