.class public Lorg/andengine/engine/camera/BoundCamera;
.super Lorg/andengine/engine/camera/Camera;
.source "BoundCamera.java"


# instance fields
.field protected mBoundsCenterX:F

.field protected mBoundsCenterY:F

.field protected mBoundsEnabled:Z

.field protected mBoundsHeight:F

.field protected mBoundsWidth:F

.field protected mBoundsXMax:F

.field protected mBoundsXMin:F

.field protected mBoundsYMax:F

.field protected mBoundsYMin:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/engine/camera/Camera;-><init>(FFFF)V

    .line 38
    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pBoundMinX"
    .parameter "pBoundMaxX"
    .parameter "pBoundMinY"
    .parameter "pBoundMaxY"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/engine/camera/Camera;-><init>(FFFF)V

    .line 42
    invoke-virtual {p0, p5, p7, p6, p8}, Lorg/andengine/engine/camera/BoundCamera;->setBounds(FFFF)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected ensureInBounds()V
    .locals 4

    .prologue
    .line 114
    iget v2, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->getWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 115
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsCenterX:F

    .line 120
    .local v0, centerX:F
    :goto_0
    iget v2, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->getHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 121
    iget v1, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsCenterY:F

    .line 125
    .local v1, centerY:F
    :goto_1
    invoke-super {p0, v0, v1}, Lorg/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 126
    return-void

    .line 117
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :cond_0
    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->getCenterX()F

    move-result v2

    invoke-virtual {p0, v2}, Lorg/andengine/engine/camera/BoundCamera;->getBoundedX(F)F

    move-result v0

    .restart local v0       #centerX:F
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->getCenterY()F

    move-result v2

    invoke-virtual {p0, v2}, Lorg/andengine/engine/camera/BoundCamera;->getBoundedY(F)F

    move-result v1

    .restart local v1       #centerY:F
    goto :goto_1
.end method

.method protected getBoundedX(F)F
    .locals 9
    .parameter "pX"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 129
    iget v6, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMin:F

    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->getXMin()F

    move-result v7

    sub-float v3, v6, v7

    .line 130
    .local v3, minXBoundExceededAmount:F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_1

    move v2, v4

    .line 132
    .local v2, minXBoundExceeded:Z
    :goto_0
    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->getXMax()F

    move-result v6

    iget v7, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMax:F

    sub-float v1, v6, v7

    .line 133
    .local v1, maxXBoundExceededAmount:F
    cmpl-float v6, v1, v8

    if-lez v6, :cond_2

    move v0, v4

    .line 135
    .local v0, maxXBoundExceeded:Z
    :goto_1
    if-eqz v2, :cond_4

    .line 136
    if-eqz v0, :cond_3

    .line 138
    sub-float v4, p1, v1

    add-float p1, v4, v3

    .line 149
    .end local p1
    :cond_0
    :goto_2
    return p1

    .end local v0           #maxXBoundExceeded:Z
    .end local v1           #maxXBoundExceededAmount:F
    .end local v2           #minXBoundExceeded:Z
    .restart local p1
    :cond_1
    move v2, v5

    .line 130
    goto :goto_0

    .restart local v1       #maxXBoundExceededAmount:F
    .restart local v2       #minXBoundExceeded:Z
    :cond_2
    move v0, v5

    .line 133
    goto :goto_1

    .line 141
    .restart local v0       #maxXBoundExceeded:Z
    :cond_3
    add-float/2addr p1, v3

    goto :goto_2

    .line 144
    :cond_4
    if-eqz v0, :cond_0

    .line 146
    sub-float/2addr p1, v1

    goto :goto_2
.end method

.method protected getBoundedY(F)F
    .locals 9
    .parameter "pY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 155
    iget v6, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMin:F

    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->getYMin()F

    move-result v7

    sub-float v3, v6, v7

    .line 156
    .local v3, minYBoundExceededAmount:F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_1

    move v2, v4

    .line 158
    .local v2, minYBoundExceeded:Z
    :goto_0
    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->getYMax()F

    move-result v6

    iget v7, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMax:F

    sub-float v1, v6, v7

    .line 159
    .local v1, maxYBoundExceededAmount:F
    cmpl-float v6, v1, v8

    if-lez v6, :cond_2

    move v0, v4

    .line 161
    .local v0, maxYBoundExceeded:Z
    :goto_1
    if-eqz v2, :cond_4

    .line 162
    if-eqz v0, :cond_3

    .line 164
    sub-float v4, p1, v1

    add-float p1, v4, v3

    .line 175
    .end local p1
    :cond_0
    :goto_2
    return p1

    .end local v0           #maxYBoundExceeded:Z
    .end local v1           #maxYBoundExceededAmount:F
    .end local v2           #minYBoundExceeded:Z
    .restart local p1
    :cond_1
    move v2, v5

    .line 156
    goto :goto_0

    .restart local v1       #maxYBoundExceededAmount:F
    .restart local v2       #minYBoundExceeded:Z
    :cond_2
    move v0, v5

    .line 159
    goto :goto_1

    .line 167
    .restart local v0       #maxYBoundExceeded:Z
    :cond_3
    add-float/2addr p1, v3

    goto :goto_2

    .line 170
    :cond_4
    if-eqz v0, :cond_0

    .line 172
    sub-float/2addr p1, v1

    goto :goto_2
.end method

.method public getBoundsHeight()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    return v0
.end method

.method public getBoundsWidth()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    return v0
.end method

.method public getBoundsXMax()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMax:F

    return v0
.end method

.method public getBoundsXMin()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMin:F

    return v0
.end method

.method public getBoundsYMax()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMax:F

    return v0
.end method

.method public getBoundsYMin()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMin:F

    return v0
.end method

.method public isBoundsEnabled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    return v0
.end method

.method public setBounds(FFFF)V
    .locals 3
    .parameter "pBoundsXMin"
    .parameter "pBoundsYMin"
    .parameter "pBoundsXMax"
    .parameter "pBoundsYMax"

    .prologue
    const/high16 v2, 0x3f00

    .line 59
    iput p1, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMin:F

    .line 60
    iput p3, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMax:F

    .line 61
    iput p2, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMin:F

    .line 62
    iput p4, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMax:F

    .line 64
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMax:F

    iget v1, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    .line 65
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMax:F

    iget v1, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    .line 67
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsXMin:F

    iget v1, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsCenterX:F

    .line 68
    iget v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsYMin:F

    iget v1, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsCenterY:F

    .line 69
    return-void
.end method

.method public setBoundsEnabled(Z)V
    .locals 0
    .parameter "pBoundsEnabled"

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    .line 56
    return-void
.end method

.method public setCenter(FF)V
    .locals 1
    .parameter "pCenterX"
    .parameter "pCenterY"

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lorg/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 103
    iget-boolean v0, p0, Lorg/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/andengine/engine/camera/BoundCamera;->ensureInBounds()V

    .line 106
    :cond_0
    return-void
.end method
