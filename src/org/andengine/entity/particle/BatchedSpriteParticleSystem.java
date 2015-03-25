// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.IEntity;
import org.andengine.entity.IEntityFactory;
import org.andengine.entity.particle.emitter.IParticleEmitter;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.sprite.UncoloredSprite;
import org.andengine.entity.sprite.batch.SpriteBatch;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.color.ColorUtils;

// Referenced classes of package org.andengine.entity.particle:
//            BlendFunctionParticleSystem, Particle

public class BatchedSpriteParticleSystem extends BlendFunctionParticleSystem
{

    protected final SpriteBatch mSpriteBatch;

    public BatchedSpriteParticleSystem(float f, float f1, IParticleEmitter iparticleemitter, float f2, float f3, int i, final ITextureRegion pTextureRegion, 
            final VertexBufferObjectManager pVertexBufferObjectManager)
    {
        super(f, f1, new IEntityFactory() {

            private final ITextureRegion val$pTextureRegion;
            private final VertexBufferObjectManager val$pVertexBufferObjectManager;

            public volatile IEntity create(float f4, float f5)
            {
                return create(f4, f5);
            }

            public UncoloredSprite create(float f4, float f5)
            {
                return new UncoloredSprite(f4, f5, pTextureRegion, pVertexBufferObjectManager);
            }

            
            {
                pTextureRegion = itextureregion;
                pVertexBufferObjectManager = vertexbufferobjectmanager;
                super();
            }
        }, iparticleemitter, f2, f3, i);
        mSpriteBatch = new SpriteBatch(pTextureRegion.getTexture(), i, pVertexBufferObjectManager);
    }

    public BatchedSpriteParticleSystem(IParticleEmitter iparticleemitter, float f, float f1, int i, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(0.0F, 0.0F, iparticleemitter, f, f1, i, itextureregion, vertexbufferobjectmanager);
    }

    protected void onManagedDraw(GLState glstate, Camera camera)
    {
        mSpriteBatch.setIndex(0);
        Particle aparticle[] = mParticles;
        int i = -1 + mParticlesAlive;
        do
        {
            if (i < 0)
            {
                mSpriteBatch.submit();
                mSpriteBatch.onDraw(glstate, camera);
                return;
            }
            Sprite sprite = (Sprite)aparticle[i].getEntity();
            float f = sprite.getAlpha();
            float f1 = ColorUtils.convertRGBAToABGRPackedFloat(f * sprite.getRed(), f * sprite.getGreen(), f * sprite.getBlue(), f);
            mSpriteBatch.drawWithoutChecks(sprite, f1);
            i--;
        } while (true);
    }
}
