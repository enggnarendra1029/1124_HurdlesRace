// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

abstract class DrawerArrowDrawable extends Drawable
{

    private static final float ARROW_HEAD_ANGLE = (float)Math.toRadians(45D);
    private final float mBarGap;
    private final float mBarSize;
    private final float mBarThickness;
    private final float mMiddleArrowSize;
    private final Paint mPaint = new Paint();
    private final Path mPath = new Path();
    private float mProgress;
    private final int mSize;
    private final boolean mSpin;
    private final float mTopBottomArrowSize;
    private boolean mVerticalMirror;

    DrawerArrowDrawable(Context context)
    {
        mVerticalMirror = false;
        TypedArray typedarray = context.getTheme().obtainStyledAttributes(null, android.support.v7.appcompat.R.styleable.DrawerArrowToggle, android.support.v7.appcompat.R.attr.drawerArrowStyle, android.support.v7.appcompat.R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        mPaint.setAntiAlias(true);
        mPaint.setColor(typedarray.getColor(android.support.v7.appcompat.R.styleable.DrawerArrowToggle_color, 0));
        mSize = typedarray.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.DrawerArrowToggle_drawableSize, 0);
        mBarSize = typedarray.getDimension(android.support.v7.appcompat.R.styleable.DrawerArrowToggle_barSize, 0.0F);
        mTopBottomArrowSize = typedarray.getDimension(android.support.v7.appcompat.R.styleable.DrawerArrowToggle_topBottomBarArrowSize, 0.0F);
        mBarThickness = typedarray.getDimension(android.support.v7.appcompat.R.styleable.DrawerArrowToggle_thickness, 0.0F);
        mBarGap = typedarray.getDimension(android.support.v7.appcompat.R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0F);
        mSpin = typedarray.getBoolean(android.support.v7.appcompat.R.styleable.DrawerArrowToggle_spinBars, true);
        mMiddleArrowSize = typedarray.getDimension(android.support.v7.appcompat.R.styleable.DrawerArrowToggle_middleBarArrowSize, 0.0F);
        typedarray.recycle();
        mPaint.setStyle(android.graphics.Paint.Style.STROKE);
        mPaint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        mPaint.setStrokeCap(android.graphics.Paint.Cap.SQUARE);
        mPaint.setStrokeWidth(mBarThickness);
    }

    private static float lerp(float f, float f1, float f2)
    {
        return f + f2 * (f1 - f);
    }

    public void draw(Canvas canvas)
    {
        Rect rect;
        boolean flag;
        rect = getBounds();
        flag = isLayoutRtl();
        float f = lerp(mBarSize, mTopBottomArrowSize, mProgress);
        float f1 = lerp(mBarSize, mMiddleArrowSize, mProgress);
        float f2 = lerp(0.0F, mBarThickness / 2.0F, mProgress);
        float f3 = lerp(0.0F, ARROW_HEAD_ANGLE, mProgress);
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        if (flag)
        {
            f4 = 0.0F;
        } else
        {
            f4 = -180F;
        }
        if (flag)
        {
            f5 = 180F;
        } else
        {
            f5 = 0.0F;
        }
        f6 = lerp(f4, f5, mProgress);
        f7 = lerp(mBarGap + mBarThickness, 0.0F, mProgress);
        mPath.rewind();
        f8 = -f1 / 2.0F;
        mPath.moveTo(f8 + f2, 0.0F);
        mPath.rLineTo(f1 - f2, 0.0F);
        f9 = Math.round((double)f * Math.cos(f3));
        f10 = Math.round((double)f * Math.sin(f3));
        mPath.moveTo(f8, f7);
        mPath.rLineTo(f9, f10);
        mPath.moveTo(f8, -f7);
        mPath.rLineTo(f9, -f10);
        mPath.moveTo(0.0F, 0.0F);
        mPath.close();
        canvas.save();
        if (!mSpin) goto _L2; else goto _L1
_L1:
        int i;
        if (flag ^ mVerticalMirror)
        {
            i = -1;
        } else
        {
            i = 1;
        }
        canvas.rotate(f6 * (float)i, rect.centerX(), rect.centerY());
_L4:
        canvas.translate(rect.centerX(), rect.centerY());
        canvas.drawPath(mPath, mPaint);
        canvas.restore();
        return;
_L2:
        if (flag)
        {
            canvas.rotate(180F, rect.centerX(), rect.centerY());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getIntrinsicHeight()
    {
        return mSize;
    }

    public int getIntrinsicWidth()
    {
        return mSize;
    }

    public int getOpacity()
    {
        return -3;
    }

    public float getProgress()
    {
        return mProgress;
    }

    public boolean isAutoMirrored()
    {
        return true;
    }

    abstract boolean isLayoutRtl();

    public void setAlpha(int i)
    {
        mPaint.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        mPaint.setColorFilter(colorfilter);
    }

    public void setProgress(float f)
    {
        mProgress = f;
        invalidateSelf();
    }

    protected void setVerticalMirror(boolean flag)
    {
        mVerticalMirror = flag;
    }

}
