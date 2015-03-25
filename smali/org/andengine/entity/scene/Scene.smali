.class public Lorg/andengine/entity/scene/Scene;
.super Lorg/andengine/entity/Entity;
.source "Scene.java"


# static fields
.field private static final TOUCHAREAS_CAPACITY_DEFAULT:I = 0x4


# instance fields
.field private mBackground:Lorg/andengine/entity/scene/background/IBackground;

.field private mBackgroundEnabled:Z

.field protected mChildScene:Lorg/andengine/entity/scene/Scene;

.field private mChildSceneModalDraw:Z

.field private mChildSceneModalTouch:Z

.field private mChildSceneModalUpdate:Z

.field private mOnAreaTouchListener:Lorg/andengine/entity/scene/IOnAreaTouchListener;

.field private mOnAreaTouchTraversalBackToFront:Z

.field private mOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;

.field private mOnSceneTouchListenerBindingOnActionDownEnabled:Z

.field private final mOnSceneTouchListenerBindings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/entity/scene/IOnSceneTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mParentScene:Lorg/andengine/entity/scene/Scene;

.field private final mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

.field private mSecondsElapsedTotal:F

.field private mTouchAreaBindingOnActionDownEnabled:Z

.field private mTouchAreaBindingOnActionMoveEnabled:Z

.field private final mTouchAreaBindings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/entity/scene/ITouchArea;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchAreas:Lorg/andengine/util/adt/list/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/list/SmartList",
            "<",
            "Lorg/andengine/entity/scene/ITouchArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lorg/andengine/entity/Entity;-><init>()V

    .line 46
    new-instance v0, Lorg/andengine/util/adt/list/SmartList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/andengine/util/adt/list/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreas:Lorg/andengine/util/adt/list/SmartList;

    .line 48
    new-instance v0, Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v0}, Lorg/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    .line 54
    new-instance v0, Lorg/andengine/entity/scene/background/Background;

    sget-object v1, Lorg/andengine/util/color/Color;->BLACK:Lorg/andengine/util/color/Color;

    invoke-direct {v0, v1}, Lorg/andengine/entity/scene/background/Background;-><init>(Lorg/andengine/util/color/Color;)V

    iput-object v0, p0, Lorg/andengine/entity/scene/Scene;->mBackground:Lorg/andengine/entity/scene/background/IBackground;

    .line 55
    iput-boolean v3, p0, Lorg/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    .line 57
    iput-boolean v3, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    .line 59
    iput-boolean v2, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionDownEnabled:Z

    .line 60
    iput-boolean v2, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionMoveEnabled:Z

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    .line 62
    iput-boolean v2, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingOnActionDownEnabled:Z

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "pChildCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Lorg/andengine/entity/Entity;-><init>()V

    .line 46
    new-instance v1, Lorg/andengine/util/adt/list/SmartList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/andengine/util/adt/list/SmartList;-><init>(I)V

    iput-object v1, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreas:Lorg/andengine/util/adt/list/SmartList;

    .line 48
    new-instance v1, Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v1}, Lorg/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v1, p0, Lorg/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    .line 54
    new-instance v1, Lorg/andengine/entity/scene/background/Background;

    sget-object v2, Lorg/andengine/util/color/Color;->BLACK:Lorg/andengine/util/color/Color;

    invoke-direct {v1, v2}, Lorg/andengine/entity/scene/background/Background;-><init>(Lorg/andengine/util/color/Color;)V

    iput-object v1, p0, Lorg/andengine/entity/scene/Scene;->mBackground:Lorg/andengine/entity/scene/background/IBackground;

    .line 55
    iput-boolean v4, p0, Lorg/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    .line 57
    iput-boolean v4, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    .line 59
    iput-boolean v3, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionDownEnabled:Z

    .line 60
    iput-boolean v3, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionMoveEnabled:Z

    .line 61
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    .line 62
    iput-boolean v3, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingOnActionDownEnabled:Z

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 78
    return-void

    .line 76
    :cond_0
    new-instance v1, Lorg/andengine/entity/Entity;

    invoke-direct {v1}, Lorg/andengine/entity/Entity;-><init>()V

    invoke-virtual {p0, v1}, Lorg/andengine/entity/scene/Scene;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onAreaTouchEvent(Lorg/andengine/input/touch/TouchEvent;FFLorg/andengine/entity/scene/ITouchArea;)Ljava/lang/Boolean;
    .locals 5
    .parameter "pSceneTouchEvent"
    .parameter "sceneTouchEventX"
    .parameter "sceneTouchEventY"
    .parameter "touchArea"

    .prologue
    .line 405
    invoke-interface {p4, p2, p3}, Lorg/andengine/entity/scene/ITouchArea;->convertSceneToLocalCoordinates(FF)[F

    move-result-object v1

    .line 406
    .local v1, touchAreaLocalCoordinates:[F
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 407
    .local v2, touchAreaLocalX:F
    const/4 v4, 0x1

    aget v3, v1, v4

    .line 409
    .local v3, touchAreaLocalY:F
    invoke-interface {p4, p1, v2, v3}, Lorg/andengine/entity/scene/ITouchArea;->onAreaTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    .line 410
    .local v0, handledSelf:Z
    if-eqz v0, :cond_0

    .line 411
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 415
    :goto_0
    return-object v4

    .line 412
    :cond_0
    iget-object v4, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/andengine/entity/scene/IOnAreaTouchListener;

    if-eqz v4, :cond_1

    .line 413
    iget-object v4, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/andengine/entity/scene/IOnAreaTouchListener;

    invoke-interface {v4, p1, p4, v2, v3}, Lorg/andengine/entity/scene/IOnAreaTouchListener;->onAreaTouched(Lorg/andengine/input/touch/TouchEvent;Lorg/andengine/entity/scene/ITouchArea;FF)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 415
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setParentScene(Lorg/andengine/entity/scene/Scene;)V
    .locals 0
    .parameter "pParentScene"

    .prologue
    .line 129
    iput-object p1, p0, Lorg/andengine/entity/scene/Scene;->mParentScene:Lorg/andengine/entity/scene/Scene;

    .line 130
    return-void
.end method


# virtual methods
.method public back()V
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/andengine/entity/scene/Scene;->clearChildScene()V

    .line 466
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mParentScene:Lorg/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mParentScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v0}, Lorg/andengine/entity/scene/Scene;->clearChildScene()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/entity/scene/Scene;->mParentScene:Lorg/andengine/entity/scene/Scene;

    .line 470
    :cond_0
    return-void
.end method

.method public clearChildScene()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/entity/scene/Scene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    .line 158
    return-void
.end method

.method public clearTouchAreas()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreas:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0}, Lorg/andengine/util/adt/list/SmartList;->clear()V

    .line 457
    return-void
