.class public Lorg/andengine/engine/handler/physics/PhysicsHandler;
.super Lorg/andengine/engine/handler/BaseEntityUpdateHandler;
.source "PhysicsHandler.java"


# instance fields
.field protected mAccelerationX:F

.field protected mAccelerationY:F

.field protected mAngularVelocity:F

.field private mEnabled:Z

.field protected mVelocityX:F

.field protected mVelocityY:F


# direct methods
.method public constructor <init>(Lorg/andengine/entity/IEntity;)V
    .locals 2
    .parameter "pEntity"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lorg/andengine/engine/handler/BaseEntityUpdateHandler;-><init>(Lorg/andengine/entity/IEntity;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mEnabled:Z

    .line 24
    iput v1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    .line 25
    iput v1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    .line 27
    iput v1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    .line 28
    iput v1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    .line 30
    iput v1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    .line 38
    return-void
.end method


# virtual methods
.method public accelerate(FF)V
    .locals 1
    .parameter "pAccelerationX"
    .parameter "pAccelerationY"

    .prologue
    .line 105
    iget v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    .line 106
    iget v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    .line 107
    return-void
.end method

.method public getAccelerationX()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    return v0
.end method

.method public getAccelerationY()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    return v0
.end method

.method public getAngularVelocity()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    return v0
.end method

.method public getVelocityX()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    return v0
.end method

.method public getVelocityY()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mEnabled:Z

    return v0
.end method

.method protected onUpdate(FLorg/andengine/entity/IEntity;)V
    .locals 8
    .parameter "pSecondsElapsed"
    .parameter "pEntity"

    .prologue
    const/4 v7, 0x0

    .line 123
    iget-boolean v5, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mEnabled:Z

    if-eqz v5, :cond_4

    .line 125
    iget v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    .line 126
    .local v0, accelerationX:F
    iget v1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    .line 127
    .local v1, accelerationY:F
    cmpl-float v5, v0, v7

    if-nez v5, :cond_0

    cmpl-float v5, v1, v7

    if-eqz v5, :cond_1

    .line 128
    :cond_0
    iget v5, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    mul-float v6, v0, p1

    add-float/2addr v5, v6

    iput v5, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    .line 129
    iget v5, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    mul-float v6, v1, p1

    add-float/2addr v5, v6

    iput v5, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    .line 133
    :cond_1
    iget v2, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    .line 134
    .local v2, angularVelocity:F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_2

    .line 135
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getRotation()F

    move-result v5

    mul-float v6, v2, p1

    add-float/2addr v5, v6

    invoke-interface {p2, v5}, Lorg/andengine/entity/IEntity;->setRotation(F)V

    .line 139
    :cond_2
    iget v3, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    .line 140
    .local v3, velocityX:F
    iget v4, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    .line 141
    .local v4, velocityY:F
    cmpl-float v5, v3, v7

    if-nez v5, :cond_3

    cmpl-float v5, v4, v7

    if-eqz v5, :cond_4

    .line 142
    :cond_3
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getX()F

    move-result v5

    mul-float v6, v3, p1

    add-float/2addr v5, v6

    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getY()F

    move-result v6

    mul-float v7, v4, p1

    add-float/2addr v6, v7

    invoke-interface {p2, v5, v6}, Lorg/andengine/entity/IEntity;->setPosition(FF)V

    .line 145
    .end local v0           #accelerationX:F
    .end local v1           #accelerationY:F
    .end local v2           #angularVelocity:F
    .end local v3           #velocityX:F
    .end local v4           #velocityY:F
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    .line 150
    iput v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    .line 151
    iput v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    .line 152
    iput v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    .line 153
    iput v0, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    .line 154
    return-void
.end method

.method public setAcceleration(F)V
    .locals 0
    .parameter "pAcceleration"

    .prologue
    .line 100
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    .line 101
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    .line 102
    return-void
.end method

.method public setAcceleration(FF)V
    .locals 0
    .parameter "pAccelerationX"
    .parameter "pAccelerationY"

    .prologue
    .line 95
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    .line 96
    iput p2, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    .line 97
    return-void
.end method

.method public setAccelerationX(F)V
    .locals 0
    .parameter "pAccelerationX"

    .prologue
    .line 87
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    .line 88
    return-void
.end method

.method public setAccelerationY(F)V
    .locals 0
    .parameter "pAccelerationY"

    .prologue
    .line 91
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    .line 92
    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 0
    .parameter "pAngularVelocity"

    .prologue
    .line 114
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    .line 115
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "pEnabled"

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mEnabled:Z

    .line 50
    return-void
.end method

.method public setVelocity(F)V
    .locals 0
    .parameter "pVelocity"

    .prologue
    .line 69
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    .line 70
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    .line 71
    return-void
.end method

.method public setVelocity(FF)V
    .locals 0
    .parameter "pVelocityX"
    .parameter "pVelocityY"

    .prologue
    .line 74
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    .line 75
    iput p2, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    .line 76
    return-void
.end method

.method public setVelocityX(F)V
    .locals 0
    .parameter "pVelocityX"

    .prologue
    .line 61
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    .line 62
    return-void
.end method

.method public setVelocityY(F)V
    .locals 0
    .parameter "pVelocityY"

    .prologue
    .line 65
    iput p1, p0, Lorg/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    .line 66
    return-void
.end method
