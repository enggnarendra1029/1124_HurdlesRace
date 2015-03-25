.class public Lorg/andengine/entity/scene/CameraScene;
.super Lorg/andengine/entity/scene/Scene;
.source "CameraScene.java"


# instance fields
.field protected mCamera:Lorg/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/andengine/entity/scene/CameraScene;-><init>(Lorg/andengine/engine/camera/Camera;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pCamera"

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/andengine/entity/scene/Scene;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    .line 39
    return-void
.end method


# virtual methods
.method public centerShapeInCamera(Lorg/andengine/entity/shape/IAreaShape;)V
    .locals 5
    .parameter "pAreaShape"

    .prologue
    const/high16 v4, 0x3f00

    .line 98
    iget-object v0, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    .line 99
    .local v0, camera:Lorg/andengine/engine/camera/Camera;
    invoke-virtual {v0}, Lorg/andengine/engine/camera/Camera;->getWidth()F

    move-result v1

    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    invoke-virtual {v0}, Lorg/andengine/engine/camera/Camera;->getHeight()F

    move-result v2

    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-interface {p1, v1, v2}, Lorg/andengine/entity/shape/IAreaShape;->setPosition(FF)V

    .line 100
    return-void
.end method

.method public centerShapeInCameraHorizontally(Lorg/andengine/entity/shape/IAreaShape;)V
    .locals 2
    .parameter "pAreaShape"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/andengine/engine/camera/Camera;->getWidth()F

    move-result v0

    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/andengine/entity/shape/IAreaShape;->setPosition(FF)V

    .line 104
    return-void
.end method

.method public centerShapeInCameraVertically(Lorg/andengine/entity/shape/IAreaShape;)V
    .locals 3
    .parameter "pAreaShape"

    .prologue
    .line 107
    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v1}, Lorg/andengine/engine/camera/Camera;->getHeight()F

    move-result v1

    invoke-interface {p1}, Lorg/andengine/entity/shape/IAreaShape;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lorg/andengine/entity/shape/IAreaShape;->setPosition(FF)V

    .line 108
    return-void
.end method

.method public getCamera()Lorg/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected onApplyMatrix(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/camera/Camera;->onApplyCameraSceneMatrix(Lorg/andengine/opengl/util/GLState;)V

    .line 91
    return-void
.end method

.method protected onChildSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 3
    .parameter "pSceneTouchEvent"

    .prologue
    .line 77
    iget-object v2, p0, Lorg/andengine/entity/scene/CameraScene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    instance-of v0, v2, Lorg/andengine/entity/scene/CameraScene;

    .line 78
    .local v0, childIsCameraScene:Z
    if-eqz v0, :cond_0

    .line 79
    iget-object v2, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v2, p1}, Lorg/andengine/engine/camera/Camera;->convertCameraSceneToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)V

    .line 80
    invoke-super {p0, p1}, Lorg/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v1

    .line 81
    .local v1, result:Z
    iget-object v2, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v2, p1}, Lorg/andengine/engine/camera/Camera;->convertSceneToCameraSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)V

    .line 84
    .end local v1           #result:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 3
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v2, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    if-nez v2, :cond_0

    .line 70
    :goto_0
    return v1

    .line 62
    :cond_0
    iget-object v2, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v2, p1}, Lorg/andengine/engine/camera/Camera;->convertSceneToCameraSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)V

    .line 64
    invoke-super {p0, p1}, Lorg/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 66
    .local v0, handled:Z
    if-eqz v0, :cond_1

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    invoke-virtual {v2, p1}, Lorg/andengine/engine/camera/Camera;->convertCameraSceneToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)V

    goto :goto_0
.end method

.method public setCamera(Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pCamera"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/andengine/entity/scene/CameraScene;->mCamera:Lorg/andengine/engine/camera/Camera;

    .line 51
    return-void
.end method
