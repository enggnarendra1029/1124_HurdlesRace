// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text;

import org.andengine.util.HorizontalAlign;

// Referenced classes of package org.andengine.entity.text:
//            TextOptions, AutoWrap, TickerText

public static class <init> extends TextOptions
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

    public ()
    {
    }

    public (float f)
    {
        this(f, false);
    }

    public <init>(float f, boolean flag)
    {
        this(HorizontalAlign.LEFT, f, flag);
    }

    public <init>(AutoWrap autowrap, float f, HorizontalAlign horizontalalign, float f1)
    {
        this(autowrap, f, horizontalalign, 0.0F, f1, false);
    }

    public <init>(AutoWrap autowrap, float f, HorizontalAlign horizontalalign, float f1, float f2)
    {
        this(autowrap, f, horizontalalign, f1, f2, false);
    }

    public <init>(AutoWrap autowrap, float f, HorizontalAlign horizontalalign, float f1, float f2, boolean flag)
    {
        super(autowrap, f, horizontalalign, f1);
        mCharactersPerSecond = f2;
        mReverse = flag;
    }

    public mReverse(HorizontalAlign horizontalalign, float f)
    {
        this(AutoWrap.NONE, 0.0F, horizontalalign, 0.0F, f, false);
    }

    public <init>(HorizontalAlign horizontalalign, float f, boolean flag)
    {
        this(AutoWrap.NONE, 0.0F, horizontalalign, 0.0F, f, flag);
    }
}