.end method

.method public getBackground()Lorg/andengine/entity/scene/background/IBackground;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mBackground:Lorg/andengine/entity/scene/background/IBackground;

    return-object v0
.end method

.method public getChildScene()Lorg/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    return-object v0
.end method

.method public getOnAreaTouchListener()Lorg/andengine/entity/scene/IOnAreaTouchListener;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/andengine/entity/scene/IOnAreaTouchListener;

    return-object v0
.end method

.method public getOnSceneTouchListener()Lorg/andengine/entity/scene/IOnSceneTouchListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;

    return-object v0
.end method

.method public getSecondsElapsedTotal()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    return v0
.end method

.method public getTouchAreas()Lorg/andengine/util/adt/list/SmartList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/adt/list/SmartList",
            "<",
            "Lorg/andengine/entity/scene/ITouchArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreas:Lorg/andengine/util/adt/list/SmartList;

    return-object v0
.end method

.method public hasChildScene()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnAreaTouchListener()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/andengine/entity/scene/IOnAreaTouchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnSceneTouchListener()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    return v0
.end method

.method public isOnSceneTouchListenerBindingOnActionDownEnabled()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingOnActionDownEnabled:Z

    return v0
.end method

.method public isTouchAreaBindingOnActionDownEnabled()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionDownEnabled:Z

    return v0
.end method

.method public isTouchAreaBindingOnActionMoveEnabled()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionMoveEnabled:Z

    return v0
.end method

