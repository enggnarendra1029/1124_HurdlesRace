.class public abstract Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;
.super Ljava/lang/Object;
.source "BaseParticleEmitter.java"

# interfaces
.implements Lorg/andengine/entity/particle/emitter/IParticleEmitter;


# instance fields
.field protected mCenterX:F

.field protected mCenterY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterX:F

    .line 28
    iput p2, p0, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterY:F

    .line 29
    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterY:F

    return v0
.end method

.method public onUpdate(F)V
    .locals 0
    .parameter "pSecondsElapsed"

    .prologue
    .line 63
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public setCenter(FF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"

    .prologue
    .line 52
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterX:F

    .line 53
    iput p2, p0, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterY:F

    .line 54
    return-void
.end method

.method public setCenterX(F)V
    .locals 0
    .parameter "pCenterX"

    .prologue
    .line 44
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterX:F

    .line 45
    return-void
.end method

.method public setCenterY(F)V
    .locals 0
    .parameter "pCenterY"

    .prologue
    .line 48
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterY:F

    .line 49
    return-void
.end method
