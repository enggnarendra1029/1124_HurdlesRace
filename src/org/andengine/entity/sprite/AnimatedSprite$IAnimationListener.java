// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;


// Referenced classes of package org.andengine.entity.sprite:
//            AnimatedSprite

public static interface 
{

    public abstract void onAnimationFinished(AnimatedSprite animatedsprite);

    public abstract void onAnimationFrameChanged(AnimatedSprite animatedsprite, int i, int j);

    public abstract void onAnimationLoopFinished(AnimatedSprite animatedsprite, int i, int j);

    public abstract void onAnimationStarted(AnimatedSprite animatedsprite, int i);
}
