.class public Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;
.super Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;
.source "DigitalOnScreenControl.java"


# static fields
.field private static final ANGLE_DELTA:F = 22.5f

.field private static final EXTENT_DIAGONAL:F = 0.354f

.field private static final EXTENT_SIDE:F = 0.5f


# instance fields
.field private mAllowDiagonal:Z


# direct methods
.method public constructor <init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 10
    .parameter "pX"
    .parameter "pY"
    .parameter "pCamera"
    .parameter "pControlBaseTextureRegion"
    .parameter "pControlKnobTextureRegion"
    .parameter "pTimeBetweenUpdates"
    .parameter "pVertexBufferObjectManager"
    .parameter "pOnScreenControlListener"

    .prologue
    .line 37
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;-><init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FZLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    .line 38
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FZLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 10
    .parameter "pX"
    .parameter "pY"
    .parameter "pCamera"
    .parameter "pControlBaseTextureRegion"
    .parameter "pControlKnobTextureRegion"
    .parameter "pTimeBetweenUpdates"
    .parameter "pAllowDiagonal"
    .parameter "pVertexBufferObjectManager"
    .parameter "pOnScreenControlListener"

    .prologue
    .line 41
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    .line 43
    move/from16 v0, p7

    iput-boolean v0, p0, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    .line 44
    return-void
.end method

.method private static testDiagonalAngle(FF)Z
    .locals 2
    .parameter "pTestAngle"
    .parameter "pActualAngle"

    .prologue
    const/high16 v1, 0x41b4

    .line 112
    sub-float v0, p0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    add-float v0, p0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAllowDiagonal()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    return v0
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 8
    .parameter "pRelativeX"
    .parameter "pRelativeY"

    .prologue
    const/high16 v7, 0x3f00

    const v6, 0x3eb53f7d

    const/high16 v5, -0x4100

    const v4, -0x414ac083

    const/4 v3, 0x0

    .line 64
    cmpl-float v1, p1, v3

    if-nez v1, :cond_1

    cmpl-float v1, p2, v3

    if-nez v1, :cond_1

    .line 65
    invoke-super {p0, v3, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-boolean v1, p0, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    if-eqz v1, :cond_b

    .line 70
    invoke-static {p2, p1}, Lorg/andengine/util/math/MathUtils;->atan2(FF)F

    move-result v1

    invoke-static {v1}, Lorg/andengine/util/math/MathUtils;->radToDeg(F)F

    move-result v1

    const/high16 v2, 0x4334

    add-float v0, v1, v2

    .line 71
    .local v0, angle:F
    invoke-static {v3, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x43b4

    invoke-static {v1, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    :cond_2
    invoke-super {p0, v5, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 73
    :cond_3
    const/high16 v1, 0x4234

    invoke-static {v1, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    invoke-super {p0, v4, v4}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 75
    :cond_4
    const/high16 v1, 0x42b4

    invoke-static {v1, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    invoke-super {p0, v3, v5}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 77
    :cond_5
    const/high16 v1, 0x4307

    invoke-static {v1, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    invoke-super {p0, v6, v4}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 79
    :cond_6
    const/high16 v1, 0x4334

    invoke-static {v1, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 80
    invoke-super {p0, v7, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 81
    :cond_7
    const/high16 v1, 0x4361

    invoke-static {v1, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 82
    invoke-super {p0, v6, v6}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 83
    :cond_8
    const/high16 v1, 0x4387

    invoke-static {v1, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 84
    invoke-super {p0, v3, v7}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 85
    :cond_9
    const v1, 0x439d8000

    invoke-static {v1, v0}, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 86
    invoke-super {p0, v4, v6}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 88
    :cond_a
    invoke-super {p0, v3, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    .line 91
    .end local v0           #angle:F
    :cond_b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    .line 92
    cmpl-float v1, p1, v3

    if-lez v1, :cond_c

    .line 93
    invoke-super {p0, v7, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 94
    :cond_c
    cmpg-float v1, p1, v3

    if-gez v1, :cond_d

    .line 95
    invoke-super {p0, v5, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 96
    :cond_d
    cmpl-float v1, p1, v3

    if-nez v1, :cond_0

    .line 97
    invoke-super {p0, v3, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 100
    :cond_e
    cmpl-float v1, p2, v3

    if-lez v1, :cond_f

    .line 101
    invoke-super {p0, v3, v7}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 102
    :cond_f
    cmpg-float v1, p2, v3

    if-gez v1, :cond_10

    .line 103
    invoke-super {p0, v3, v5}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    .line 104
    :cond_10
    cmpl-float v1, p2, v3

    if-nez v1, :cond_0

    .line 105
    invoke-super {p0, v3, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0
.end method

.method public setAllowDiagonal(Z)V
    .locals 0
    .parameter "pAllowDiagonal"

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    .line 56
    return-void
.end method
