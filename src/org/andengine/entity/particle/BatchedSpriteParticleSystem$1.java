// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle;

import org.andengine.entity.IEntity;
import org.andengine.entity.IEntityFactory;
import org.andengine.entity.sprite.UncoloredSprite;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.particle:
//            BatchedSpriteParticleSystem

class val.pVertexBufferObjectManager
    implements IEntityFactory
{

    private final ITextureRegion val$pTextureRegion;
    private final VertexBufferObjectManager val$pVertexBufferObjectManager;

    public volatile IEntity create(float f, float f1)
    {
        return create(f, f1);
    }

    public UncoloredSprite create(float f, float f1)
    {
        return new UncoloredSprite(f, f1, val$pTextureRegion, val$pVertexBufferObjectManager);
    }

    A()
    {
        val$pTextureRegion = itextureregion;
        val$pVertexBufferObjectManager = vertexbufferobjectmanager;
        super();
    }
}
