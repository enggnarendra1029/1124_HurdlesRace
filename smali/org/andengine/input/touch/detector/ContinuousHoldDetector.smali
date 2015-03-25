.class public Lorg/andengine/input/touch/detector/ContinuousHoldDetector;
.super Lorg/andengine/input/touch/detector/HoldDetector;
.source "ContinuousHoldDetector.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# static fields
.field private static final TIME_BETWEEN_UPDATES_DEFAULT:F = 0.1f


# instance fields
.field private final mTimerHandler:Lorg/andengine/engine/handler/timer/TimerHandler;


# direct methods
.method public constructor <init>(JFFLorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V
    .locals 3
    .parameter "pTriggerHoldMinimumMilliseconds"
    .parameter "pTriggerHoldMaximumDistance"
    .parameter "pTimeBetweenUpdates"
    .parameter "pHoldDetectorListener"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/andengine/input/touch/detector/HoldDetector;-><init>(JFLorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V

    .line 46
    new-instance v0, Lorg/andengine/engine/handler/timer/TimerHandler;

    const/4 v1, 0x1

    new-instance v2, Lorg/andengine/input/touch/detector/ContinuousHoldDetector$1;

    invoke-direct {v2, p0}, Lorg/andengine/input/touch/detector/ContinuousHoldDetector$1;-><init>(Lorg/andengine/input/touch/detector/ContinuousHoldDetector;)V

    invoke-direct {v0, p4, v1, v2}, Lorg/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/andengine/engine/handler/timer/ITimerCallback;)V

    iput-object v0, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTimerHandler:Lorg/andengine/engine/handler/timer/TimerHandler;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V
    .locals 6
    .parameter "pHoldDetectorListener"

    .prologue
    .line 40
    const-wide/16 v1, 0xc8

    const/high16 v3, 0x4120

    const v4, 0x3dcccccd

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;-><init>(JFFLorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method fireListener()V
    .locals 6

    .prologue
    .line 133
    iget v2, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mPointerID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mDownTimeMilliseconds:J

    sub-long v0, v2, v4

    .line 135
    .local v0, holdTimeMilliseconds:J
    iget-wide v2, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTriggerHoldMinimumMilliseconds:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 136
    iget-boolean v2, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTriggering:Z

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {p0, v0, v1}, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->triggerOnHold(J)V

    .line 143
    .end local v0           #holdTimeMilliseconds:J
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local v0       #holdTimeMilliseconds:J
    :cond_1
    iget-boolean v2, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->triggerOnHoldStarted()V

    goto :goto_0
.end method

.method public onManagedTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 8
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 80
    .local v0, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 82
    :pswitch_0
    iget v3, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mPointerID:I

    if-ne v3, v7, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->prepareHold(Lorg/andengine/input/touch/TouchEvent;)V

    move v1, v2

    .line 84
    goto :goto_0

    .line 90
    :pswitch_1
    iget v3, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mPointerID:I

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 91
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    iput v3, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mHoldX:F

    .line 92
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mHoldY:F

    .line 94
    iget-boolean v3, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v3, :cond_1

    iget v3, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mDownX:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTriggerHoldMaximumDistance:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mDownY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTriggerHoldMaximumDistance:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mMaximumDistanceExceeded:Z

    move v1, v2

    .line 95
    goto :goto_0

    :cond_1
    move v1, v2

    .line 94
    goto :goto_1

    .line 103
    :pswitch_2
    iget v3, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mPointerID:I

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 104
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mHoldX:F

    .line 105
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mHoldY:F

    .line 107
    iget-boolean v1, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTriggering:Z

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mDownTimeMilliseconds:J

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->triggerOnHoldFinished(J)V

    .line 111
    :cond_2
    iput v7, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mPointerID:I

    move v1, v2

    .line 112
    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUpdate(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTimerHandler:Lorg/andengine/engine/handler/timer/TimerHandler;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/timer/TimerHandler;->onUpdate(F)V

    .line 65
    return-void
.end method

.method protected prepareHold(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 1
    .parameter "pSceneTouchEvent"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lorg/andengine/input/touch/detector/HoldDetector;->prepareHold(Lorg/andengine/input/touch/TouchEvent;)V

    .line 125
    iget-object v0, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTimerHandler:Lorg/andengine/engine/handler/timer/TimerHandler;

    invoke-virtual {v0}, Lorg/andengine/engine/handler/timer/TimerHandler;->reset()V

    .line 126
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lorg/andengine/input/touch/detector/HoldDetector;->reset()V

    .line 73
    iget-object v0, p0, Lorg/andengine/input/touch/detector/ContinuousHoldDetector;->mTimerHandler:Lorg/andengine/engine/handler/timer/TimerHandler;

    invoke-virtual {v0}, Lorg/andengine/engine/handler/timer/TimerHandler;->reset()V

    .line 74
    return-void
.end method
