.class Lorg/andengine/entity/particle/SpriteParticleSystem$1;
.super Ljava/lang/Object;
.source "SpriteParticleSystem.java"

# interfaces
.implements Lorg/andengine/entity/IEntityFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/entity/particle/SpriteParticleSystem;-><init>(FFLorg/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
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
        "Lorg/andengine/entity/sprite/Sprite;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$pTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

.field private final synthetic val$pVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;


# direct methods
.method constructor <init>(Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/entity/particle/SpriteParticleSystem$1;->val$pTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    iput-object p2, p0, Lorg/andengine/entity/particle/SpriteParticleSystem$1;->val$pVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(FF)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/particle/SpriteParticleSystem$1;->create(FF)Lorg/andengine/entity/sprite/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public create(FF)Lorg/andengine/entity/sprite/Sprite;
    .locals 3
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 36
    new-instance v0, Lorg/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lorg/andengine/entity/particle/SpriteParticleSystem$1;->val$pTextureRegion:Lorg/andengine/opengl/texture/region/ITextureRegion;

    iget-object v2, p0, Lorg/andengine/entity/particle/SpriteParticleSystem$1;->val$pVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    return-object v0
.end method
