.class public Lorg/andengine/input/touch/detector/HoldDetector;
.super Lorg/andengine/input/touch/detector/BaseDetector;
.source "HoldDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;
    }
.end annotation


# static fields
.field protected static final TRIGGER_HOLD_MAXIMUM_DISTANCE_DEFAULT:F = 10.0f

.field protected static final TRIGGER_HOLD_MINIMUM_MILLISECONDS_DEFAULT:J = 0xc8L


# instance fields
.field protected mDownTimeMilliseconds:J

.field protected mDownX:F

.field protected mDownY:F

.field protected final mHoldDetectorListener:Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

.field protected mHoldX:F

.field protected mHoldY:F

.field protected mMaximumDistanceExceeded:Z

.field protected mPointerID:I

.field protected mTriggerHoldMaximumDistance:F

.field protected mTriggerHoldMinimumMilliseconds:J

.field protected mTriggering:Z


# direct methods
.method public constructor <init>(JFLorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V
    .locals 2
    .parameter "pTriggerHoldMinimumMilliseconds"
    .parameter "pTriggerHoldMaximumDistance"
    .parameter "pHoldDetectorListener"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/andengine/input/touch/detector/BaseDetector;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    .line 33
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/andengine/input/touch/detector/HoldDetector;->setTriggerHoldMinimumMilliseconds(J)V

    .line 55
    invoke-virtual {p0, p3}, Lorg/andengine/input/touch/detector/HoldDetector;->setTriggerHoldMaximumDistance(F)V

    .line 56
    iput-object p4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldDetectorListener:Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V
    .locals 3
    .parameter "pHoldDetectorListener"

    .prologue
    .line 50
    const-wide/16 v0, 0xc8

    const/high16 v2, 0x4120

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/andengine/input/touch/detector/HoldDetector;-><init>(JFLorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getTriggerHoldMaximumDistance()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    return v0
.end method

.method public getTriggerHoldMinimumMilliseconds()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    return-wide v0
.end method

.method public isHolding()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggering:Z

    return v0
.end method

.method public onManagedTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 11
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v2

    .line 112
    .local v2, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return v4

    .line 114
    :pswitch_0
    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    if-ne v6, v10, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lorg/andengine/input/touch/detector/HoldDetector;->prepareHold(Lorg/andengine/input/touch/TouchEvent;)V

    move v4, v5

    .line 116
    goto :goto_0

    .line 122
    :pswitch_1
    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 123
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v6

    iput v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    .line 124
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v6

    iput v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    sub-long v0, v6, v8

    .line 127
    .local v0, holdTimeMilliseconds:J
    iget-wide v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_1

    .line 128
    iget-boolean v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggering:Z

    if-eqz v6, :cond_2

    .line 129
    invoke-virtual {p0, v0, v1}, Lorg/andengine/input/touch/detector/HoldDetector;->triggerOnHold(J)V

    :cond_1
    :goto_1
    move v4, v5

    .line 143
    goto :goto_0

    .line 131
    :cond_2
    iget v3, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    .line 132
    .local v3, triggerHoldMaximumDistance:F
    iget-boolean v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v6, :cond_3

    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v3

    if-gtz v6, :cond_3

    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v3

    if-gtz v6, :cond_3

    :goto_2
    iput-boolean v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    .line 134
    iget-boolean v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v4, :cond_1

    .line 135
    iget-boolean v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggering:Z

    if-nez v4, :cond_4

    .line 136
    invoke-virtual {p0}, Lorg/andengine/input/touch/detector/HoldDetector;->triggerOnHoldStarted()V

    goto :goto_1

    :cond_3
    move v4, v5

    .line 132
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/andengine/input/touch/detector/HoldDetector;->triggerOnHold(J)V

    goto :goto_1

    .line 151
    .end local v0           #holdTimeMilliseconds:J
    .end local v3           #triggerHoldMaximumDistance:F
    :pswitch_2
    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 152
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v6

    iput v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    .line 153
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v6

    iput v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    sub-long v0, v6, v8

    .line 156
    .restart local v0       #holdTimeMilliseconds:J
    iget-wide v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_5

    .line 157
    iget-boolean v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggering:Z

    if-eqz v6, :cond_6

    .line 158
    invoke-virtual {p0, v0, v1}, Lorg/andengine/input/touch/detector/HoldDetector;->triggerOnHoldFinished(J)V

    .line 169
    :cond_5
    :goto_3
    iput v10, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    move v4, v5

    .line 170
    goto/16 :goto_0

    .line 160
    :cond_6
    iget v3, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    .line 161
    .restart local v3       #triggerHoldMaximumDistance:F
    iget-boolean v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v6, :cond_7

    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v3

    if-gtz v6, :cond_7

    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v3

    if-gtz v6, :cond_7

    :goto_4
    iput-boolean v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    .line 163
    iget-boolean v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v4, :cond_5

    .line 164
    invoke-virtual {p0, v0, v1}, Lorg/andengine/input/touch/detector/HoldDetector;->triggerOnHoldFinished(J)V

    goto :goto_3

    :cond_7
    move v4, v5

    .line 161
    goto :goto_4

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected prepareHold(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 5
    .parameter "pSceneTouchEvent"

    .prologue
    .line 185
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 186
    .local v0, motionEvent:Landroid/view/MotionEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    .line 187
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownX:F

    .line 188
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownY:F

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    .line 190
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v1

    iput v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    .line 191
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    .line 192
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    .line 194
    iget-wide v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/andengine/input/touch/detector/HoldDetector;->triggerOnHoldStarted()V

    .line 197
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-boolean v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggering:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/andengine/input/touch/detector/HoldDetector;->triggerOnHoldFinished(J)V

    .line 102
    :cond_0
    iput-boolean v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggering:Z

    .line 103
    iput-boolean v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    .line 104
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    .line 106
    return-void
.end method

.method public setTriggerHoldMaximumDistance(F)V
    .locals 2
    .parameter "pTriggerHoldMaximumDistance"

    .prologue
    .line 79
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTriggerHoldMaximumDistance must not be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput p1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    .line 83
    return-void
.end method

.method public setTriggerHoldMinimumMilliseconds(J)V
    .locals 2
    .parameter "pTriggerHoldMinimumMilliseconds"

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTriggerHoldMinimumMilliseconds must not be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-wide p1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    .line 72
    return-void
.end method

.method protected triggerOnHold(J)V
    .locals 7
    .parameter "pHoldTimeMilliseconds"

    .prologue
    .line 208
    iget v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldDetectorListener:Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

    iget v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    iget v5, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    move-object v1, p0

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;->onHold(Lorg/andengine/input/touch/detector/HoldDetector;JIFF)V

    .line 211
    :cond_0
    return-void
.end method

.method protected triggerOnHoldFinished(J)V
    .locals 7
    .parameter "pHoldTimeMilliseconds"

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggering:Z

    .line 216
    iget v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldDetectorListener:Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

    iget v4, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    iget v5, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    iget v6, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    move-object v1, p0

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;->onHoldFinished(Lorg/andengine/input/touch/detector/HoldDetector;JIFF)V

    .line 219
    :cond_0
    return-void
.end method

.method protected triggerOnHoldStarted()V
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mTriggering:Z

    .line 202
    iget v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldDetectorListener:Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

    iget v1, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mPointerID:I

    iget v2, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    iget v3, p0, Lorg/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;->onHoldStarted(Lorg/andengine/input/touch/detector/HoldDetector;IFF)V

    .line 205
    :cond_0
    return-void
.end method
