.class public Lorg/andengine/engine/camera/ZoomCamera;
.super Lorg/andengine/engine/camera/BoundCamera;
.source "ZoomCamera.java"


# instance fields
.field protected mZoomFactor:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/engine/camera/BoundCamera;-><init>(FFFF)V

    .line 26
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 34
    return-void
.end method


# virtual methods
.method protected applySceneToCameraSceneOffset(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 6
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    iget v0, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 109
    .local v0, zoomFactor:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 111
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    .line 113
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v3

    invoke-static {v1, v0, v0, v2, v3}, Lorg/andengine/util/math/MathUtils;->scaleAroundCenter([FFFFF)[F

    .line 115
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v1, v1, v4

    sget-object v2, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Lorg/andengine/engine/camera/BoundCamera;->applySceneToCameraSceneOffset(Lorg/andengine/input/touch/TouchEvent;)V

    .line 119
    return-void
.end method

.method protected applySceneToCameraSceneOffset([F)V
    .locals 3
    .parameter "pSceneCoordinates"

    .prologue
    .line 123
    iget v0, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 124
    .local v0, zoomFactor:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v2

    invoke-static {p1, v0, v0, v1, v2}, Lorg/andengine/util/math/MathUtils;->scaleAroundCenter([FFFFF)[F

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lorg/andengine/engine/camera/BoundCamera;->applySceneToCameraSceneOffset([F)V

    .line 129
    return-void
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getWidth()F

    move-result v0

    iget v1, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getXMax()F
    .locals 3

    .prologue
    .line 68
    iget v1, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 69
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getXMax()F

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v0

    .line 72
    .local v0, centerX:F
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getXMax()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method public getXMin()F
    .locals 3

    .prologue
    .line 58
    iget v1, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 59
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getXMin()F

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v0

    .line 62
    .local v0, centerX:F
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getXMin()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method public getYMax()F
    .locals 3

    .prologue
    .line 88
    iget v1, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 89
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getYMax()F

    move-result v1

    .line 92
    :goto_0
    return v1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v0

    .line 92
    .local v0, centerY:F
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getYMax()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method public getYMin()F
    .locals 3

    .prologue
    .line 78
    iget v1, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 79
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getYMin()F

    move-result v1

    .line 82
    :goto_0
    return v1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v0

    .line 82
    .local v0, centerY:F
    invoke-super {p0}, Lorg/andengine/engine/camera/BoundCamera;->getYMin()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method public getZoomFactor()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    return v0
.end method

.method public setZoomFactor(F)V
    .locals 1
    .parameter "pZoomFactor"

    .prologue
    .line 45
    iput p1, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 47
    iget-boolean v0, p0, Lorg/andengine/engine/camera/ZoomCamera;->mBoundsEnabled:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->ensureInBounds()V

    .line 50
    :cond_0
    return-void
.end method

.method protected unapplySceneToCameraSceneOffset(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 6
    .parameter "pCameraSceneTouchEvent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-super {p0, p1}, Lorg/andengine/engine/camera/BoundCamera;->unapplySceneToCameraSceneOffset(Lorg/andengine/input/touch/TouchEvent;)V

    .line 135
    iget v0, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 136
    .local v0, zoomFactor:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 138
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    .line 140
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v3

    invoke-static {v1, v0, v0, v2, v3}, Lorg/andengine/util/math/MathUtils;->revertScaleAroundCenter([FFFFF)[F

    .line 142
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v1, v1, v4

    sget-object v2, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 144
    :cond_0
    return-void
.end method

.method protected unapplySceneToCameraSceneOffset([F)V
    .locals 3
    .parameter "pCameraSceneCoordinates"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lorg/andengine/engine/camera/BoundCamera;->unapplySceneToCameraSceneOffset([F)V

    .line 150
    iget v0, p0, Lorg/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    .line 151
    .local v0, zoomFactor:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v2

    invoke-static {p1, v0, v0, v1, v2}, Lorg/andengine/util/math/MathUtils;->revertScaleAroundCenter([FFFFF)[F

    .line 154
    :cond_0
    return-void
.end method
