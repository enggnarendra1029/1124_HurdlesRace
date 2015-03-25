.class public Lorg/andengine/input/touch/controller/SingleTouchController;
.super Lorg/andengine/input/touch/controller/BaseTouchController;
.source "SingleTouchController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/andengine/input/touch/controller/BaseTouchController;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onHandleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "pMotionEvent"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/input/touch/controller/SingleTouchController;->fireTouchEvent(FFIILandroid/view/MotionEvent;)V

    .line 40
    return-void
.end method
