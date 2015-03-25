.class public abstract Lorg/andengine/entity/shape/RectangularShape;
.super Lorg/andengine/entity/shape/Shape;
.source "RectangularShape.java"

# interfaces
.implements Lorg/andengine/entity/shape/IAreaShape;


# instance fields
.field protected mHeight:F

.field protected mWidth:F


# direct methods
.method public constructor <init>(FFFFLorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pShaderProgram"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p5}, Lorg/andengine/entity/shape/Shape;-><init>(FFLorg/andengine/opengl/shader/ShaderProgram;)V

    .line 34
    iput p3, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    .line 35
    iput p4, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    .line 37
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->resetRotationCenter()V

    .line 38
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->resetScaleCenter()V

    .line 39
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->resetSkewCenter()V

    .line 40
    return-void
.end method


# virtual methods
.method public collidesWith(Lorg/andengine/entity/shape/IShape;)Z
    .locals 1
    .parameter "pOtherShape"

    .prologue
    .line 120
    instance-of v0, p1, Lorg/andengine/entity/shape/RectangularShape;

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Lorg/andengine/entity/shape/RectangularShape;

    .end local p1
    invoke-static {p0, p1}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/andengine/entity/shape/RectangularShape;Lorg/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 122
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/andengine/entity/primitive/Line;

    if-eqz v0, :cond_1

    .line 123
    check-cast p1, Lorg/andengine/entity/primitive/Line;

    .end local p1
    invoke-static {p0, p1}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/andengine/entity/shape/RectangularShape;Lorg/andengine/entity/primitive/Line;)Z

    move-result v0

    goto :goto_0

    .line 125
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->checkContains(Lorg/andengine/entity/shape/RectangularShape;FF)Z

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    return v0
.end method

.method public getHeightScaled()F
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/andengine/entity/shape/RectangularShape;->mScaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 110
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/andengine/entity/shape/RectangularShape;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneCenterCoordinates([F)[F
    .locals 3
    .parameter "pReuse"

    .prologue
    const/high16 v2, 0x3f00

    .line 115
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/andengine/entity/shape/RectangularShape;->convertLocalToSceneCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    return v0
.end method

.method public getWidthScaled()F
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->getWidth()F

    move-result v0

    iget v1, p0, Lorg/andengine/entity/shape/RectangularShape;->mScaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public isCulled(Lorg/andengine/engine/camera/Camera;)Z
    .locals 1
    .parameter "pCamera"

    .prologue
    .line 91
    invoke-static {p1, p0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->isVisible(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lorg/andengine/entity/shape/Shape;->reset()V

    .line 98
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->resetRotationCenter()V

    .line 99
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->resetSkewCenter()V

    .line 100
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->resetScaleCenter()V

    .line 101
    return-void
.end method

.method public resetRotationCenter()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 134
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    .line 135
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    .line 136
    return-void
.end method

.method public resetScaleCenter()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 139
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mScaleCenterX:F

    .line 140
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mScaleCenterY:F

    .line 141
    return-void
.end method

.method public resetSkewCenter()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 144
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mSkewCenterX:F

    .line 145
    iget v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/shape/RectangularShape;->mSkewCenterY:F

    .line 146
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter "pHeight"

    .prologue
    .line 64
    iput p1, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    .line 65
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->onUpdateVertices()V

    .line 66
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 70
    iput p1, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    .line 71
    iput p2, p0, Lorg/andengine/entity/shape/RectangularShape;->mHeight:F

    .line 72
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->onUpdateVertices()V

    .line 73
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter "pWidth"

    .prologue
    .line 58
    iput p1, p0, Lorg/andengine/entity/shape/RectangularShape;->mWidth:F

    .line 59
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->onUpdateVertices()V

    .line 60
    return-void
.end method
