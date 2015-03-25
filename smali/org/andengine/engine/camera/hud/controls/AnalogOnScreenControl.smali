.class public Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;
.super Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;
.source "AnalogOnScreenControl.java"

# interfaces
.implements Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;
    }
.end annotation


# instance fields
.field private final mClickDetector:Lorg/andengine/input/touch/detector/ClickDetector;


# direct methods
.method public constructor <init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FJLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;)V
    .locals 11
    .parameter "pX"
    .parameter "pY"
    .parameter "pCamera"
    .parameter "pControlBaseTextureRegion"
    .parameter "pControlKnobTextureRegion"
    .parameter "pTimeBetweenUpdates"
    .parameter "pOnControlClickMaximumMilliseconds"
    .parameter "pVertexBufferObjectManager"
    .parameter "pAnalogOnScreenControlListener"

    .prologue
    .line 42
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v2 .. v10}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    .line 29
    new-instance v2, Lorg/andengine/input/touch/detector/ClickDetector;

    invoke-direct {v2, p0}, Lorg/andengine/input/touch/detector/ClickDetector;-><init>(Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    iput-object v2, p0, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/andengine/input/touch/detector/ClickDetector;

    .line 44
    iget-object v2, p0, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/andengine/input/touch/detector/ClickDetector;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lorg/andengine/input/touch/detector/ClickDetector;->setTriggerClickMaximumMilliseconds(J)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;)V
    .locals 2
    .parameter "pX"
    .parameter "pY"
    .parameter "pCamera"
    .parameter "pControlBaseTextureRegion"
    .parameter "pControlKnobTextureRegion"
    .parameter "pTimeBetweenUpdates"
    .parameter "pVertexBufferObjectManager"
    .parameter "pAnalogOnScreenControlListener"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p8}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    .line 29
    new-instance v0, Lorg/andengine/input/touch/detector/ClickDetector;

    invoke-direct {v0, p0}, Lorg/andengine/input/touch/detector/ClickDetector;-><init>(Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    iput-object v0, p0, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/andengine/input/touch/detector/ClickDetector;

    .line 38
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/andengine/input/touch/detector/ClickDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/andengine/input/touch/detector/ClickDetector;->setEnabled(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public getOnScreenControlListener()Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->getOnScreenControlListener()Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    move-result-object v0

    check-cast v0, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    return-object v0
.end method

.method public bridge synthetic getOnScreenControlListener()Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->getOnScreenControlListener()Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/andengine/input/touch/detector/ClickDetector;IFF)V
    .locals 1
    .parameter "pClickDetector"
    .parameter "pPointerID"
    .parameter "pSceneX"
    .parameter "pSceneY"

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->getOnScreenControlListener()Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;->onControlClick(Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;)V

    .line 71
    return-void
.end method

.method protected onHandleControlBaseTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z
    .locals 2
    .parameter "pSceneTouchEvent"
    .parameter "pTouchAreaLocalX"
    .parameter "pTouchAreaLocalY"

    .prologue
    .line 75
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/andengine/input/touch/detector/ClickDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/andengine/input/touch/detector/ClickDetector;->onSceneTouchEvent(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z

    .line 76
    invoke-super {p0, p1, p2, p3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlBaseTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    return v0
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 4
    .parameter "pRelativeX"
    .parameter "pRelativeY"

    .prologue
    const/high16 v3, 0x3f00

    .line 81
    mul-float v1, p1, p1

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    const/high16 v2, 0x3e80

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 82
    invoke-super {p0, p1, p2}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p2, p1}, Lorg/andengine/util/math/MathUtils;->atan2(FF)F

    move-result v0

    .line 85
    .local v0, angleRad:F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-super {p0, v1, v2}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0
.end method

.method public setOnControlClickEnabled(Z)V
    .locals 1
    .parameter "pOnControlClickEnabled"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/andengine/input/touch/detector/ClickDetector;

    invoke-virtual {v0, p1}, Lorg/andengine/input/touch/detector/ClickDetector;->setEnabled(Z)V

    .line 58
    return-void
.end method

.method public setOnControlClickMaximumMilliseconds(J)V
    .locals 1
    .parameter "pOnControlClickMaximumMilliseconds"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/andengine/input/touch/detector/ClickDetector;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/input/touch/detector/ClickDetector;->setTriggerClickMaximumMilliseconds(J)V

    .line 62
    return-void
.end method
