// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.vbo;

import org.andengine.entity.sprite.TiledSprite;

// Referenced classes of package org.andengine.entity.sprite.vbo:
//            ISpriteVertexBufferObject

public interface ITiledSpriteVertexBufferObject
    extends ISpriteVertexBufferObject
{

    public abstract void onUpdateColor(TiledSprite tiledsprite);

    public abstract void onUpdateTextureCoordinates(TiledSprite tiledsprite);

    public abstract void onUpdateVertices(TiledSprite tiledsprite);
}
