// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.Entity;
import org.andengine.entity.IEntity;
import org.andengine.entity.IEntityFactory;
import org.andengine.entity.particle.emitter.IParticleEmitter;
import org.andengine.entity.sprite.batch.SpriteBatch;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.color.ColorUtils;

// Referenced classes of package org.andengine.entity.particle:
//            BlendFunctionParticleSystem, Particle

public class BatchedPseudoSpriteParticleSystem extends BlendFunctionParticleSystem
{

    protected final SpriteBatch mSpriteBatch;
    protected final ITextureRegion mTextureRegion;

    public BatchedPseudoSpriteParticleSystem(float f, float f1, IParticleEmitter iparticleemitter, float f2, float f3, int i, ITextureRegion itextureregion, 
            VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(f, f1, new IEntityFactory() {

            public Entity create(float f4, float f5)
            {
                return new Entity(f4, f5);
            }

            public volatile IEntity create(float f4, float f5)
            {
                return create(f4, f5);
            }

        }, iparticleemitter, f2, f3, i);
        mTextureRegion = itextureregion;
        mSpriteBatch = new SpriteBatch(itextureregion.getTexture(), i, vertexbufferobjectmanager);
    }

    public BatchedPseudoSpriteParticleSystem(IParticleEmitter iparticleemitter, float f, float f1, int i, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
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
            Entity entity = (Entity)aparticle[i].getEntity();
            float f = entity.getAlpha();
            float f1 = ColorUtils.convertRGBAToABGRPackedFloat(f * entity.getRed(), f * entity.getGreen(), f * entity.getBlue(), f);
            mSpriteBatch.drawWithoutChecks(mTextureRegion, entity, mTextureRegion.getWidth(), mTextureRegion.getHeight(), f1);
            i--;
        } while (true);
    }
}
