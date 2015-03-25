.class public Lorg/andengine/input/touch/detector/PinchZoomDetector;
.super Lorg/andengine/input/touch/detector/BaseDetector;
.source "PinchZoomDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;
    }
.end annotation


# static fields
.field private static final TRIGGER_PINCHZOOM_MINIMUM_DISTANCE_DEFAULT:F = 10.0f


# instance fields
.field private mCurrentDistance:F

.field private mInitialDistance:F

.field private final mPinchZoomDetectorListener:Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;

.field private mPinchZooming:Z


# direct methods
.method public constructor <init>(Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;)V
    .locals 0
    .parameter "pPinchZoomDetectorListener"

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/andengine/input/touch/detector/BaseDetector;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZoomDetectorListener:Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;

    .line 39
    return-void
.end method

.method private static calculatePointerDistance(Landroid/view/MotionEvent;)F
    .locals 4
    .parameter "pMotionEvent"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/util/math/MathUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method private getZoomFactor()F
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mCurrentDistance:F

    iget v1, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mInitialDistance:F

    div-float/2addr v0, v1

    return v0
.end method

.method private static hasTwoOrMorePointers(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "pMotionEvent"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isZooming()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    return v0
.end method

.method public onManagedTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 6
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x4120

    .line 69
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 71
    .local v1, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 73
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 75
    :pswitch_1
    iget-boolean v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Lorg/andengine/input/touch/detector/PinchZoomDetector;->hasTwoOrMorePointers(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-static {v1}, Lorg/andengine/input/touch/detector/PinchZoomDetector;->calculatePointerDistance(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mInitialDistance:F

    .line 77
    iget v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mInitialDistance:F

    iput v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mCurrentDistance:F

    .line 78
    iget v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mInitialDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 79
    iput-boolean v5, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    .line 80
    iget-object v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZoomDetectorListener:Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;

    invoke-interface {v2, p0, p1}, Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;->onPinchZoomStarted(Lorg/andengine/input/touch/detector/PinchZoomDetector;Lorg/andengine/input/touch/TouchEvent;)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-boolean v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    if-eqz v2, :cond_0

    .line 88
    iput-boolean v4, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    .line 89
    iget-object v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZoomDetectorListener:Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;

    invoke-direct {p0}, Lorg/andengine/input/touch/detector/PinchZoomDetector;->getZoomFactor()F

    move-result v3

    invoke-interface {v2, p0, p1, v3}, Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;->onPinchZoomFinished(Lorg/andengine/input/touch/detector/PinchZoomDetector;Lorg/andengine/input/touch/TouchEvent;F)V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-boolean v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    if-eqz v2, :cond_0

    .line 94
    invoke-static {v1}, Lorg/andengine/input/touch/detector/PinchZoomDetector;->hasTwoOrMorePointers(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-static {v1}, Lorg/andengine/input/touch/detector/PinchZoomDetector;->calculatePointerDistance(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mCurrentDistance:F

    .line 96
    iget v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mCurrentDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 97
    iget-object v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZoomDetectorListener:Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;

    invoke-direct {p0}, Lorg/andengine/input/touch/detector/PinchZoomDetector;->getZoomFactor()F

    move-result v3

    invoke-interface {v2, p0, p1, v3}, Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;->onPinchZoom(Lorg/andengine/input/touch/detector/PinchZoomDetector;Lorg/andengine/input/touch/TouchEvent;F)V

    goto :goto_0

    .line 100
    :cond_1
    iput-boolean v4, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    .line 101
    iget-object v2, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZoomDetectorListener:Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;

    invoke-direct {p0}, Lorg/andengine/input/touch/detector/PinchZoomDetector;->getZoomFactor()F

    move-result v3

    invoke-interface {v2, p0, p1, v3}, Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;->onPinchZoomFinished(Lorg/andengine/input/touch/detector/PinchZoomDetector;Lorg/andengine/input/touch/TouchEvent;F)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-boolean v0, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZoomDetectorListener:Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/andengine/input/touch/detector/PinchZoomDetector;->getZoomFactor()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lorg/andengine/input/touch/detector/PinchZoomDetector$IPinchZoomDetectorListener;->onPinchZoomFinished(Lorg/andengine/input/touch/detector/PinchZoomDetector;Lorg/andengine/input/touch/TouchEvent;F)V

    .line 62
    :cond_0
    iput v3, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mInitialDistance:F

    .line 63
    iput v3, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mCurrentDistance:F

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/input/touch/detector/PinchZoomDetector;->mPinchZooming:Z

    .line 65
    return-void
.end method
