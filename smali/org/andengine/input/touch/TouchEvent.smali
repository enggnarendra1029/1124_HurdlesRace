.class public Lorg/andengine/input/touch/TouchEvent;
.super Ljava/lang/Object;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/input/touch/TouchEvent$TouchEventPool;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_UP:I = 0x1

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final TOUCHEVENT_POOL:Lorg/andengine/input/touch/TouchEvent$TouchEventPool;


# instance fields
.field protected mAction:I

.field protected mMotionEvent:Landroid/view/MotionEvent;

.field protected mPointerID:I

.field protected mX:F

.field protected mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/andengine/input/touch/TouchEvent$TouchEventPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/andengine/input/touch/TouchEvent$TouchEventPool;-><init>(Lorg/andengine/input/touch/TouchEvent$TouchEventPool;)V

    sput-object v0, Lorg/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/andengine/input/touch/TouchEvent$TouchEventPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(FFIILandroid/view/MotionEvent;)Lorg/andengine/input/touch/TouchEvent;
    .locals 6
    .parameter "pX"
    .parameter "pY"
    .parameter "pAction"
    .parameter "pPointerID"
    .parameter "pMotionEvent"

    .prologue
    .line 47
    sget-object v1, Lorg/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v1}, Lorg/andengine/input/touch/TouchEvent$TouchEventPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/input/touch/TouchEvent;

    .local v0, touchEvent:Lorg/andengine/input/touch/TouchEvent;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 48
    invoke-direct/range {v0 .. v5}, Lorg/andengine/input/touch/TouchEvent;->set(FFIILandroid/view/MotionEvent;)V

    .line 49
    return-object v0
.end method

.method public static recycle(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 1
    .parameter "pTouchEvent"

    .prologue
    .line 65
    sget-object v0, Lorg/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v0, p0}, Lorg/andengine/input/touch/TouchEvent$TouchEventPool;->recyclePoolItem(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private set(FFIILandroid/view/MotionEvent;)V
    .locals 0
    .parameter "pX"
    .parameter "pY"
    .parameter "pAction"
    .parameter "pPointerID"
    .parameter "pMotionEvent"

    .prologue
    .line 53
    iput p1, p0, Lorg/andengine/input/touch/TouchEvent;->mX:F

    .line 54
    iput p2, p0, Lorg/andengine/input/touch/TouchEvent;->mY:F

    .line 55
    iput p3, p0, Lorg/andengine/input/touch/TouchEvent;->mAction:I

    .line 56
    iput p4, p0, Lorg/andengine/input/touch/TouchEvent;->mPointerID:I

    .line 57
    iput-object p5, p0, Lorg/andengine/input/touch/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 58
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mAction:I

    return v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/andengine/input/touch/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPointerID()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mPointerID:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mY:F

    return v0
.end method

.method public isActionCancel()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionDown()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mAction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionMove()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionOutside()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionUp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    iget v1, p0, Lorg/andengine/input/touch/TouchEvent;->mAction:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offset(FF)V
    .locals 1
    .parameter "pDeltaX"
    .parameter "pDeltaY"

    .prologue
    .line 86
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/input/touch/TouchEvent;->mX:F

    .line 87
    iget v0, p0, Lorg/andengine/input/touch/TouchEvent;->mY:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/input/touch/TouchEvent;->mY:F

    .line 88
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v0, p0}, Lorg/andengine/input/touch/TouchEvent$TouchEventPool;->recyclePoolItem(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public set(FF)V
    .locals 0
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 81
    iput p1, p0, Lorg/andengine/input/touch/TouchEvent;->mX:F

    .line 82
    iput p2, p0, Lorg/andengine/input/touch/TouchEvent;->mY:F

    .line 83
    return-void
.end method