.method protected onApplyMatrix(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 272
    invoke-virtual {p2, p1}, Lorg/andengine/engine/camera/Camera;->onApplySceneMatrix(Lorg/andengine/opengl/util/GLState;)V

    .line 273
    return-void
.end method

.method protected onChildSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .parameter "pSceneTouchEvent"

    .prologue
    .line 420
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1}, Lorg/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method protected onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 2
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 240
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    .line 242
    .local v0, childScene:Lorg/andengine/entity/scene/Scene;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/andengine/entity/scene/Scene;->mChildSceneModalDraw:Z

    if-nez v1, :cond_2

    .line 243
    :cond_0
    iget-boolean v1, p0, Lorg/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->pushProjectionGLMatrix()V

    .line 246
    invoke-virtual {p2, p1}, Lorg/andengine/engine/camera/Camera;->onApplySceneBackgroundMatrix(Lorg/andengine/opengl/util/GLState;)V

    .line 247
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->loadModelViewGLMatrixIdentity()V

    .line 249
    iget-object v1, p0, Lorg/andengine/entity/scene/Scene;->mBackground:Lorg/andengine/entity/scene/background/IBackground;

    invoke-interface {v1, p1, p2}, Lorg/andengine/entity/scene/background/IBackground;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 251
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->popProjectionGLMatrix()V

    .line 255
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->pushProjectionGLMatrix()V

    .line 257
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/scene/Scene;->onApplyMatrix(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 258
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->loadModelViewGLMatrixIdentity()V

    .line 260
    invoke-super {p0, p1, p2}, Lorg/andengine/entity/Entity;->onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 262
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->popProjectionGLMatrix()V

    .line 266
    :cond_2
    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {v0, p1, p2}, Lorg/andengine/entity/scene/Scene;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 269
    :cond_3
    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 2
    .parameter "pSecondsElapsed"

    .prologue
    .line 277
    iget v1, p0, Lorg/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    .line 279
    iget-object v1, p0, Lorg/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v1, p1}, Lorg/andengine/engine/handler/runnable/RunnableHandler;->onUpdate(F)V

    .line 281
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    .line 282
    .local v0, childScene:Lorg/andengine/entity/scene/Scene;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/andengine/entity/scene/Scene;->mChildSceneModalUpdate:Z

    if-nez v1, :cond_1

    .line 283
    :cond_0
    iget-object v1, p0, Lorg/andengine/entity/scene/Scene;->mBackground:Lorg/andengine/entity/scene/background/IBackground;

    invoke-interface {v1, p1}, Lorg/andengine/entity/scene/background/IBackground;->onUpdate(F)V

    .line 284
    invoke-super {p0, p1}, Lorg/andengine/entity/Entity;->onManagedUpdate(F)V

    .line 287
    :cond_1
    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0, p1}, Lorg/andengine/entity/scene/Scene;->onUpdate(F)V

    .line 290
    :cond_2
    return-void
.end method

