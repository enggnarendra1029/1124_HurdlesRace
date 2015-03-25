.class public Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;
.super Lorg/andengine/entity/particle/BlendFunctionParticleSystem;
.source "BatchedPseudoSpriteParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/entity/particle/BlendFunctionParticleSystem",
        "<",
        "Lorg/andengine/entity/Entity;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

.field protected final mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;


# direct methods
.method public constructor <init>(FFLorg/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 9
    .parameter "pX"
    .parameter "pY"
    .parameter "pParticleEmitter"
    .parameter "pRateMinimum"
    .parameter "pRateMaximum"
    .parameter "pParticlesMaximum"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    .line 40
    new-instance v4, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem$1;

    invoke-direct {v4}, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem$1;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 45
    invoke-direct/range {v1 .. v8}, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;-><init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V

    .line 47
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    .line 49
    new-instance v1, Lorg/andengine/entity/sprite/batch/SpriteBatch;

    invoke-interface/range {p7 .. p7}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-direct {v1, v2, p6, v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    iput-object v1, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 9
    .parameter "pParticleEmitter"
    .parameter "pRateMinimum"
    .parameter "pRateMaximum"
    .parameter "pParticlesMaximum"
    .parameter "pTextureRegion"
    .parameter "pVertexBufferObjectManager"

    .prologue
    const/4 v1, 0x0

    .line 36
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;-><init>(FFLorg/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 9
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->setIndex(I)V

    .line 64
    iget-object v8, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    .line 65
    .local v8, particles:[Lorg/andengine/entity/particle/Particle;
    iget v0, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mParticlesAlive:I

    add-int/lit8 v7, v0, -0x1

    .local v7, i:I
    :goto_0
    if-gez v7, :cond_0

    .line 75
    iget-object v0, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    invoke-virtual {v0}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->submit()V

    .line 77
    iget-object v0, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 78
    return-void

    .line 66
    :cond_0
    aget-object v0, v8, v7

    invoke-virtual {v0}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v2

    check-cast v2, Lorg/andengine/entity/Entity;

    .line 70
    .local v2, entity:Lorg/andengine/entity/Entity;
    invoke-virtual {v2}, Lorg/andengine/entity/Entity;->getAlpha()F

    move-result v6

    .line 71
    .local v6, alpha:F
    invoke-virtual {v2}, Lorg/andengine/entity/Entity;->getRed()F

    move-result v0

    mul-float/2addr v0, v6

    invoke-virtual {v2}, Lorg/andengine/entity/Entity;->getGreen()F

    move-result v1

    mul-float/2addr v1, v6

    invoke-virtual {v2}, Lorg/andengine/entity/Entity;->getBlue()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-static {v0, v1, v3, v6}, Lorg/andengine/util/color/ColorUtils;->convertRGBAToABGRPackedFloat(FFFF)F

    move-result v5

    .line 73
    .local v5, colorABGRPackedInt:F
    iget-object v0, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    iget-object v1, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget-object v3, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    invoke-interface {v3}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getWidth()F

    move-result v3

    iget-object v4, p0, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;->mTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    invoke-interface {v4}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getHeight()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->drawWithoutChecks(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/entity/IEntity;FFF)V

    .line 65
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method
