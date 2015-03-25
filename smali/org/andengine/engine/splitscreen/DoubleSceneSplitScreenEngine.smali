.class public Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;
.super Lorg/andengine/engine/Engine;
.source "DoubleSceneSplitScreenEngine.java"


# instance fields
.field private final mSecondCamera:Lorg/andengine/engine/camera/Camera;

.field private mSecondScene:Lorg/andengine/entity/scene/Scene;


# direct methods
.method public constructor <init>(Lorg/andengine/engine/options/EngineOptions;Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pEngineOptions"
    .parameter "pSecondCamera"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/andengine/engine/Engine;-><init>(Lorg/andengine/engine/options/EngineOptions;)V

    .line 37
    iput-object p2, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSecondCamera:Lorg/andengine/engine/camera/Camera;

    .line 38
    return-void
.end method


# virtual methods
.method protected convertSurfaceToSceneTouchEvent(Lorg/andengine/engine/camera/Camera;Lorg/andengine/input/touch/TouchEvent;)V
    .locals 3
    .parameter "pCamera"
    .parameter "pSurfaceTouchEvent"

    .prologue
    .line 150
    iget v1, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v0, v1, 0x1

    .line 152
    .local v0, surfaceWidthHalf:I
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getFirstCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 153
    iget v1, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->offset(FF)V

    .line 156
    iget v1, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V

    goto :goto_0
.end method

.method public getCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected getCameraFromSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Lorg/andengine/engine/camera/Camera;
    .locals 2
    .parameter "pTouchEvent"

    .prologue
    .line 124
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getFirstCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getSecondCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getFirstScene()Lorg/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lorg/andengine/engine/Engine;->getScene()Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getScene()Lorg/andengine/entity/scene/Scene;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-super {p0}, Lorg/andengine/engine/Engine;->getScene()Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    return-object v0
.end method

.method protected getSceneFromSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Lorg/andengine/entity/scene/Scene;
    .locals 2
    .parameter "pTouchEvent"

    .prologue
    .line 133
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getFirstScene()Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getSecondScene()Lorg/andengine/entity/scene/Scene;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSecondCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getSecondScene()Lorg/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/andengine/entity/scene/Scene;

    return-object v0
.end method

.method protected onDrawScene(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 6
    .parameter "pGLState"
    .parameter "pFirstCamera"

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getSecondCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    .line 94
    .local v0, secondCamera:Lorg/andengine/engine/camera/Camera;
    iget v2, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    .line 95
    .local v2, surfaceWidth:I
    shr-int/lit8 v3, v2, 0x1

    .line 97
    .local v3, surfaceWidthHalf:I
    iget v1, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    .line 99
    .local v1, surfaceHeight:I
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->enableScissorTest()Z

    .line 102
    iget-object v4, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    if-eqz v4, :cond_0

    .line 103
    invoke-static {v5, v5, v3, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 104
    invoke-static {v5, v5, v3, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 106
    iget-object v4, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v4, p1, p2}, Lorg/andengine/entity/scene/Scene;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 107
    invoke-virtual {p2, p1}, Lorg/andengine/engine/camera/Camera;->onDrawHUD(Lorg/andengine/opengl/util/GLState;)V

    .line 111
    :cond_0
    iget-object v4, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/andengine/entity/scene/Scene;

    if-eqz v4, :cond_1

    .line 112
    invoke-static {v3, v5, v3, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 113
    invoke-static {v3, v5, v3, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 115
    iget-object v4, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v4, p1, v0}, Lorg/andengine/entity/scene/Scene;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 116
    invoke-virtual {v0, p1}, Lorg/andengine/engine/camera/Camera;->onDrawHUD(Lorg/andengine/opengl/util/GLState;)V

    .line 119
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->disableScissorTest()Z

    .line 120
    return-void
.end method

.method protected onUpdateCameraSurface()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    iget v0, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceWidth:I

    .line 169
    .local v0, surfaceWidth:I
    shr-int/lit8 v1, v0, 0x1

    .line 171
    .local v1, surfaceWidthHalf:I
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getFirstCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v2

    iget v3, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v2, v4, v4, v1, v3}, Lorg/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 172
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getSecondCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v2

    iget v3, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v2, v1, v4, v1, v3}, Lorg/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 173
    return-void
.end method

.method protected onUpdateScene(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lorg/andengine/engine/Engine;->onUpdateScene(F)V

    .line 143
    iget-object v0, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1}, Lorg/andengine/entity/scene/Scene;->onUpdate(F)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onUpdateUpdateHandlers(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lorg/andengine/engine/Engine;->onUpdateUpdateHandlers(F)V

    .line 163
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->getSecondCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/andengine/engine/camera/Camera;->onUpdate(F)V

    .line 164
    return-void
.end method

.method public setFirstScene(Lorg/andengine/entity/scene/Scene;)V
    .locals 0
    .parameter "pScene"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lorg/andengine/engine/Engine;->setScene(Lorg/andengine/entity/scene/Scene;)V

    .line 80
    return-void
.end method

.method public setScene(Lorg/andengine/entity/scene/Scene;)V
    .locals 0
    .parameter "pScene"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->setFirstScene(Lorg/andengine/entity/scene/Scene;)V

    .line 76
    return-void
.end method

.method public setSecondScene(Lorg/andengine/entity/scene/Scene;)V
    .locals 0
    .parameter "pScene"

    .prologue
    .line 83
    iput-object p1, p0, Lorg/andengine/engine/splitscreen/DoubleSceneSplitScreenEngine;->mSecondScene:Lorg/andengine/entity/scene/Scene;

    .line 84
    return-void
.end method
