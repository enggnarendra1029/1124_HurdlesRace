// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background;

import org.andengine.entity.sprite.Sprite;

// Referenced classes of package org.andengine.entity.scene.background:
//            EntityBackground

public class SpriteBackground extends EntityBackground
{

    public SpriteBackground(float f, float f1, float f2, Sprite sprite)
    {
        super(f, f1, f2, sprite);
    }

    public SpriteBackground(Sprite sprite)
    {
        super(sprite);
    }

    public Sprite getSprite()
    {
        return (Sprite)mEntity;
    }
}
