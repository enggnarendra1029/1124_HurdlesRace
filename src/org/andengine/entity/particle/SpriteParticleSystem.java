// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle;

import org.andengine.entity.IEntity;
import org.andengine.entity.IEntityFactory;
import org.andengine.entity.particle.emitter.IParticleEmitter;
import org.andengine.entity.sprite.Sprite;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.particle:
//            ParticleSystem

public class SpriteParticleSystem extends ParticleSystem
{

    protected SpriteParticleSystem(float f, float f1, IEntityFactory ientityfactory, IParticleEmitter iparticleemitter, float f2, float f3, int i)
    {
        super(f, f1, ientityfactory, iparticleemitter, f2, f3, i);
    }

    public SpriteParticleSystem(float f, float f1, IParticleEmitter iparticleemitter, float f2, float f3, int i, final ITextureRegion pTextureRegion, 
            final VertexBufferObjectManager pVertexBufferObjectManager)
    {
        super(f, f1, new IEntityFactory() {

            private final ITextureRegion val$pTextureRegion;
            private final VertexBufferObjectManager val$pVertexBufferObjectManager;

            public volatile IEntity create(float f4, float f5)
            {
                return create(f4, f5);
            }

            public Sprite create(float f4, float f5)
            {
                return new Sprite(f4, f5, pTextureRegion, pVertexBufferObjectManager);
            }

            
            {
                pTextureRegion = itextureregion;
                pVertexBufferObjectManager = vertexbufferobjectmanager;
                super();
            }
        }, iparticleemitter, f2, f3, i);
    }

    public SpriteParticleSystem(IParticleEmitter iparticleemitter, float f, float f1, int i, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(0.0F, 0.0F, iparticleemitter, f, f1, i, itextureregion, vertexbufferobjectmanager);
    }
}
