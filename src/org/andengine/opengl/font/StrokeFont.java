// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.FloatMath;
import org.andengine.opengl.texture.ITexture;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.opengl.font:
//            Font, FontManager

public class StrokeFont extends Font
{

    private final boolean mStrokeOnly;
    private final Paint mStrokePaint;
    private final float mStrokeWidth;

    public StrokeFont(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, int i, float f1, 
            int j)
    {
        this(fontmanager, itexture, typeface, f, flag, i, f1, j, false);
    }

    public StrokeFont(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, int i, float f1, 
            int j, boolean flag1)
    {
        super(fontmanager, itexture, typeface, f, flag, i);
        mStrokeWidth = f1;
        mStrokePaint = new Paint();
        mStrokePaint.setTypeface(typeface);
        mStrokePaint.setStyle(android.graphics.Paint.Style.STROKE);
        mStrokePaint.setStrokeWidth(f1);
        mStrokePaint.setColor(j);
        mStrokePaint.setTextSize(f);
        mStrokePaint.setAntiAlias(flag);
        mStrokeOnly = flag1;
    }

    public StrokeFont(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, Color color, float f1, 
            Color color1)
    {
        this(fontmanager, itexture, typeface, f, flag, color.getARGBPackedInt(), f1, color1.getARGBPackedInt());
    }

    public StrokeFont(FontManager fontmanager, ITexture itexture, Typeface typeface, float f, boolean flag, Color color, float f1, 
            Color color1, boolean flag1)
    {
        this(fontmanager, itexture, typeface, f, flag, color.getARGBPackedInt(), f1, color1.getARGBPackedInt(), flag1);
    }

    protected void drawLetter(String s, float f, float f1)
    {
        if (!mStrokeOnly)
        {
            super.drawLetter(s, f, f1);
        }
        mCanvas.drawText(s, f + 1.0F, 1.0F + f1, mStrokePaint);
    }

    protected void updateTextBounds(String s)
    {
        mStrokePaint.getTextBounds(s, 0, 1, mTextBounds);
        int i = -(int)FloatMath.floor(0.5F * mStrokeWidth);
        mTextBounds.inset(i, i);
    }
}
