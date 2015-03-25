// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background;


// Referenced classes of package org.andengine.entity.scene.background:
//            ParallaxBackground

public class AutoParallaxBackground extends ParallaxBackground
{

    private float mParallaxChangePerSecond;

    public AutoParallaxBackground(float f, float f1, float f2, float f3)
    {
        super(f, f1, f2);
        mParallaxChangePerSecond = f3;
    }

    public void onUpdate(float f)
    {
        super.onUpdate(f);
        mParallaxValue = mParallaxValue + f * mParallaxChangePerSecond;
    }

    public void setParallaxChangePerSecond(float f)
    {
        mParallaxChangePerSecond = f;
    }
}
