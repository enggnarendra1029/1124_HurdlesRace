.class public Lorg/andengine/entity/particle/BlendFunctionParticleSystem;
.super Lorg/andengine/entity/particle/ParticleSystem;
.source "BlendFunctionParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Lorg/andengine/entity/particle/ParticleSystem",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mBlendFunctionDestination:I

.field protected mBlendFunctionSource:I

.field protected mBlendingEnabled:Z


# direct methods
.method public constructor <init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V
    .locals 1
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
            "<TT;>;",
            "Lorg/andengine/entity/particle/emitter/IParticleEmitter;",
            "FFI)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    .local p3, pEntityFactory:Lorg/andengine/entity/IEntityFactory;,"Lorg/andengine/entity/IEntityFactory<TT;>;"
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/particle/ParticleSystem;-><init>(FFLorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendingEnabled:Z

    .line 26
    const/16 v0, 0x302

    iput v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionSource:I

    .line 27
    const/16 v0, 0x303

    iput v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionDestination:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V
    .locals 1
    .parameter
    .parameter "pParticleEmitter"
    .parameter "pRateMinimum"
    .parameter "pRateMaximum"
    .parameter "pParticlesMaximum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/IEntityFactory",
            "<TT;>;",
            "Lorg/andengine/entity/particle/emitter/IParticleEmitter;",
            "FFI)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    .local p1, pEntityFactory:Lorg/andengine/entity/IEntityFactory;,"Lorg/andengine/entity/IEntityFactory<TT;>;"
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/particle/ParticleSystem;-><init>(Lorg/andengine/entity/IEntityFactory;Lorg/andengine/entity/particle/emitter/IParticleEmitter;FFI)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendingEnabled:Z

    .line 26
    const/16 v0, 0x302

    iput v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionSource:I

    .line 27
    const/16 v0, 0x303

    iput v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionDestination:I

    .line 35
    return-void
.end method


# virtual methods
.method public getBlendFunctionDestination()I
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionDestination:I

    return v0
.end method

.method public getBlendFunctionSource()I
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionSource:I

    return v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iget-boolean v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendingEnabled:Z

    return v0
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 88
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iget-boolean v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendingEnabled:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->disableBlend()Z

    .line 91
    :cond_0
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 80
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iget-boolean v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendingEnabled:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->enableBlend()Z

    .line 82
    iget v0, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionSource:I

    iget v1, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionDestination:I

    invoke-virtual {p1, v0, v1}, Lorg/andengine/opengl/util/GLState;->blendFunction(II)V

    .line 84
    :cond_0
    return-void
.end method

.method public setBlendFunction(II)V
    .locals 0
    .parameter "pBlendFunctionSource"
    .parameter "pBlendFunctionDestination"

    .prologue
    .line 70
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionSource:I

    .line 71
    iput p2, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionDestination:I

    .line 72
    return-void
.end method

.method public setBlendFunctionDestination(I)V
    .locals 0
    .parameter "pBlendFunctionDestination"

    .prologue
    .line 66
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionDestination:I

    .line 67
    return-void
.end method

.method public setBlendFunctionSource(I)V
    .locals 0
    .parameter "pBlendFunctionSource"

    .prologue
    .line 58
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendFunctionSource:I

    .line 59
    return-void
.end method

.method public setBlendingEnabled(Z)V
    .locals 0
    .parameter "pBlendingEnabled"

    .prologue
    .line 50
    .local p0, this:Lorg/andengine/entity/particle/BlendFunctionParticleSystem;,"Lorg/andengine/entity/particle/BlendFunctionParticleSystem<TT;>;"
    iput-boolean p1, p0, Lorg/andengine/entity/particle/BlendFunctionParticleSystem;->mBlendingEnabled:Z

    .line 51
    return-void
.end method
