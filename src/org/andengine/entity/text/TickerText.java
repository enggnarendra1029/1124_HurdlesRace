// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.text.exception.OutOfCharactersException;
import org.andengine.entity.text.vbo.ITextVertexBufferObject;
import org.andengine.opengl.font.IFont;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.HorizontalAlign;

// Referenced classes of package org.andengine.entity.text:
//            Text, TextOptions, AutoWrap

public class TickerText extends Text
{
    public static class TickerTextOptions extends TextOptions
    {

        float mCharactersPerSecond;
        boolean mReverse;

        public float getCharactersPerSecond()
        {
            return mCharactersPerSecond;
        }

        public boolean isReverse()
        {
            return mReverse;
        }

        public void setCharactersPerSecond(float f)
        {
            mCharactersPerSecond = f;
        }

        public void setReverse(boolean flag)
        {
            mReverse = flag;
        }

        public TickerTextOptions()
        {
        }

        public TickerTextOptions(float f)
        {
            this(f, false);
        }

        public TickerTextOptions(float f, boolean flag)
        {
            this(HorizontalAlign.LEFT, f, flag);
        }

        public TickerTextOptions(AutoWrap autowrap, float f, HorizontalAlign horizontalalign, float f1)
        {
            this(autowrap, f, horizontalalign, 0.0F, f1, false);
        }

        public TickerTextOptions(AutoWrap autowrap, float f, HorizontalAlign horizontalalign, float f1, float f2)
        {
            this(autowrap, f, horizontalalign, f1, f2, false);
        }

        public TickerTextOptions(AutoWrap autowrap, float f, HorizontalAlign horizontalalign, float f1, float f2, boolean flag)
        {
            super(autowrap, f, horizontalalign, f1);
            mCharactersPerSecond = f2;
            mReverse = flag;
        }

        public TickerTextOptions(HorizontalAlign horizontalalign, float f)
        {
            this(AutoWrap.NONE, 0.0F, horizontalalign, 0.0F, f, false);
        }

        public TickerTextOptions(HorizontalAlign horizontalalign, float f, boolean flag)
        {
            this(AutoWrap.NONE, 0.0F, horizontalalign, 0.0F, f, flag);
        }
    }


    private int mCharactersVisible;
    private float mDuration;
    private float mSecondsElapsed;
    private final TickerTextOptions mTickerTextOptions;

    public TickerText(float f, float f1, IFont ifont, String s, TickerTextOptions tickertextoptions, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(f, f1, ifont, s, tickertextoptions, vertexbufferobjectmanager);
        mTickerTextOptions = tickertextoptions;
        mDuration = (float)mCharactersToDraw * mTickerTextOptions.mCharactersPerSecond;
    }

    protected void draw(GLState glstate, Camera camera)
    {
        mTextVertexBufferObject.draw(4, 6 * mCharactersVisible);
    }

    public float getCharactersPerSecond()
    {
        return mTickerTextOptions.mCharactersPerSecond;
    }

    public int getCharactersVisible()
    {
        return mCharactersVisible;
    }

    public volatile TextOptions getTextOptions()
    {
        return getTextOptions();
    }

    public TickerTextOptions getTextOptions()
    {
        return (TickerTextOptions)super.getTextOptions();
    }

    public boolean isReverse()
    {
        return getTextOptions().mReverse;
    }

    protected void onManagedUpdate(float f)
    {
        super.onManagedUpdate(f);
        if (mTickerTextOptions.mReverse)
        {
            if (mCharactersVisible < mCharactersToDraw)
            {
                mSecondsElapsed = Math.max(0.0F, mSecondsElapsed - f);
                mCharactersVisible = (int)(mSecondsElapsed * mTickerTextOptions.mCharactersPerSecond);
            }
        } else
        if (mCharactersVisible < mCharactersToDraw)
        {
            mSecondsElapsed = Math.min(mDuration, f + mSecondsElapsed);
            mCharactersVisible = (int)(mSecondsElapsed * mTickerTextOptions.mCharactersPerSecond);
            return;
        }
    }

    public void reset()
    {
        super.reset();
        mCharactersVisible = 0;
        mSecondsElapsed = 0.0F;
    }

    public void setCharactersPerSecond(float f)
    {
        mTickerTextOptions.mCharactersPerSecond = f;
        mDuration = f * (float)mCharactersToDraw;
    }

    public void setReverse(boolean flag)
    {
        mTickerTextOptions.mReverse = flag;
    }

    public void setText(CharSequence charsequence)
        throws OutOfCharactersException
    {
        super.setText(charsequence);
        if (mTickerTextOptions != null)
        {
            mDuration = (float)mCharactersToDraw * mTickerTextOptions.mCharactersPerSecond;
        }
    }
}
