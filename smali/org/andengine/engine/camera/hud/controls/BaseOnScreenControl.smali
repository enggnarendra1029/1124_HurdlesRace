.class public abstract Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;
.super Lorg/andengine/engine/camera/hud/HUD;
.source "BaseOnScreenControl.java"

# interfaces
.implements Lorg/andengine/entity/scene/IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerID:I

.field private final mControlBase:Lorg/andengine/entity/sprite/Sprite;

.field private final mControlKnob:Lorg/andengine/entity/sprite/Sprite;

.field private mControlValueX:F

.field private mControlValueY:F

.field private final mOnScreenControlListener:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;


# direct methods
.method public constructor <init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pCamera"
    .parameter "pControlBaseTextureRegion"
    .parameter "pControlKnobTextureRegion"
    .parameter "pTimeBetweenUpdates"
    .parameter "pVertexBufferObjectManager"
    .parameter "pOnScreenControlListener"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/andengine/engine/camera/hud/HUD;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    .line 53
    invoke-virtual {p0, p3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setCamera(Lorg/andengine/engine/camera/Camera;)V

    .line 55
    iput-object p8, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    .line 57
    new-instance v0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;-><init>(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    iput-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/andengine/entity/sprite/Sprite;

    .line 65
    new-instance v0, Lorg/andengine/entity/sprite/Sprite;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p5, p7}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    iput-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/andengine/entity/sprite/Sprite;

    .line 66
    invoke-virtual {p0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlKnobReleased()V

    .line 69
    invoke-virtual {p0, p0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setOnSceneTouchListener(Lorg/andengine/entity/scene/IOnSceneTouchListener;)V

    .line 70
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->registerTouchArea(Lorg/andengine/entity/scene/ITouchArea;)V

    .line 71
    new-instance v0, Lorg/andengine/engine/handler/timer/TimerHandler;

    const/4 v1, 0x1

    new-instance v2, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;

    invoke-direct {v2, p0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;-><init>(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;)V

    invoke-direct {v0, p6, v1, v2}, Lorg/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/andengine/engine/handler/timer/ITimerCallback;)V

    invoke-virtual {p0, v0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V

    .line 78
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 79
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setTouchAreaBindingOnActionDownEnabled(Z)V

    .line 82
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;)Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    return-object v0
.end method

.method static synthetic access$1(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    return v0
.end method

.method static synthetic access$2(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    return v0
.end method

.method private updateControlKnob(FF)V
    .locals 7
    .parameter "pTouchAreaLocalX"
    .parameter "pTouchAreaLocalY"

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    .line 171
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/andengine/entity/sprite/Sprite;

    .line 173
    .local v0, controlBase:Lorg/andengine/entity/sprite/Sprite;
    invoke-virtual {v0}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    invoke-static {v5, v3, p1}, Lorg/andengine/util/math/MathUtils;->bringToBounds(FFF)F

    move-result v3

    invoke-virtual {v0}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v4

    div-float/2addr v3, v4

    sub-float v1, v3, v6

    .line 174
    .local v1, relativeX:F
    invoke-virtual {v0}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    invoke-static {v5, v3, p2}, Lorg/andengine/util/math/MathUtils;->bringToBounds(FFF)F

    move-result v3

    invoke-virtual {v0}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    div-float/2addr v3, v4

    sub-float v2, v3, v6

    .line 176
    .local v2, relativeY:F
    invoke-virtual {p0, v1, v2}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 177
    return-void
.end method


# virtual methods
.method public getControlBase()Lorg/andengine/entity/sprite/Sprite;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method public getControlKnob()Lorg/andengine/entity/sprite/Sprite;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method public getOnScreenControlListener()Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    return-object v0
.end method

.method protected onHandleControlBaseLeft()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0, v0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 132
    return-void
.end method

.method protected onHandleControlBaseTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z
    .locals 4
    .parameter "pSceneTouchEvent"
    .parameter "pTouchAreaLocalX"
    .parameter "pTouchAreaLocalY"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 142
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v0

    .line 144
    .local v0, pointerID:I
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    :pswitch_0
    iget v1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v0, :cond_0

    .line 162
    invoke-direct {p0, p2, p3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->updateControlKnob(FF)V

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 146
    :pswitch_1
    iget v1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v3, :cond_0

    .line 147
    iput v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    .line 148
    invoke-direct {p0, p2, p3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->updateControlKnob(FF)V

    goto :goto_0

    .line 154
    :pswitch_2
    iget v1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v0, :cond_0

    .line 155
    iput v3, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    .line 156
    invoke-virtual {p0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlKnobReleased()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onHandleControlKnobReleased()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0, v0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 139
    return-void
.end method

.method public onSceneTouchEvent(Lorg/andengine/entity/scene/Scene;Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 2
    .parameter "pScene"
    .parameter "pSceneTouchEvent"

    .prologue
    .line 106
    invoke-virtual {p2}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v0

    .line 107
    .local v0, pointerID:I
    iget v1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlBaseLeft()V

    .line 110
    invoke-virtual {p2}, Lorg/andengine/input/touch/TouchEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 113
    :pswitch_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 8
    .parameter "pRelativeX"
    .parameter "pRelativeY"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v7, 0x3f00

    .line 184
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/andengine/entity/sprite/Sprite;

    .line 185
    .local v0, controlBase:Lorg/andengine/entity/sprite/Sprite;
    iget-object v2, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/andengine/entity/sprite/Sprite;

    .line 187
    .local v2, controlKnob:Lorg/andengine/entity/sprite/Sprite;
    mul-float v5, v6, p1

    iput v5, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    .line 188
    mul-float v5, v6, p2

    iput v5, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    .line 190
    invoke-virtual {v0}, Lorg/andengine/entity/sprite/Sprite;->getSceneCenterCoordinates()[F

    move-result-object v1

    .line 191
    .local v1, controlBaseSceneCenterCoordinates:[F
    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v2}, Lorg/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lorg/andengine/entity/sprite/Sprite;->getWidthScaled()F

    move-result v6

    mul-float/2addr v6, p1

    add-float v3, v5, v6

    .line 192
    .local v3, x:F
    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v2}, Lorg/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lorg/andengine/entity/sprite/Sprite;->getHeightScaled()F

    move-result v6

    mul-float/2addr v6, p2

    add-float v4, v5, v6

    .line 194
    .local v4, y:F
    invoke-virtual {v2, v3, v4}, Lorg/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 195
    return-void
.end method

.method public refreshControlKnobPosition()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 124
    iget v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    .line 125
    return-void
.end method
