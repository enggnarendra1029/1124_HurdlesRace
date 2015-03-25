.class public Lorg/andengine/entity/particle/Particle;
.super Ljava/lang/Object;
.source "Particle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/entity/IEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EXPIRETIME_NEVER:I = -0x1


# instance fields
.field private mEntity:Lorg/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mExpireTime:F

.field mExpired:Z

.field private mLifeTime:F

.field private final mPhysicsHandler:Lorg/andengine/engine/handler/physics/PhysicsHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/andengine/engine/handler/physics/PhysicsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/andengine/engine/handler/physics/PhysicsHandler;-><init>(Lorg/andengine/entity/IEntity;)V

    iput-object v0, p0, Lorg/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/andengine/engine/handler/physics/PhysicsHandler;

    .line 29
    const/high16 v0, -0x4080

    iput v0, p0, Lorg/andengine/entity/particle/Particle;->mExpireTime:F

    .line 15
    return-void
.end method


# virtual methods
.method public getEntity()Lorg/andengine/entity/IEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/Particle;->mEntity:Lorg/andengine/entity/IEntity;

    return-object v0
.end method

.method public getExpireTime()F
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/Particle;->mExpireTime:F

    return v0
.end method

.method public getLifeTime()F
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget v0, p0, Lorg/andengine/entity/particle/Particle;->mLifeTime:F

    return v0
.end method

.method public getPhysicsHandler()Lorg/andengine/engine/handler/physics/PhysicsHandler;
    .locals 1

    .prologue
    .line 72
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/andengine/engine/handler/physics/PhysicsHandler;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-boolean v0, p0, Lorg/andengine/entity/particle/Particle;->mExpired:Z

    return v0
.end method

.method public onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 97
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-boolean v0, p0, Lorg/andengine/entity/particle/Particle;->mExpired:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/andengine/entity/particle/Particle;->mEntity:Lorg/andengine/entity/IEntity;

    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/IEntity;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onUpdate(F)V
    .locals 3
    .parameter "pSecondsElapsed"

    .prologue
    .line 80
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-boolean v1, p0, Lorg/andengine/entity/particle/Particle;->mExpired:Z

    if-nez v1, :cond_1

    .line 81
    iget v1, p0, Lorg/andengine/entity/particle/Particle;->mExpireTime:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/andengine/entity/particle/Particle;->mLifeTime:F

    add-float/2addr v1, p1

    iget v2, p0, Lorg/andengine/entity/particle/Particle;->mExpireTime:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 83
    :cond_0
    iget v1, p0, Lorg/andengine/entity/particle/Particle;->mLifeTime:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/andengine/entity/particle/Particle;->mLifeTime:F

    .line 84
    iget-object v1, p0, Lorg/andengine/entity/particle/Particle;->mEntity:Lorg/andengine/entity/IEntity;

    invoke-interface {v1, p1}, Lorg/andengine/entity/IEntity;->onUpdate(F)V

    .line 85
    iget-object v1, p0, Lorg/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/andengine/engine/handler/physics/PhysicsHandler;

    invoke-virtual {v1, p1}, Lorg/andengine/engine/handler/physics/PhysicsHandler;->onUpdate(F)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget v1, p0, Lorg/andengine/entity/particle/Particle;->mExpireTime:F

    iget v2, p0, Lorg/andengine/entity/particle/Particle;->mLifeTime:F

    sub-float v0, v1, v2

    .line 88
    .local v0, secondsElapsedUsed:F
    iget v1, p0, Lorg/andengine/entity/particle/Particle;->mExpireTime:F

    iput v1, p0, Lorg/andengine/entity/particle/Particle;->mLifeTime:F

    .line 89
    iget-object v1, p0, Lorg/andengine/entity/particle/Particle;->mEntity:Lorg/andengine/entity/IEntity;

    invoke-interface {v1, v0}, Lorg/andengine/entity/IEntity;->onUpdate(F)V

    .line 90
    iget-object v1, p0, Lorg/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/andengine/engine/handler/physics/PhysicsHandler;

    invoke-virtual {v1, v0}, Lorg/andengine/engine/handler/physics/PhysicsHandler;->onUpdate(F)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/andengine/entity/particle/Particle;->setExpired(Z)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 107
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iget-object v0, p0, Lorg/andengine/entity/particle/Particle;->mEntity:Lorg/andengine/entity/IEntity;

    invoke-interface {v0}, Lorg/andengine/entity/IEntity;->reset()V

    .line 108
    iget-object v0, p0, Lorg/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/andengine/engine/handler/physics/PhysicsHandler;

    invoke-virtual {v0}, Lorg/andengine/engine/handler/physics/PhysicsHandler;->reset()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/entity/particle/Particle;->mExpired:Z

    .line 110
    const/high16 v0, -0x4080

    iput v0, p0, Lorg/andengine/entity/particle/Particle;->mExpireTime:F

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/entity/particle/Particle;->mLifeTime:F

    .line 112
    return-void
.end method

.method public setEntity(Lorg/andengine/entity/IEntity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    .local p1, pEntity:Lorg/andengine/entity/IEntity;,"TT;"
    iput-object p1, p0, Lorg/andengine/entity/particle/Particle;->mEntity:Lorg/andengine/entity/IEntity;

    .line 48
    iget-object v0, p0, Lorg/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/andengine/engine/handler/physics/PhysicsHandler;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/physics/PhysicsHandler;->setEntity(Lorg/andengine/entity/IEntity;)V

    .line 49
    return-void
.end method

.method public setExpireTime(F)V
    .locals 0
    .parameter "pExpireTime"

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iput p1, p0, Lorg/andengine/entity/particle/Particle;->mExpireTime:F

    .line 61
    return-void
.end method

.method public setExpired(Z)V
    .locals 0
    .parameter "pExpired"

    .prologue
    .line 68
    .local p0, this:Lorg/andengine/entity/particle/Particle;,"Lorg/andengine/entity/particle/Particle<TT;>;"
    iput-boolean p1, p0, Lorg/andengine/entity/particle/Particle;->mExpired:Z

    .line 69
    return-void
.end method
