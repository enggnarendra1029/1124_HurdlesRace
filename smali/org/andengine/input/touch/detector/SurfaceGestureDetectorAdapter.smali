.class public Lorg/andengine/input/touch/detector/SurfaceGestureDetectorAdapter;
.super Lorg/andengine/input/touch/detector/SurfaceGestureDetector;
.source "SurfaceGestureDetectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pContext"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/andengine/input/touch/detector/SurfaceGestureDetector;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0
    .parameter "pContext"
    .parameter "pSwipeMinDistance"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/andengine/input/touch/detector/SurfaceGestureDetector;-><init>(Landroid/content/Context;F)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDoubleTap()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTap()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected onSwipeDown()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected onSwipeLeft()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected onSwipeRight()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected onSwipeUp()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
