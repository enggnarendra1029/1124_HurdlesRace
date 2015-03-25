// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.drawable.shapes.OvalShape;

// Referenced classes of package android.support.v4.widget:
//            CircleImageView

private class mRadialGradient extends OvalShape
{

    private int mCircleDiameter;
    private RadialGradient mRadialGradient;
    private Paint mShadowPaint;
    final CircleImageView this$0;

    public void draw(Canvas canvas, Paint paint)
    {
        int i = getWidth();
        int j = getHeight();
        canvas.drawCircle(i / 2, j / 2, mCircleDiameter / 2 + CircleImageView.access$000(CircleImageView.this), mShadowPaint);
        canvas.drawCircle(i / 2, j / 2, mCircleDiameter / 2, paint);
    }

    public (int i, int j)
    {
        this$0 = CircleImageView.this;
        super();
        mShadowPaint = new Paint();
        CircleImageView.access$002(CircleImageView.this, i);
        mCircleDiameter = j;
        mRadialGradient = new RadialGradient(mCircleDiameter / 2, mCircleDiameter / 2, CircleImageView.access$000(CircleImageView.this), new int[] {
            0x3d000000, 0
        }, null, android.graphics.cess._fld000);
        mShadowPaint.setShader(mRadialGradient);
    }
}
