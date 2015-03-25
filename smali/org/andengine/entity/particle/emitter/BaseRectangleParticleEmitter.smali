.class public abstract Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;
.super Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;
.source "BaseRectangleParticleEmitter.java"


# instance fields
.field protected mHeight:F

.field protected mHeightHalf:F

.field protected mWidth:F

.field protected mWidthHalf:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pSize"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p3}, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;-><init>(FFFF)V

    .line 31
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/particle/emitter/BaseParticleEmitter;-><init>(FF)V

    .line 35
    invoke-virtual {p0, p3}, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->setWidth(F)V

    .line 36
    invoke-virtual {p0, p4}, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->setHeight(F)V

    .line 37
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mWidth:F

    return v0
.end method

.method public setHeight(F)V
    .locals 1
    .parameter "pHeight"

    .prologue
    .line 57
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mHeight:F

    .line 58
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mHeightHalf:F

    .line 59
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .parameter "pWidth"

    .prologue
    .line 48
    iput p1, p0, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mWidth:F

    .line 49
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mWidthHalf:F

    .line 50
    return-void
.end method
