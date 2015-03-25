.class public Lorg/andengine/input/touch/controller/MultiTouchController;
.super Lorg/andengine/input/touch/controller/BaseTouchController;
.source "MultiTouchController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/andengine/input/touch/controller/BaseTouchController;-><init>()V

    return-void
.end method

.method private static getPointerIndex(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter "pMotionEvent"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private onHandleTouchAction(ILandroid/view/MotionEvent;)V
    .locals 7
    .parameter "pAction"
    .parameter "pMotionEvent"

    .prologue
    .line 70
    invoke-static {p2}, Lorg/andengine/input/touch/controller/MultiTouchController;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v6

    .line 71
    .local v6, pointerIndex:I
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 72
    .local v4, pointerID:I
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/input/touch/controller/MultiTouchController;->fireTouchEvent(FFIILandroid/view/MotionEvent;)V

    .line 73
    return-void
.end method

.method private onHandleTouchMove(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "pMotionEvent"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, i:I
    :goto_0
    if-gez v6, :cond_0

    .line 67
    return-void

    .line 63
    :cond_0
    move v7, v6

    .line 64
    .local v7, pointerIndex:I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 65
    .local v4, pointerID:I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/input/touch/controller/MultiTouchController;->fireTouchEvent(FFIILandroid/view/MotionEvent;)V

    .line 62
    add-int/lit8 v6, v6, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onHandleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "pMotionEvent"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 36
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Action detected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lorg/andengine/input/touch/controller/MultiTouchController;->onHandleTouchAction(ILandroid/view/MotionEvent;)V

    .line 51
    :goto_0
    return-void

    .line 43
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lorg/andengine/input/touch/controller/MultiTouchController;->onHandleTouchAction(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 47
    :pswitch_2
    invoke-direct {p0, v0, p1}, Lorg/andengine/input/touch/controller/MultiTouchController;->onHandleTouchAction(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 50
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/andengine/input/touch/controller/MultiTouchController;->onHandleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
