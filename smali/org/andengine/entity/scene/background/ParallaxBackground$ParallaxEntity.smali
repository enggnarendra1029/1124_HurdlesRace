.class public Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;
.super Ljava/lang/Object;
.source "ParallaxBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/scene/background/ParallaxBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParallaxEntity"
.end annotation


# instance fields
.field final mAreaShape:Lorg/andengine/entity/shape/IAreaShape;

.field final mParallaxFactor:F


# direct methods
.method public constructor <init>(FLorg/andengine/entity/shape/IAreaShape;)V
    .locals 0
    .parameter "pParallaxFactor"
    .parameter "pAreaShape"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mParallaxFactor:F

    .line 102
    iput-object p2, p0, Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mAreaShape:Lorg/andengine/entity/shape/IAreaShape;

    .line 103
    return-void
.end method


# virtual methods
.method public onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;F)V
    .locals 6
    .parameter "pGLState"
    .parameter "pCamera"
    .parameter "pParallaxValue"

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->pushModelViewGLMatrix()V

    .line 120
    invoke-virtual {p2}, Lorg/andengine/engine/camera/Camera;->getWidth()F

    move-result v1

    .line 121
    .local v1, cameraWidth:F
    iget-object v4, p0, Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mAreaShape:Lorg/andengine/entity/shape/IAreaShape;

    invoke-interface {v4}, Lorg/andengine/entity/shape/IAreaShape;->getWidthScaled()F

    move-result v3

    .line 122
    .local v3, shapeWidthScaled:F
    iget v4, p0, Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mParallaxFactor:F

    mul-float/2addr v4, p3

    rem-float v0, v4, v3

    .line 124
    .local v0, baseOffset:F
    :goto_0
    cmpl-float v4, v0, v5

    if-gtz v4, :cond_1

    .line 127
    invoke-virtual {p1, v0, v5, v5}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 129
    move v2, v0

    .line 132
    .local v2, currentMaxX:F
    :cond_0
    iget-object v4, p0, Lorg/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mAreaShape:Lorg/andengine/entity/shape/IAreaShape;

    invoke-interface {v4, p1, p2}, Lorg/andengine/entity/shape/IAreaShape;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 133
    invoke-virtual {p1, v3, v5, v5}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 134
    add-float/2addr v2, v3

    .line 131
    cmpg-float v4, v2, v1

    if-ltz v4, :cond_0

    .line 137
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->popModelViewGLMatrix()V

    .line 138
    return-void

    .line 125
    .end local v2           #currentMaxX:F
    :cond_1
    sub-float/2addr v0, v3

    goto :goto_0
.end method
