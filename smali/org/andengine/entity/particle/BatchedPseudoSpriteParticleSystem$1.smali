.class Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem$1;
.super Ljava/lang/Object;
.source "BatchedPseudoSpriteParticleSystem.java"

# interfaces
.implements Lorg/andengine/entity/IEntityFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem;-><init>(FFLorg/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/entity/IEntityFactory",
        "<",
        "Lorg/andengine/entity/Entity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public create(FF)Lorg/andengine/entity/Entity;
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 43
    new-instance v0, Lorg/andengine/entity/Entity;

    invoke-direct {v0, p1, p2}, Lorg/andengine/entity/Entity;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic create(FF)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/particle/BatchedPseudoSpriteParticleSystem$1;->create(FF)Lorg/andengine/entity/Entity;

    move-result-object v0

    return-object v0
.end method
