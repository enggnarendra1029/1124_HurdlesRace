.class public Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;
.super Lorg/andengine/engine/Engine;
.source "SingleSceneSplitScreenEngine.java"


# instance fields
.field private final mSecondCamera:Lorg/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>(Lorg/andengine/engine/options/EngineOptions;Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pEngineOptions"
    .parameter "pSecondCamera"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/andengine/engine/Engine;-><init>(Lorg/andengine/engine/options/EngineOptions;)V

    .line 35
    iput-object p2, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSecondCamera:Lorg/andengine/engine/camera/Camera;

    .line 36
    return-void
.end method


# virtual methods
.method protected convertSurfaceToSceneTouchEvent(Lorg/andengine/engine/camera/Camera;Lorg/andengine/input/touch/TouchEvent;)V
    .locals 3
    .parameter "pCamera"
    .parameter "pSurfaceTouchEvent"

    .prologue
    .line 105
    iget v1, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v0, v1, 0x1

    .line 107
    .local v0, surfaceWidthHalf:I
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 108
    iget v1, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->offset(FF)V

    .line 111
    iget v1, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V

    goto :goto_0
.end method

.method public getCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected getCameraFromSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Lorg/andengine/engine/camera/Camera;
    .locals 2
    .parameter "pTouchEvent"

    .prologue
    .line 96
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/andengine/engine/Engine;->mCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getSecondCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSecondCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected onDrawScene(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 6
    .parameter "pGLState"
    .parameter "pFirstCamera"

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v4, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    .line 65
    .local v0, secondCamera:Lorg/andengine/engine/camera/Camera;
    iget v2, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    .line 66
    .local v2, surfaceWidth:I
    shr-int/lit8 v3, v2, 0x1

    .line 68
    .local v3, surfaceWidthHalf:I
    iget v1, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    .line 70
    .local v1, surfaceHeight:I
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->enableScissorTest()Z

    .line 74
    invoke-static {v5, v5, v3, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 75
    invoke-static {v5, v5, v3, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 77
    iget-object v4, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v4, p1, p2}, Lorg/andengine/entity/scene/Scene;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 78
    invoke-virtual {p2, p1}, Lorg/andengine/engine/camera/Camera;->onDrawHUD(Lorg/andengine/opengl/util/GLState;)V

    .line 83
    invoke-static {v3, v5, v3, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 84
    invoke-static {v3, v5, v3, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 86
    iget-object v4, p0, Lorg/andengine/engine/Engine;->mScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v4, p1, v0}, Lorg/andengine/entity/scene/Scene;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 87
    invoke-virtual {v0, p1}, Lorg/andengine/engine/camera/Camera;->onDrawHUD(Lorg/andengine/opengl/util/GLState;)V

    .line 90
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->disableScissorTest()Z

    .line 92
    .end local v0           #secondCamera:Lorg/andengine/engine/camera/Camera;
    .end local v1           #surfaceHeight:I
    .end local v2           #surfaceWidth:I
    .end local v3           #surfaceWidthHalf:I
    :cond_0
    return-void
.end method

.method protected onUpdateCameraSurface()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    iget v0, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    .line 124
    .local v0, surfaceWidth:I
    shr-int/lit8 v1, v0, 0x1

    .line 126
    .local v1, surfaceWidthHalf:I
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v2

    iget v3, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v2, v4, v4, v1, v3}, Lorg/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 127
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v2

    iget v3, p0, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v2, v1, v4, v1, v3}, Lorg/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 128
    return-void
.end method

.method protected onUpdateUpdateHandlers(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lorg/andengine/engine/Engine;->onUpdateUpdateHandlers(F)V

    .line 118
    invoke-virtual {p0}, Lorg/andengine/engine/splitscreen/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/andengine/engine/camera/Camera;->onUpdate(F)V

    .line 119
    return-void
.end method
