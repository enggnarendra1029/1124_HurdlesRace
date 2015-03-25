.class public Lorg/andengine/entity/particle/SpriteParticleSystem;
.super Lorg/andengine/entity/particle/ParticleSystem;
.source "SpriteParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/entity/particle/ParticleSystem",
        "<",
        "Lorg/andengine/entity/sprite/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter
    .parameter "pParticleEmitter"
    .parameter "pRateMinimum"
    .parameter "pRateMaximum"
    .parameter "pParticlesMaximum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lorg/andengine/entity/IEntityFactory",
            "<",
            "Lorg/andengine/entity/sprite/Sprite;",
            ">;",
            "Lorg/andengine/entity/particle/emitter/IParticleEmitter;",
            "FFI)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, pEntityFactory:Lorg/andengine/entity/IEntityFactory;,"Lorg/andengine/entity/IEntityFactory<Lorg/andengine/entity/sprite/Sprite;>;"
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/particle/ParticleSystem;-><init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V

    .line 43
    return-void
.end method

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
    .line 33
    new-instance v5, Lorg/andengine/entity/particle/SpriteParticleSystem$1;

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {v5, v0, v1}, Lorg/andengine/entity/particle/SpriteParticleSystem$1;-><init>(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    .line 38
    invoke-direct/range {v2 .. v9}, Lorg/andengine/entity/particle/ParticleSystem;-><init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V

    .line 39
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

    .line 29
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/particle/SpriteParticleSystem;-><init>(FFLorg/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    .line 30
    return-void
.end method
