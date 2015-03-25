.class public Lorg/andengine/input/touch/detector/SurfaceScrollDetector;
.super Lorg/andengine/input/touch/detector/ScrollDetector;
.source "SurfaceScrollDetector.java"


# direct methods
.method public constructor <init>(FLorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V
    .locals 0
    .parameter "pTriggerScrollMinimumDistance"
    .parameter "pScrollDetectorListener"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/andengine/input/touch/detector/ScrollDetector;-><init>(FLorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V
    .locals 0
    .parameter "pScrollDetectorListener"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/andengine/input/touch/detector/ScrollDetector;-><init>(Lorg/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getX(Lorg/andengine/input/touch/TouchEvent;)F
    .locals 1
    .parameter "pTouchEvent"

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method protected getY(Lorg/andengine/input/touch/TouchEvent;)F
    .locals 1
    .parameter "pTouchEvent"

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method
