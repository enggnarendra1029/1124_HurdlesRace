.class public Lorg/andengine/input/touch/detector/ScrollDetector;
.super Lorg/andengine/input/touch/detector/BaseDetector;
.source "ScrollDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;
    }
.end annotation


# static fields
.field private static final TRIGGER_SCROLL_MINIMUM_DISTANCE_DEFAULT:F = 10.0f


# instance fields
.field private mLastX:F

.field private mLastY:F

.field private mPointerID:I

.field private final mScrollDetectorListener:Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

.field private mTriggerScrollMinimumDistance:F

.field private mTriggering:Z


# direct methods
.method public constructor <init>(FLorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V
    .locals 1
    .parameter "pTriggerScrollMinimumDistance"
    .parameter "pScrollDetectorListener"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/andengine/input/touch/detector/BaseDetector;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    .line 42
    iput p1, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggerScrollMinimumDistance:F

    .line 43
    iput-object p2, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mScrollDetectorListener:Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V
    .locals 1
    .parameter "pScrollDetectorListener"

    .prologue
    .line 38
    const/high16 v0, 0x4120

    invoke-direct {p0, v0, p1}, Lorg/andengine/input/touch/detector/ScrollDetector;-><init>(FLorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V

    .line 39
    return-void
.end method

.method private prepareScroll(IFF)V
    .locals 1
    .parameter "pPointerID"
    .parameter "pTouchX"
    .parameter "pTouchY"

    .prologue
    .line 130
    iput p2, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastX:F

    .line 131
    iput p3, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastY:F

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggering:Z

    .line 133
    iput p1, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    .line 134
    return-void
.end method

.method private triggerOnScroll(FF)V
    .locals 2
    .parameter "pDistanceX"
    .parameter "pDistanceY"

    .prologue
    .line 143
    iget v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mScrollDetectorListener:Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

    iget v1, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;->onScroll(Lorg/andengine/input/touch/detector/ScrollDetector;IFF)V

    .line 146
    :cond_0
    return-void
.end method

.method private triggerOnScrollFinished(FF)V
    .locals 2
    .parameter "pDistanceX"
    .parameter "pDistanceY"

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggering:Z

    .line 151
    iget v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mScrollDetectorListener:Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

    iget v1, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;->onScrollFinished(Lorg/andengine/input/touch/detector/ScrollDetector;IFF)V

    .line 154
    :cond_0
    return-void
.end method

.method private triggerOnScrollStarted(FF)V
    .locals 2
    .parameter "pDistanceX"
    .parameter "pDistanceY"

    .prologue
    .line 137
    iget v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mScrollDetectorListener:Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

    iget v1, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;->onScrollStarted(Lorg/andengine/input/touch/detector/ScrollDetector;IFF)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public getTriggerScrollMinimumDistance()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggerScrollMinimumDistance:F

    return v0
.end method

.method protected getX(Lorg/andengine/input/touch/TouchEvent;)F
    .locals 1
    .parameter "pTouchEvent"

    .prologue
    .line 157
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    return v0
.end method

.method protected getY(Lorg/andengine/input/touch/TouchEvent;)F
    .locals 1
    .parameter "pTouchEvent"

    .prologue
    .line 161
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v0

    return v0
.end method

.method public onManagedTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 9
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lorg/andengine/input/touch/detector/ScrollDetector;->getX(Lorg/andengine/input/touch/TouchEvent;)F

    move-result v2

    .line 77
    .local v2, touchX:F
    invoke-virtual {p0, p1}, Lorg/andengine/input/touch/detector/ScrollDetector;->getY(Lorg/andengine/input/touch/TouchEvent;)F

    move-result v3

    .line 79
    .local v3, touchY:F
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v5, v6

    .line 121
    :cond_0
    :goto_0
    return v5

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v6

    invoke-direct {p0, v6, v2, v3}, Lorg/andengine/input/touch/detector/ScrollDetector;->prepareScroll(IFF)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget v7, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    if-ne v7, v8, :cond_1

    .line 85
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v6

    invoke-direct {p0, v6, v2, v3}, Lorg/andengine/input/touch/detector/ScrollDetector;->prepareScroll(IFF)V

    goto :goto_0

    .line 87
    :cond_1
    iget v7, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 88
    iget v6, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastX:F

    sub-float v0, v2, v6

    .line 89
    .local v0, distanceX:F
    iget v6, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastY:F

    sub-float v1, v3, v6

    .line 91
    .local v1, distanceY:F
    iget v4, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggerScrollMinimumDistance:F

    .line 92
    .local v4, triggerScrollMinimumDistance:F
    iget-boolean v6, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggering:Z

    if-nez v6, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v4

    if-gtz v6, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 93
    :cond_2
    iget-boolean v6, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggering:Z

    if-nez v6, :cond_3

    .line 94
    invoke-direct {p0, v0, v1}, Lorg/andengine/input/touch/detector/ScrollDetector;->triggerOnScrollStarted(FF)V

    .line 99
    :goto_1
    iput v2, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastX:F

    .line 100
    iput v3, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastY:F

    .line 101
    iput-boolean v5, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggering:Z

    goto :goto_0

    .line 96
    :cond_3
    invoke-direct {p0, v0, v1}, Lorg/andengine/input/touch/detector/ScrollDetector;->triggerOnScroll(FF)V

    goto :goto_1

    .end local v0           #distanceX:F
    .end local v1           #distanceY:F
    .end local v4           #triggerScrollMinimumDistance:F
    :cond_4
    move v5, v6

    .line 105
    goto :goto_0

    .line 109
    :pswitch_2
    iget v6, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 110
    iget v6, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastX:F

    sub-float v0, v2, v6

    .line 111
    .restart local v0       #distanceX:F
    iget v6, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastY:F

    sub-float v1, v3, v6

    .line 113
    .restart local v1       #distanceY:F
    iget-boolean v6, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggering:Z

    if-eqz v6, :cond_5

    .line 114
    invoke-direct {p0, v0, v1}, Lorg/andengine/input/touch/detector/ScrollDetector;->triggerOnScrollFinished(FF)V

    .line 117
    :cond_5
    iput v8, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-boolean v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggering:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mScrollDetectorListener:Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

    iget v1, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    invoke-interface {v0, p0, v1, v2, v2}, Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;->onScrollFinished(Lorg/andengine/input/touch/detector/ScrollDetector;IFF)V

    .line 68
    :cond_0
    iput v2, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastX:F

    .line 69
    iput v2, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mLastY:F

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggering:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mPointerID:I

    .line 72
    return-void
.end method

.method public setTriggerScrollMinimumDistance(F)V
    .locals 0
    .parameter "pTriggerScrollMinimumDistance"

    .prologue
    .line 55
    iput p1, p0, Lorg/andengine/input/touch/detector/ScrollDetector;->mTriggerScrollMinimumDistance:F

    .line 56
    return-void
.end method
