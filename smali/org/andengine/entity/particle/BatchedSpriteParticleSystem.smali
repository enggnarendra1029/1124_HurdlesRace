.class public Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;
.super Lorg/andengine/entity/particle/BlendFunctionParticleSystem;
.source "BatchedSpriteParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/entity/particle/BlendFunctionParticleSystem",
        "<",
        "Lorg/andengine/entity/sprite/UncoloredSprite;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;


# direct methods
.method public constructor <init>(FFLorg/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 10
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
    new-instance v5, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem$1;

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {v5, v0, v1}, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem$1;-><init>(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    .line 46
    invoke-direct/range {v2 .. v9}, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;-><init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V

    .line 48
    new-instance v2, Lorg/andengine/entity/sprite/batch/SpriteBatch;

    invoke-interface/range {p7 .. p7}, Lorg/andengine/opengl/texture/region/ITextureRegion;->getTexture()Lorg/andengine/opengl/texture/ITexture;

    move-result-object v3

    move/from16 v0, p6

    move-object/from16 v1, p8

    invoke-direct {v2, v3, v0, v1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/andengine/opengl/texture/ITexture;ILorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    iput-object v2, p0, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    .line 49
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

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;-><init>(FFLorg/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 8
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 61
    iget-object v5, p0, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->setIndex(I)V

    .line 63
    iget-object v3, p0, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;->mParticles:[Lorg/andengine/entity/particle/Particle;

    .line 64
    .local v3, particles:[Lorg/andengine/entity/particle/Particle;
    iget v5, p0, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;->mParticlesAlive:I

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 74
    iget-object v5, p0, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    invoke-virtual {v5}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->submit()V

    .line 76
    iget-object v5, p0, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    invoke-virtual {v5, p1, p2}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 77
    return-void

    .line 65
    :cond_0
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/andengine/entity/particle/Particle;->getEntity()Lorg/andengine/entity/IEntity;

    move-result-object v4

    check-cast v4, Lorg/andengine/entity/sprite/Sprite;

    .line 69
    .local v4, sprite:Lorg/andengine/entity/sprite/Sprite;
    invoke-virtual {v4}, Lorg/andengine/entity/sprite/Sprite;->getAlpha()F

    move-result v0

    .line 70
    .local v0, alpha:F
    invoke-virtual {v4}, Lorg/andengine/entity/sprite/Sprite;->getRed()F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v4}, Lorg/andengine/entity/sprite/Sprite;->getGreen()F

    move-result v6

    mul-float/2addr v6, v0

    invoke-virtual {v4}, Lorg/andengine/entity/sprite/Sprite;->getBlue()F

    move-result v7

    mul-float/2addr v7, v0

    invoke-static {v5, v6, v7, v0}, Lorg/andengine/util/color/ColorUtils;->convertRGBAToABGRPackedFloat(FFFF)F

    move-result v1

    .line 72
    .local v1, colorABGRPackedInt:F
    iget-object v5, p0, Lorg/andengine/entity/particle/BatchedSpriteParticleSystem;->mSpriteBatch:Lorg/andengine/entity/sprite/batch/SpriteBatch;

    invoke-virtual {v5, v4, v1}, Lorg/andengine/entity/sprite/batch/SpriteBatch;->drawWithoutChecks(Lorg/andengine/entity/sprite/Sprite;F)V

    .line 64
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