.method public onSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 21
    .parameter "pSceneTouchEvent"

    .prologue
    .line 293
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getAction()I

    move-result v3

    .line 294
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v10

    .line 295
    .local v10, isActionDown:Z
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->isActionMove()Z

    move-result v11

    .line 297
    .local v11, isActionMove:Z
    if-nez v10, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingOnActionDownEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/entity/scene/IOnSceneTouchListener;

    .line 300
    .local v4, boundOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;
    if-eqz v4, :cond_0

    .line 302
    packed-switch v3, :pswitch_data_0

    .line 307
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/scene/IOnSceneTouchListener;->onSceneTouchEvent(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 308
    .local v7, handled:Ljava/lang/Boolean;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 309
    const/16 v18, 0x1

    .line 400
    .end local v4           #boundOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;
    .end local v7           #handled:Ljava/lang/Boolean;
    :goto_1
    return v18

    .line 305
    .restart local v4       #boundOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 313
    .end local v4           #boundOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionDownEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    .line 315
    .local v15, touchAreaBindings:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/andengine/entity/scene/ITouchArea;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/andengine/entity/scene/ITouchArea;

    .line 318
    .local v5, boundTouchArea:Lorg/andengine/entity/scene/ITouchArea;
    if-eqz v5, :cond_1

    .line 319
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v12

    .line 320
    .local v12, sceneTouchEventX:F
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v13

    .line 323
    .local v13, sceneTouchEventY:F
    packed-switch v3, :pswitch_data_1

    .line 328
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13, v5}, Lorg/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/andengine/input/touch/TouchEvent;FFLorg/andengine/entity/scene/ITouchArea;)Ljava/lang/Boolean;

    move-result-object v7

    .line 329
    .restart local v7       #handled:Ljava/lang/Boolean;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 330
    const/16 v18, 0x1

    goto :goto_1

    .line 326
    .end local v7           #handled:Ljava/lang/Boolean;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 336
    .end local v5           #boundTouchArea:Lorg/andengine/entity/scene/ITouchArea;
    .end local v12           #sceneTouchEventX:F
    .end local v13           #sceneTouchEventY:F
    .end local v15           #touchAreaBindings:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/andengine/entity/scene/ITouchArea;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/andengine/entity/scene/Scene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    .line 337
    .local v6, childScene:Lorg/andengine/entity/scene/Scene;
    if-eqz v6, :cond_3

    .line 338
    invoke-virtual/range {p0 .. p1}, Lorg/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v8

    .line 339
    .local v8, handledByChild:Z
    if-eqz v8, :cond_2

    .line 340
    const/16 v18, 0x1

    goto :goto_1

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mChildSceneModalTouch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 342
    const/16 v18, 0x0

    goto :goto_1

    .line 346
    .end local v8           #handledByChild:Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v12

    .line 347
    .restart local v12       #sceneTouchEventX:F
    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v13

    .line 349
    .restart local v13       #sceneTouchEventY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreas:Lorg/andengine/util/adt/list/SmartList;

    move-object/from16 v17, v0

    .line 350
    .local v17, touchAreas:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/scene/ITouchArea;>;"
    if-eqz v17, :cond_4

    .line 351
    invoke-virtual/range {v17 .. v17}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v16

    .line 352
    .local v16, touchAreaCount:I
    if-lez v16, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 354
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move/from16 v0, v16

    if-lt v9, v0, :cond_6

    .line 387
    .end local v9           #i:I
    .end local v16           #touchAreaCount:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/scene/IOnSceneTouchListener;->onSceneTouchEvent(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 389
    .restart local v7       #handled:Ljava/lang/Boolean;
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 392
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingOnActionDownEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    if-eqz v10, :cond_5

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 355
    .end local v7           #handled:Ljava/lang/Boolean;
    .restart local v9       #i:I
    .restart local v16       #touchAreaCount:I
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/andengine/entity/scene/ITouchArea;

    .line 356
    .local v14, touchArea:Lorg/andengine/entity/scene/ITouchArea;
    invoke-interface {v14, v12, v13}, Lorg/andengine/entity/scene/ITouchArea;->contains(FF)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13, v14}, Lorg/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/andengine/input/touch/TouchEvent;FFLorg/andengine/entity/scene/ITouchArea;)Ljava/lang/Boolean;

    move-result-object v7

    .line 358
    .restart local v7       #handled:Ljava/lang/Boolean;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionDownEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    if-nez v10, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionMoveEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    if-eqz v11, :cond_9

    .line 362
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    :cond_9
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 354
    .end local v7           #handled:Ljava/lang/Boolean;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 369
    .end local v9           #i:I
    .end local v14           #touchArea:Lorg/andengine/entity/scene/ITouchArea;
    :cond_b
    add-int/lit8 v9, v16, -0x1

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_4

    .line 370
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/andengine/entity/scene/ITouchArea;

    .line 371
    .restart local v14       #touchArea:Lorg/andengine/entity/scene/ITouchArea;
    invoke-interface {v14, v12, v13}, Lorg/andengine/entity/scene/ITouchArea;->contains(FF)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13, v14}, Lorg/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/andengine/input/touch/TouchEvent;FFLorg/andengine/entity/scene/ITouchArea;)Ljava/lang/Boolean;

    move-result-object v7

    .line 373
    .restart local v7       #handled:Ljava/lang/Boolean;
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionDownEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    if-nez v10, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionMoveEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    if-eqz v11, :cond_e

    .line 377
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    :cond_e
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 369
    .end local v7           #handled:Ljava/lang/Boolean;
    :cond_f
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 397
    .end local v9           #i:I
    .end local v14           #touchArea:Lorg/andengine/entity/scene/ITouchArea;
    .end local v16           #touchAreaCount:I
    .restart local v7       #handled:Ljava/lang/Boolean;
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 400
    .end local v7           #handled:Ljava/lang/Boolean;
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 323
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "pRunnable"

    .prologue
    .line 440
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/runnable/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method

.method public registerTouchArea(Lorg/andengine/entity/scene/ITouchArea;)V
    .locals 1
    .parameter "pTouchArea"

    .prologue
    .line 444
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreas:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0}, Lorg/andengine/entity/Entity;->reset()V

    .line 427
    invoke-virtual {p0}, Lorg/andengine/entity/scene/Scene;->clearChildScene()V

    .line 428
    return-void
.end method

.method public setBackground(Lorg/andengine/entity/scene/background/IBackground;)V
    .locals 0
    .parameter "pBackground"

    .prologue
    .line 93
    iput-object p1, p0, Lorg/andengine/entity/scene/Scene;->mBackground:Lorg/andengine/entity/scene/background/IBackground;

    .line 94
    return-void
