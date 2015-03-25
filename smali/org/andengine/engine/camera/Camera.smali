.class public Lorg/andengine/engine/camera/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# static fields
.field private static final UPDATEHANDLERS_CAPACITY_DEFAULT:I = 0x4

.field static final VERTICES_TMP:[F


# instance fields
.field protected mCameraSceneRotation:F

.field private mChaseEntity:Lorg/andengine/entity/IEntity;

.field private mHUD:Lorg/andengine/engine/camera/hud/HUD;

.field protected mResizeOnSurfaceSizeChanged:Z

.field protected mRotation:F

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field protected mSurfaceX:I

.field protected mSurfaceY:I

.field protected mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

.field protected mXMax:F

.field protected mXMin:F

.field protected mYMax:F

.field protected mYMin:F

.field private mZFar:F

.field private mZNear:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    .line 30
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, -0x4080

    iput v0, p0, Lorg/andengine/engine/camera/Camera;->mZNear:F

    .line 42
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/engine/camera/Camera;->mZFar:F

    .line 48
    iput v1, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 49
    iput v1, p0, Lorg/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    .line 64
    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/andengine/engine/camera/Camera;->set(FFFF)V

    .line 65
    return-void
.end method

.method private allocateUpdateHandlers()V
    .locals 2

    .prologue
    .line 578
    new-instance v0, Lorg/andengine/engine/handler/UpdateHandlerList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/andengine/engine/handler/UpdateHandlerList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    .line 579
    return-void
.end method

.method private applyCameraSceneRotation(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 8
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    .line 446
    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    neg-float v0, v1

    .line 448
    .local v0, cameraSceneRotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 449
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v6

    .line 450
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v7

    .line 452
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    iget v3, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    iget v4, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v1, v0, v2, v3}, Lorg/andengine/util/math/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 454
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v1, v1, v6

    sget-object v2, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v2, v2, v7

    invoke-virtual {p1, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 456
    :cond_0
    return-void
.end method

.method private applyCameraSceneRotation([F)V
    .locals 5
    .parameter "pSceneCoordinates"

    .prologue
    const/high16 v4, 0x3f00

    .line 438
    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    neg-float v0, v1

    .line 440
    .local v0, cameraSceneRotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 441
    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    iget v3, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {p1, v0, v1, v2}, Lorg/andengine/util/math/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 443
    :cond_0
    return-void
.end method

.method private static applyRotation(Lorg/andengine/opengl/util/GLState;FFF)V
    .locals 3
    .parameter "pGLState"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"
    .parameter "pAngle"

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-virtual {p0, p1, p2, v2}, Lorg/andengine/opengl/util/GLState;->translateProjectionGLMatrixf(FFF)V

    .line 325
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p3, v2, v2, v0}, Lorg/andengine/opengl/util/GLState;->rotateProjectionGLMatrixf(FFFF)V

    .line 326
    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lorg/andengine/opengl/util/GLState;->translateProjectionGLMatrixf(FFF)V

    .line 327
    return-void
.end method

.method private applySceneRotation(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 7
    .parameter "pCameraSceneTouchEvent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 405
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 406
    .local v0, rotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 407
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v5

    .line 408
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v6

    .line 410
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    neg-float v2, v0

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v3

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/andengine/util/math/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 412
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v1, v1, v5

    sget-object v2, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v2, v2, v6

    invoke-virtual {p1, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 414
    :cond_0
    return-void
.end method

.method private applySceneRotation([F)V
    .locals 4
    .parameter "pCameraSceneCoordinates"

    .prologue
    .line 398
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 399
    .local v0, rotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 400
    neg-float v1, v0

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lorg/andengine/util/math/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 402
    :cond_0
    return-void
.end method

.method private convertAxisAlignedSceneToSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V
    .locals 8
    .parameter "pSceneTouchEvent"
    .parameter "pSurfaceWidth"
    .parameter "pSurfaceHeight"

    .prologue
    .line 538
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMin()F

    move-result v3

    .line 539
    .local v3, xMin:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMax()F

    move-result v2

    .line 540
    .local v2, xMax:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMin()F

    move-result v5

    .line 541
    .local v5, yMin:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMax()F

    move-result v4

    .line 543
    .local v4, yMax:F
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v6

    sub-float/2addr v6, v3

    sub-float v7, v2, v3

    div-float v0, v6, v7

    .line 544
    .local v0, relativeX:F
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v6

    sub-float/2addr v6, v5

    sub-float v7, v4, v5

    div-float v1, v6, v7

    .line 546
    .local v1, relativeY:F
    int-to-float v6, p2

    mul-float/2addr v6, v0

    int-to-float v7, p3

    mul-float/2addr v7, v1

    invoke-virtual {p1, v6, v7}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 547
    return-void
.end method

.method private convertAxisAlignedSurfaceToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;FF)V
    .locals 7
    .parameter "pSurfaceTouchEvent"
    .parameter "pRelativeX"
    .parameter "pRelativeY"

    .prologue
    .line 508
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMin()F

    move-result v2

    .line 509
    .local v2, xMin:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMax()F

    move-result v1

    .line 510
    .local v1, xMax:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMin()F

    move-result v5

    .line 511
    .local v5, yMin:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMax()F

    move-result v4

    .line 513
    .local v4, yMax:F
    sub-float v6, v1, v2

    mul-float/2addr v6, p2

    add-float v0, v2, v6

    .line 514
    .local v0, x:F
    sub-float v6, v4, v5

    mul-float/2addr v6, p3

    add-float v3, v5, v6

    .line 516
    .local v3, y:F
    invoke-virtual {p1, v0, v3}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 517
    return-void
.end method

.method private unapplyCameraSceneRotation(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 8
    .parameter "pCameraSceneTouchEvent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    .line 467
    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    neg-float v0, v1

    .line 469
    .local v0, cameraSceneRotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 470
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v6

    .line 471
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v7

    .line 473
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    iget v3, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    iget v4, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v1, v0, v2, v3}, Lorg/andengine/util/math/MathUtils;->revertRotateAroundCenter([FFFF)[F

    .line 475
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v1, v1, v6

    sget-object v2, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v2, v2, v7

    invoke-virtual {p1, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 477
    :cond_0
    return-void
.end method

.method private unapplyCameraSceneRotation([F)V
    .locals 5
    .parameter "pCameraSceneCoordinates"

    .prologue
    const/high16 v4, 0x3f00

    .line 459
    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    neg-float v0, v1

    .line 461
    .local v0, cameraSceneRotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 462
    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    iget v3, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {p1, v0, v1, v2}, Lorg/andengine/util/math/MathUtils;->revertRotateAroundCenter([FFFF)[F

    .line 464
    :cond_0
    return-void
.end method

.method private unapplySceneRotation(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 6
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 427
    .local v0, rotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 428
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 429
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    .line 431
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/andengine/util/math/MathUtils;->revertRotateAroundCenter([FFFF)[F

    .line 433
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v1, v1, v4

    sget-object v2, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 435
    :cond_0
    return-void
.end method

.method private unapplySceneRotation([F)V
    .locals 3
    .parameter "pSceneCoordinates"

    .prologue
    .line 417
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 419
    .local v0, rotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/andengine/util/math/MathUtils;->revertRotateAroundCenter([FFFF)[F

    .line 422
    :cond_0
    return-void
.end method


# virtual methods
.method protected applySceneToCameraSceneOffset(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 2
    .parameter "pSceneTouchEvent"

    .prologue
    .line 380
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    neg-float v0, v0

    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/touch/TouchEvent;->offset(FF)V

    .line 381
    return-void
.end method

.method protected applySceneToCameraSceneOffset([F)V
    .locals 3
    .parameter "pSceneCoordinates"

    .prologue
    .line 384
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 385
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 386
    return-void
.end method

.method public clearUpdateHandlers()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0}, Lorg/andengine/engine/handler/UpdateHandlerList;->clear()V

    goto :goto_0
.end method

.method public convertCameraSceneToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 0
    .parameter "pCameraSceneTouchEvent"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lorg/andengine/engine/camera/Camera;->unapplyCameraSceneRotation(Lorg/andengine/input/touch/TouchEvent;)V

    .line 357
    invoke-virtual {p0, p1}, Lorg/andengine/engine/camera/Camera;->unapplySceneToCameraSceneOffset(Lorg/andengine/input/touch/TouchEvent;)V

    .line 359
    invoke-direct {p0, p1}, Lorg/andengine/engine/camera/Camera;->applySceneRotation(Lorg/andengine/input/touch/TouchEvent;)V

    .line 360
    return-void
.end method

.method public convertSceneToCameraSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 0
    .parameter "pSceneTouchEvent"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lorg/andengine/engine/camera/Camera;->unapplySceneRotation(Lorg/andengine/input/touch/TouchEvent;)V

    .line 332
    invoke-virtual {p0, p1}, Lorg/andengine/engine/camera/Camera;->applySceneToCameraSceneOffset(Lorg/andengine/input/touch/TouchEvent;)V

    .line 334
    invoke-direct {p0, p1}, Lorg/andengine/engine/camera/Camera;->applyCameraSceneRotation(Lorg/andengine/input/touch/TouchEvent;)V

    .line 335
    return-void
.end method

.method public convertSceneToSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V
    .locals 6
    .parameter "pSceneTouchEvent"
    .parameter "pSurfaceWidth"
    .parameter "pSurfaceHeight"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 520
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/engine/camera/Camera;->convertAxisAlignedSceneToSurfaceTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V

    .line 522
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 523
    .local v0, rotation:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 525
    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 526
    int-to-float v1, p2

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 529
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    .line 531
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    shr-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    shr-int/lit8 v3, p3, 0x1

    int-to-float v3, v3

    invoke-static {v1, v0, v2, v3}, Lorg/andengine/util/math/MathUtils;->revertRotateAroundCenter([FFFF)[F

    .line 533
    sget-object v1, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v1, v1, v4

    sget-object v2, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Lorg/andengine/input/touch/TouchEvent;->set(FF)V

    goto :goto_0
.end method

.method public convertSurfaceToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;II)V
    .locals 10
    .parameter "pSurfaceTouchEvent"
    .parameter "pSurfaceWidth"
    .parameter "pSurfaceHeight"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v6, 0x3f80

    .line 484
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    .line 485
    .local v3, surfaceTouchEventX:F
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    .line 487
    .local v4, surfaceTouchEventY:F
    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 488
    .local v2, rotation:F
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-nez v5, :cond_0

    .line 489
    int-to-float v5, p2

    div-float v0, v3, v5

    .line 490
    .local v0, relativeX:F
    int-to-float v5, p3

    div-float v1, v4, v5

    .line 504
    .local v1, relativeY:F
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/andengine/engine/camera/Camera;->convertAxisAlignedSurfaceToSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;FF)V

    .line 505
    return-void

    .line 491
    .end local v0           #relativeX:F
    .end local v1           #relativeY:F
    :cond_0
    const/high16 v5, 0x4334

    cmpl-float v5, v2, v5

    if-nez v5, :cond_1

    .line 492
    int-to-float v5, p2

    div-float v5, v3, v5

    sub-float v0, v6, v5

    .line 493
    .restart local v0       #relativeX:F
    int-to-float v5, p3

    div-float v5, v4, v5

    sub-float v1, v6, v5

    .line 494
    .restart local v1       #relativeY:F
    goto :goto_0

    .line 495
    .end local v0           #relativeX:F
    .end local v1           #relativeY:F
    :cond_1
    sget-object v5, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aput v3, v5, v8

    .line 496
    sget-object v5, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aput v4, v5, v9

    .line 498
    sget-object v5, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    shr-int/lit8 v6, p2, 0x1

    int-to-float v6, v6

    shr-int/lit8 v7, p3, 0x1

    int-to-float v7, v7

    invoke-static {v5, v2, v6, v7}, Lorg/andengine/util/math/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 500
    sget-object v5, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v5, v5, v8

    int-to-float v6, p2

    div-float v0, v5, v6

    .line 501
    .restart local v0       #relativeX:F
    sget-object v5, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    aget v5, v5, v9

    int-to-float v6, p3

    div-float v1, v5, v6

    .restart local v1       #relativeY:F
    goto :goto_0
.end method

.method public getCameraSceneCoordinatesFromSceneCoordinates(FF)[F
    .locals 2
    .parameter "pSceneX"
    .parameter "pSceneY"

    .prologue
    .line 338
    sget-object v0, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 339
    sget-object v0, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 341
    sget-object v0, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p0, v0}, Lorg/andengine/engine/camera/Camera;->getCameraSceneCoordinatesFromSceneCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getCameraSceneCoordinatesFromSceneCoordinates([F)[F
    .locals 0
    .parameter "pSceneCoordinates"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lorg/andengine/engine/camera/Camera;->unapplySceneRotation([F)V

    .line 347
    invoke-virtual {p0, p1}, Lorg/andengine/engine/camera/Camera;->applySceneToCameraSceneOffset([F)V

    .line 349
    invoke-direct {p0, p1}, Lorg/andengine/engine/camera/Camera;->applyCameraSceneRotation([F)V

    .line 351
    return-object p1
.end method

.method public getCameraSceneRotation()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    return v0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHUD()Lorg/andengine/engine/camera/hud/HUD;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mHUD:Lorg/andengine/engine/camera/hud/HUD;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getHeightRaw()F
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    return v0
.end method

.method public getSceneCoordinatesFromCameraSceneCoordinates(FF)[F
    .locals 2
    .parameter "pCameraSceneX"
    .parameter "pCameraSceneY"

    .prologue
    .line 363
    sget-object v0, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 364
    sget-object v0, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 366
    sget-object v0, Lorg/andengine/engine/camera/Camera;->VERTICES_TMP:[F

    invoke-virtual {p0, v0}, Lorg/andengine/engine/camera/Camera;->getSceneCoordinatesFromCameraSceneCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneCoordinatesFromCameraSceneCoordinates([F)[F
    .locals 0
    .parameter "pCameraSceneCoordinates"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lorg/andengine/engine/camera/Camera;->unapplyCameraSceneRotation([F)V

    .line 372
    invoke-virtual {p0, p1}, Lorg/andengine/engine/camera/Camera;->unapplySceneToCameraSceneOffset([F)V

    .line 374
    invoke-direct {p0, p1}, Lorg/andengine/engine/camera/Camera;->applySceneRotation([F)V

    .line 376
    return-object p1
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceWidth:I

    return v0
.end method

.method public getSurfaceX()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceX:I

    return v0
.end method

.method public getSurfaceY()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceY:I

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getWidthRaw()F
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getXMax()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    return v0
.end method

.method public getXMin()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    return v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    return v0
.end method

.method public getZFar()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mZFar:F

    return v0
.end method

.method public getZNear()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mZNear:F

    return v0
.end method

.method public hasHUD()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mHUD:Lorg/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLineVisible(Lorg/andengine/entity/primitive/Line;)Z
    .locals 1
    .parameter "pLine"

    .prologue
    .line 280
    invoke-static {p0, p1}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->isVisible(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/primitive/Line;)Z

    move-result v0

    return v0
.end method

.method public isRectangularShapeVisible(FFFFLorg/andengine/util/adt/transformation/Transformation;)Z
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pLocalToSceneTransformation"

    .prologue
    .line 288
    invoke-static/range {p0 .. p5}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->isVisible(Lorg/andengine/engine/camera/Camera;FFFFLorg/andengine/util/adt/transformation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public isRectangularShapeVisible(Lorg/andengine/entity/shape/RectangularShape;)Z
    .locals 1
    .parameter "pRectangularShape"

    .prologue
    .line 284
    invoke-static {p0, p1}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->isVisible(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    return v0
.end method

.method public isResizeOnSurfaceSizeChanged()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/andengine/engine/camera/Camera;->mResizeOnSurfaceSizeChanged:Z

    return v0
.end method

.method public isRotated()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetCenter(FF)V
    .locals 2
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 167
    return-void
.end method

.method public onApplyCameraSceneMatrix(Lorg/andengine/opengl/util/GLState;)V
    .locals 9
    .parameter "pGLState"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v2

    .line 314
    .local v2, widthRaw:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v3

    .line 315
    .local v3, heightRaw:F
    iget v5, p0, Lorg/andengine/engine/camera/Camera;->mZNear:F

    iget v6, p0, Lorg/andengine/engine/camera/Camera;->mZFar:F

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/GLState;->orthoProjectionGLMatrixf(FFFFFF)V

    .line 317
    iget v7, p0, Lorg/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    .line 318
    .local v7, cameraSceneRotation:F
    cmpl-float v0, v7, v1

    if-eqz v0, :cond_0

    .line 319
    mul-float v0, v2, v8

    mul-float v1, v3, v8

    invoke-static {p1, v0, v1, v7}, Lorg/andengine/engine/camera/Camera;->applyRotation(Lorg/andengine/opengl/util/GLState;FFF)V

    .line 321
    :cond_0
    return-void
.end method

.method public onApplySceneBackgroundMatrix(Lorg/andengine/opengl/util/GLState;)V
    .locals 9
    .parameter "pGLState"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v2

    .line 302
    .local v2, widthRaw:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v3

    .line 304
    .local v3, heightRaw:F
    iget v5, p0, Lorg/andengine/engine/camera/Camera;->mZNear:F

    iget v6, p0, Lorg/andengine/engine/camera/Camera;->mZFar:F

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/GLState;->orthoProjectionGLMatrixf(FFFFFF)V

    .line 306
    iget v7, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 307
    .local v7, rotation:F
    cmpl-float v0, v7, v1

    if-eqz v0, :cond_0

    .line 308
    mul-float v0, v2, v8

    mul-float v1, v3, v8

    invoke-static {p1, v0, v1, v7}, Lorg/andengine/engine/camera/Camera;->applyRotation(Lorg/andengine/opengl/util/GLState;FFF)V

    .line 310
    :cond_0
    return-void
.end method

.method public onApplySceneMatrix(Lorg/andengine/opengl/util/GLState;)V
    .locals 8
    .parameter "pGLState"

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMin()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMax()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMax()F

    move-result v3

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMin()F

    move-result v4

    iget v5, p0, Lorg/andengine/engine/camera/Camera;->mZNear:F

    iget v6, p0, Lorg/andengine/engine/camera/Camera;->mZFar:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/GLState;->orthoProjectionGLMatrixf(FFFFFF)V

    .line 294
    iget v7, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 295
    .local v7, rotation:F
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v1

    invoke-static {p1, v0, v1, v7}, Lorg/andengine/engine/camera/Camera;->applyRotation(Lorg/andengine/opengl/util/GLState;FFF)V

    .line 298
    :cond_0
    return-void
.end method

.method public onDrawHUD(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 267
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mHUD:Lorg/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mHUD:Lorg/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p1, p0}, Lorg/andengine/engine/camera/hud/HUD;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 270
    :cond_0
    return-void
.end method

.method protected onSurfaceSizeChanged(IIIIIIII)V
    .locals 15
    .parameter "pOldSurfaceX"
    .parameter "pOldSurfaceY"
    .parameter "pOldSurfaceWidth"
    .parameter "pOldSurfaceHeight"
    .parameter "pNewSurfaceX"
    .parameter "pNewSurfaceY"
    .parameter "pNewSurfaceWidth"
    .parameter "pNewSurfaceHeight"

    .prologue
    .line 589
    iget-boolean v13, p0, Lorg/andengine/engine/camera/Camera;->mResizeOnSurfaceSizeChanged:Z

    if-eqz v13, :cond_0

    .line 590
    move/from16 v0, p7

    int-to-float v13, v0

    move/from16 v0, p3

    int-to-float v14, v0

    div-float v8, v13, v14

    .line 591
    .local v8, surfaceWidthRatio:F
    move/from16 v0, p8

    int-to-float v13, v0

    move/from16 v0, p4

    int-to-float v14, v0

    div-float v7, v13, v14

    .line 593
    .local v7, surfaceHeightRatio:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v1

    .line 594
    .local v1, centerX:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    .line 596
    .local v2, centerY:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v13

    mul-float v5, v13, v8

    .line 597
    .local v5, newWidthRaw:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v13

    mul-float v3, v13, v7

    .line 599
    .local v3, newHeightRaw:F
    const/high16 v13, 0x3f00

    mul-float v6, v5, v13

    .line 600
    .local v6, newWidthRawHalf:F
    const/high16 v13, 0x3f00

    mul-float v4, v3, v13

    .line 602
    .local v4, newHeightRawHalf:F
    sub-float v10, v1, v6

    .line 603
    .local v10, xMin:F
    sub-float v12, v2, v4

    .line 604
    .local v12, yMin:F
    add-float v9, v1, v6

    .line 605
    .local v9, xMax:F
    add-float v11, v2, v4

    .line 607
    .local v11, yMax:F
    invoke-virtual {p0, v10, v12, v9, v11}, Lorg/andengine/engine/camera/Camera;->set(FFFF)V

    .line 610
    .end local v1           #centerX:F
    .end local v2           #centerY:F
    .end local v3           #newHeightRaw:F
    .end local v4           #newHeightRawHalf:F
    .end local v5           #newWidthRaw:F
    .end local v6           #newWidthRawHalf:F
    .end local v7           #surfaceHeightRatio:F
    .end local v8           #surfaceWidthRatio:F
    .end local v9           #xMax:F
    .end local v10           #xMin:F
    .end local v11           #yMax:F
    .end local v12           #yMin:F
    :cond_0
    move/from16 v0, p5

    iput v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceX:I

    .line 611
    move/from16 v0, p6

    iput v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceY:I

    .line 612
    move/from16 v0, p7

    iput v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceWidth:I

    .line 613
    move/from16 v0, p8

    iput v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceHeight:I

    .line 614
    return-void
.end method

.method protected onSurfaceSizeInitialized(IIII)V
    .locals 0
    .parameter "pSurfaceX"
    .parameter "pSurfaceY"
    .parameter "pSurfaceWidth"
    .parameter "pSurfaceHeight"

    .prologue
    .line 582
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceX:I

    .line 583
    iput p2, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceY:I

    .line 584
    iput p3, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceWidth:I

    .line 585
    iput p4, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceHeight:I

    .line 586
    return-void
.end method

.method public onUpdate(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 246
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->onUpdate(F)V

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mHUD:Lorg/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mHUD:Lorg/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/camera/hud/HUD;->onUpdate(F)V

    .line 254
    :cond_1
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->updateChaseEntity()V

    .line 255
    return-void
.end method

.method public registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .parameter "pUpdateHandler"

    .prologue
    .line 550
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 551
    invoke-direct {p0}, Lorg/andengine/engine/camera/Camera;->allocateUpdateHandlers()V

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->add(Ljava/lang/Object;)Z

    .line 554
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public set(FFFF)V
    .locals 0
    .parameter "pXMin"
    .parameter "pYMin"
    .parameter "pXMax"
    .parameter "pYMax"

    .prologue
    .line 104
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    .line 105
    iput p3, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    .line 106
    iput p2, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    .line 107
    iput p4, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    .line 108
    return-void
.end method

.method public setCameraSceneRotation(F)V
    .locals 0
    .parameter "pCameraSceneRotation"

    .prologue
    .line 205
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    .line 206
    return-void
.end method

.method public setCenter(FF)V
    .locals 3
    .parameter "pCenterX"
    .parameter "pCenterY"

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v2

    sub-float v0, p1, v2

    .line 157
    .local v0, dX:F
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    sub-float v1, p2, v2

    .line 159
    .local v1, dY:F
    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    .line 160
    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    .line 161
    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    .line 162
    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    .line 163
    return-void
.end method

.method public setChaseEntity(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pChaseEntity"

    .prologue
    .line 185
    iput-object p1, p0, Lorg/andengine/engine/camera/Camera;->mChaseEntity:Lorg/andengine/entity/IEntity;

    .line 186
    return-void
.end method

.method public setHUD(Lorg/andengine/engine/camera/hud/HUD;)V
    .locals 0
    .parameter "pHUD"

    .prologue
    .line 174
    iput-object p1, p0, Lorg/andengine/engine/camera/Camera;->mHUD:Lorg/andengine/engine/camera/hud/HUD;

    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1, p0}, Lorg/andengine/engine/camera/hud/HUD;->setCamera(Lorg/andengine/engine/camera/Camera;)V

    .line 178
    :cond_0
    return-void
.end method

.method public setResizeOnSurfaceSizeChanged(Z)V
    .locals 0
    .parameter "pResizeOnSurfaceSizeChanged"

    .prologue
    .line 237
    iput-boolean p1, p0, Lorg/andengine/engine/camera/Camera;->mResizeOnSurfaceSizeChanged:Z

    .line 238
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "pRotation"

    .prologue
    .line 197
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mRotation:F

    .line 198
    return-void
.end method

.method public setSurfaceSize(IIII)V
    .locals 9
    .parameter "pSurfaceX"
    .parameter "pSurfaceY"
    .parameter "pSurfaceWidth"
    .parameter "pSurfaceHeight"

    .prologue
    .line 225
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceHeight:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceWidth:I

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/engine/camera/Camera;->onSurfaceSizeInitialized(IIII)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceWidth:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceHeight:I

    if-eq v0, p4, :cond_0

    .line 228
    :cond_2
    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceX:I

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceY:I

    iget v3, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceWidth:I

    iget v4, p0, Lorg/andengine/engine/camera/Camera;->mSurfaceHeight:I

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lorg/andengine/engine/camera/Camera;->onSurfaceSizeChanged(IIIIIIII)V

    goto :goto_0
.end method

.method public setXMax(F)V
    .locals 0
    .parameter "pXMax"

    .prologue
    .line 84
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mXMax:F

    .line 85
    return-void
.end method

.method public setXMin(F)V
    .locals 0
    .parameter "pXMin"

    .prologue
    .line 76
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    .line 77
    return-void
.end method

.method public setYMax(F)V
    .locals 0
    .parameter "pYMax"

    .prologue
    .line 100
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mYMax:F

    .line 101
    return-void
.end method

.method public setYMin(F)V
    .locals 0
    .parameter "pYMin"

    .prologue
    .line 92
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    .line 93
    return-void
.end method

.method public setZClippingPlanes(FF)V
    .locals 0
    .parameter "pNearZClippingPlane"
    .parameter "pFarZClippingPlane"

    .prologue
    .line 127
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mZNear:F

    .line 128
    iput p2, p0, Lorg/andengine/engine/camera/Camera;->mZFar:F

    .line 129
    return-void
.end method

.method public setZFar(F)V
    .locals 0
    .parameter "pZFar"

    .prologue
    .line 123
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mZFar:F

    .line 124
    return-void
.end method

.method public setZNear(F)V
    .locals 0
    .parameter "pZNear"

    .prologue
    .line 119
    iput p1, p0, Lorg/andengine/engine/camera/Camera;->mZNear:F

    .line 120
    return-void
.end method

.method protected unapplySceneToCameraSceneOffset(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 2
    .parameter "pCameraSceneTouchEvent"

    .prologue
    .line 389
    iget v0, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    iget v1, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/touch/TouchEvent;->offset(FF)V

    .line 390
    return-void
.end method

.method protected unapplySceneToCameraSceneOffset([F)V
    .locals 3
    .parameter "pCameraSceneCoordinates"

    .prologue
    .line 393
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mXMin:F

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 394
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lorg/andengine/engine/camera/Camera;->mYMin:F

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 395
    return-void
.end method

.method public unregisterUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)Z
    .locals 1
    .parameter "pUpdateHandler"

    .prologue
    .line 557
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 560
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterUpdateHandlers(Lorg/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
    .locals 1
    .parameter "pUpdateHandlerMatcher"

    .prologue
    .line 564
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 565
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/engine/camera/Camera;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->removeAll(Lorg/andengine/util/IMatcher;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateChaseEntity()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lorg/andengine/engine/camera/Camera;->mChaseEntity:Lorg/andengine/entity/IEntity;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lorg/andengine/engine/camera/Camera;->mChaseEntity:Lorg/andengine/entity/IEntity;

    invoke-interface {v1}, Lorg/andengine/entity/IEntity;->getSceneCenterCoordinates()[F

    move-result-object v0

    .line 275
    .local v0, centerCoordinates:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lorg/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 277
    .end local v0           #centerCoordinates:[F
    :cond_0
    return-void
.end method
