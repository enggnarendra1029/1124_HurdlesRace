.class public abstract Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;
.super Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;
.source "BaseCircleParticleEmitter.java"


# instance fields
.field protected mRadiusX:F

.field protected mRadiusY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pRadius"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p3}, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;-><init>(FFFF)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pRadiusX"
    .parameter "pRadiusY"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;-><init>(FF)V

    .line 33
    invoke-virtual {p0, p3}, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->setRadiusX(F)V

    .line 34
    invoke-virtual {p0, p4}, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->setRadiusY(F)V

    .line 35
    return-void
.end method


# virtual methods
.method public getRadiusX()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusX:F

    return v0
.end method

.method public getRadiusY()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusY:F

    return v0
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "pRadius"

    .prologue
    .line 58
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusX:F

    .line 59
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusY:F

    .line 60
    return-void
.end method

.method public setRadius(FF)V
    .locals 0
    .parameter "pRadiusX"
    .parameter "pRadiusY"

    .prologue
    .line 63
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusX:F

    .line 64
    iput p2, p0, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusY:F

    .line 65
    return-void
.end method

.method public setRadiusX(F)V
    .locals 0
    .parameter "pRadiusX"

    .prologue
    .line 46
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusX:F

    .line 47
    return-void
.end method

.method public setRadiusY(F)V
    .locals 0
    .parameter "pRadiusY"

    .prologue
    .line 54
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusY:F

    .line 55
    return-void
.end method
