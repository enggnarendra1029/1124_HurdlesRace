// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.text;

import org.andengine.util.HorizontalAlign;

// Referenced classes of package org.andengine.entity.text:
//            AutoWrap

public class TextOptions
{

    AutoWrap mAutoWrap;
    float mAutoWrapWidth;
    HorizontalAlign mHorizontalAlign;
    float mLeading;

    public TextOptions()
    {
        this(AutoWrap.NONE, 0.0F, HorizontalAlign.LEFT, 0.0F);
    }

    public TextOptions(AutoWrap autowrap, float f)
    {
        this(autowrap, f, HorizontalAlign.LEFT, 0.0F);
    }

    public TextOptions(AutoWrap autowrap, float f, HorizontalAlign horizontalalign)
    {
        this(autowrap, f, horizontalalign, 0.0F);
    }

    public TextOptions(AutoWrap autowrap, float f, HorizontalAlign horizontalalign, float f1)
    {
        mAutoWrap = autowrap;
        mAutoWrapWidth = f;
        mHorizontalAlign = horizontalalign;
        mLeading = f1;
    }

    public TextOptions(HorizontalAlign horizontalalign)
    {
        this(AutoWrap.NONE, 0.0F, horizontalalign, 0.0F);
    }

    public AutoWrap getAutoWrap()
    {
        return mAutoWrap;
    }

    public float getAutoWrapWidth()
    {
        return mAutoWrapWidth;
    }

    public HorizontalAlign getHorizontalAlign()
    {
        return mHorizontalAlign;
    }

    public float getLeading()
    {
        return mLeading;
    }

    public void setAutoWrap(AutoWrap autowrap)
    {
        mAutoWrap = autowrap;
    }

    public void setAutoWrapWidth(float f)
    {
        mAutoWrapWidth = f;
    }

    public void setHorizontalAlign(HorizontalAlign horizontalalign)
    {
        mHorizontalAlign = horizontalalign;
    }

    public void setLeading(float f)
    {
        mLeading = f;
    }
}
