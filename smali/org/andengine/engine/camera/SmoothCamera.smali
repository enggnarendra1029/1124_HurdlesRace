.class public Lorg/andengine/engine/camera/SmoothCamera;
.super Lorg/andengine/engine/camera/ZoomCamera;
.source "SmoothCamera.java"


# instance fields
.field protected mMaxVelocityX:F

.field protected mMaxVelocityY:F

.field protected mMaxZoomFactorChange:F

.field protected mTargetCenterX:F

.field protected mTargetCenterY:F

.field protected mTargetZoomFactor:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pMaxVelocityX"
    .parameter "pMaxVelocityY"
    .parameter "pMaxZoomFactorChange"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/engine/camera/ZoomCamera;-><init>(FFFF)V

    .line 35
    iput p5, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    .line 36
    iput p6, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    .line 37
    iput p7, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    .line 39
    invoke-virtual {p0}, Lorg/andengine/engine/camera/SmoothCamera;->getCenterX()F

    move-result v0

    iput v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    .line 40
    invoke-virtual {p0}, Lorg/andengine/engine/camera/SmoothCamera;->getCenterY()F

    move-result v0

    iput v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    .line 42
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 43
    return-void
.end method

.method private limitToMaxVelocityX(FF)F
    .locals 1
    .parameter "pValue"
    .parameter "pSecondsElapsed"

    .prologue
    .line 176
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 177
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private limitToMaxVelocityY(FF)F
    .locals 1
    .parameter "pValue"
    .parameter "pSecondsElapsed"

    .prologue
    .line 184
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 185
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private limitToMaxZoomFactorChange(FF)F
    .locals 1
    .parameter "pValue"
    .parameter "pSecondsElapsed"

    .prologue
    .line 192
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 193
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getMaxVelocityX()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    return v0
.end method

.method public getMaxVelocityY()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    return v0
.end method

.method public getMaxZoomFactorChange()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    return v0
.end method

.method public getTargetCenterX()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    return v0
.end method

.method public getTargetCenterY()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    return v0
.end method

.method public getTargetZoomFactor()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    return v0
.end method

.method protected onSmoothZoomFinished()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected onSmoothZoomStarted()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onUpdate(F)V
    .locals 14
    .parameter "pSecondsElapsed"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lorg/andengine/engine/camera/ZoomCamera;->onUpdate(F)V

    .line 143
    invoke-virtual {p0}, Lorg/andengine/engine/camera/SmoothCamera;->getCenterX()F

    move-result v1

    .line 144
    .local v1, currentCenterX:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/SmoothCamera;->getCenterY()F

    move-result v2

    .line 146
    .local v2, currentCenterY:F
    iget v8, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    .line 147
    .local v8, targetCenterX:F
    iget v9, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    .line 149
    .local v9, targetCenterY:F
    cmpl-float v12, v1, v8

    if-nez v12, :cond_0

    cmpl-float v12, v2, v9

    if-eqz v12, :cond_1

    .line 150
    :cond_0
    sub-float v6, v8, v1

    .line 151
    .local v6, diffX:F
    invoke-direct {p0, v6, p1}, Lorg/andengine/engine/camera/SmoothCamera;->limitToMaxVelocityX(FF)F

    move-result v4

    .line 153
    .local v4, dX:F
    sub-float v7, v9, v2

    .line 154
    .local v7, diffY:F
    invoke-direct {p0, v7, p1}, Lorg/andengine/engine/camera/SmoothCamera;->limitToMaxVelocityY(FF)F

    move-result v5

    .line 156
    .local v5, dY:F
    add-float v12, v1, v4

    add-float v13, v2, v5

    invoke-super {p0, v12, v13}, Lorg/andengine/engine/camera/ZoomCamera;->setCenter(FF)V

    .line 160
    .end local v4           #dX:F
    .end local v5           #dY:F
    .end local v6           #diffX:F
    .end local v7           #diffY:F
    :cond_1
    invoke-virtual {p0}, Lorg/andengine/engine/camera/SmoothCamera;->getZoomFactor()F

    move-result v3

    .line 162
    .local v3, currentZoom:F
    iget v10, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 164
    .local v10, targetZoomFactor:F
    cmpl-float v12, v3, v10

    if-eqz v12, :cond_2

    .line 165
    sub-float v0, v10, v3

    .line 166
    .local v0, absoluteZoomDifference:F
    invoke-direct {p0, v0, p1}, Lorg/andengine/engine/camera/SmoothCamera;->limitToMaxZoomFactorChange(FF)F

    move-result v11

    .line 167
    .local v11, zoomChange:F
    add-float v12, v3, v11

    invoke-super {p0, v12}, Lorg/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    .line 169
    iget v12, p0, Lorg/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    iget v13, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    .line 170
    invoke-virtual {p0}, Lorg/andengine/engine/camera/SmoothCamera;->onSmoothZoomFinished()V

    .line 173
    .end local v0           #absoluteZoomDifference:F
    .end local v11           #zoomChange:F
    :cond_2
    return-void
.end method

.method public setCenter(FF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"

    .prologue
    .line 63
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    .line 64
    iput p2, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    .line 65
    return-void
.end method

.method public setCenterDirect(FF)V
    .locals 0
    .parameter "pCenterX"
    .parameter "pCenterY"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lorg/andengine/engine/camera/ZoomCamera;->setCenter(FF)V

    .line 69
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    .line 70
    iput p2, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    .line 71
    return-void
.end method

.method public setMaxVelocity(FF)V
    .locals 0
    .parameter "pMaxVelocityX"
    .parameter "pMaxVelocityY"

    .prologue
    .line 115
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    .line 116
    iput p2, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    .line 117
    return-void
.end method

.method public setMaxVelocityX(F)V
    .locals 0
    .parameter "pMaxVelocityX"

    .prologue
    .line 103
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    .line 104
    return-void
.end method

.method public setMaxVelocityY(F)V
    .locals 0
    .parameter "pMaxVelocityY"

    .prologue
    .line 111
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    .line 112
    return-void
.end method

.method public setMaxZoomFactorChange(F)V
    .locals 0
    .parameter "pMaxZoomFactorChange"

    .prologue
    .line 124
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    .line 125
    return-void
.end method

.method public setZoomFactor(F)V
    .locals 2
    .parameter "pZoomFactor"

    .prologue
    .line 75
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    iget v1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 77
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 79
    invoke-virtual {p0}, Lorg/andengine/engine/camera/SmoothCamera;->onSmoothZoomStarted()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    goto :goto_0
.end method

.method public setZoomFactorDirect(F)V
    .locals 2
    .parameter "pZoomFactor"

    .prologue
    .line 87
    iget v0, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    iget v1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 88
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 89
    invoke-super {p0, p1}, Lorg/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    .line 91
    invoke-virtual {p0}, Lorg/andengine/engine/camera/SmoothCamera;->onSmoothZoomFinished()V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Lorg/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    .line 94
    invoke-super {p0, p1}, Lorg/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    goto :goto_0
.end method