.end method

.method public setBackgroundEnabled(Z)V
    .locals 0
    .parameter "pEnabled"

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    .line 102
    return-void
.end method

.method public setChildScene(Lorg/andengine/entity/scene/Scene;)V
    .locals 1
    .parameter "pChildScene"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/andengine/entity/scene/Scene;->setChildScene(Lorg/andengine/entity/scene/Scene;ZZZ)V

    .line 146
    return-void
.end method

.method public setChildScene(Lorg/andengine/entity/scene/Scene;ZZZ)V
    .locals 0
    .parameter "pChildScene"
    .parameter "pModalDraw"
    .parameter "pModalUpdate"
    .parameter "pModalTouch"

    .prologue
    .line 149
    invoke-direct {p1, p0}, Lorg/andengine/entity/scene/Scene;->setParentScene(Lorg/andengine/entity/scene/Scene;)V

    .line 150
    iput-object p1, p0, Lorg/andengine/entity/scene/Scene;->mChildScene:Lorg/andengine/entity/scene/Scene;

    .line 151
    iput-boolean p2, p0, Lorg/andengine/entity/scene/Scene;->mChildSceneModalDraw:Z

    .line 152
    iput-boolean p3, p0, Lorg/andengine/entity/scene/Scene;->mChildSceneModalUpdate:Z

    .line 153
    iput-boolean p4, p0, Lorg/andengine/entity/scene/Scene;->mChildSceneModalTouch:Z

    .line 154
    return-void
.end method

.method public setChildSceneModal(Lorg/andengine/entity/scene/Scene;)V
    .locals 1
    .parameter "pChildScene"

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/andengine/entity/scene/Scene;->setChildScene(Lorg/andengine/entity/scene/Scene;ZZZ)V

    .line 142
    return-void
.end method

.method public setOnAreaTouchListener(Lorg/andengine/entity/scene/IOnAreaTouchListener;)V
    .locals 0
    .parameter "pOnAreaTouchListener"

    .prologue
    .line 117
    iput-object p1, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/andengine/entity/scene/IOnAreaTouchListener;

    .line 118
    return-void
.end method

.method public setOnAreaTouchTraversalBackToFront()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    .line 162
    return-void
.end method

.method public setOnAreaTouchTraversalFrontToBack()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    .line 166
    return-void
.end method

.method public setOnSceneTouchListener(Lorg/andengine/entity/scene/IOnSceneTouchListener;)V
    .locals 0
    .parameter "pOnSceneTouchListener"

    .prologue
    .line 105
    iput-object p1, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/andengine/entity/scene/IOnSceneTouchListener;

    .line 106
    return-void
.end method

.method public setOnSceneTouchListenerBindingOnActionDownEnabled(Z)V
    .locals 1
    .parameter "pOnSceneTouchListenerBindingOnActionDownEnabled"

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingOnActionDownEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 229
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 231
    :cond_0
    iput-boolean p1, p0, Lorg/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingOnActionDownEnabled:Z

    .line 232
    return-void
.end method

.method public setParent(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 433
    return-void
.end method

.method public setTouchAreaBindingOnActionDownEnabled(Z)V
    .locals 1
    .parameter "pTouchAreaBindingOnActionDownEnabled"

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionDownEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 189
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 191
    :cond_0
    iput-boolean p1, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionDownEnabled:Z

    .line 192
    return-void
.end method

.method public setTouchAreaBindingOnActionMoveEnabled(Z)V
    .locals 1
    .parameter "pTouchAreaBindingOnActionMoveEnabled"

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionMoveEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 209
    :cond_0
    iput-boolean p1, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreaBindingOnActionMoveEnabled:Z

    .line 210
    return-void
.end method

.method public unregisterTouchArea(Lorg/andengine/entity/scene/ITouchArea;)Z
    .locals 1
    .parameter "pTouchArea"

    .prologue
    .line 448
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreas:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregisterTouchAreas(Lorg/andengine/entity/scene/ITouchArea$ITouchAreaMatcher;)Z
    .locals 1
    .parameter "pTouchAreaMatcher"

    .prologue
    .line 452
    iget-object v0, p0, Lorg/andengine/entity/scene/Scene;->mTouchAreas:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->removeAll(Lorg/andengine/util/IMatcher;)Z

    move-result v0

    return v0
.end method
