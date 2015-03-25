.class public abstract Lorg/andengine/input/touch/detector/SurfaceGestureDetector;
.super Lorg/andengine/input/touch/detector/BaseDetector;
.source "SurfaceGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;
    }
.end annotation


# static fields
.field private static final SWIPE_MIN_DISTANCE_DEFAULT:F = 120.0f


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "pContext"

    .prologue
    .line 36
    const/high16 v0, 0x42f0

    invoke-direct {p0, p1, v0}, Lorg/andengine/input/touch/detector/SurfaceGestureDetector;-><init>(Landroid/content/Context;F)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2
    .parameter "pContext"
    .parameter "pSwipeMinDistance"

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/andengine/input/touch/detector/BaseDetector;-><init>()V

    .line 40
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;

    invoke-direct {v1, p0, p2}, Lorg/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;-><init>(Lorg/andengine/input/touch/detector/SurfaceGestureDetector;F)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/andengine/input/touch/detector/SurfaceGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract onDoubleTap()Z
.end method

.method public onManagedTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 2
    .parameter "pSceneTouchEvent"

    .prologue
    .line 65
    iget-object v0, p0, Lorg/andengine/input/touch/detector/SurfaceGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract onSingleTap()Z
.end method

.method protected abstract onSwipeDown()Z
.end method

.method protected abstract onSwipeLeft()Z
.end method

.method protected abstract onSwipeRight()Z
.end method

.method protected abstract onSwipeUp()Z
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
