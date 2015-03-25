.class public Lorg/andengine/input/touch/detector/ClickDetector;
.super Lorg/andengine/input/touch/detector/BaseDetector;
.source "ClickDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;
    }
.end annotation


# static fields
.field private static final TRIGGER_CLICK_MAXIMUM_MILLISECONDS_DEFAULT:J = 0xc8L


# instance fields
.field private final mClickDetectorListener:Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

.field private mDownTimeMilliseconds:J

.field private mPointerID:I

.field private mTriggerClickMaximumMilliseconds:J


# direct methods
.method public constructor <init>(JLorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V
    .locals 2
    .parameter "pTriggerClickMaximumMilliseconds"
    .parameter "pClickDetectorListener"

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/andengine/input/touch/detector/BaseDetector;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mPointerID:I

    .line 29
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    .line 40
    iput-wide p1, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    .line 41
    iput-object p3, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mClickDetectorListener:Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V
    .locals 2
    .parameter "pClickDetectorListener"

    .prologue
    .line 36
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1, p1}, Lorg/andengine/input/touch/detector/ClickDetector;-><init>(JLorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    .line 37
    return-void
.end method

.method private prepareClick(Lorg/andengine/input/touch/TouchEvent;)V
    .locals 2
    .parameter "pSceneTouchEvent"

    .prologue
    .line 99
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    .line 100
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v0

    iput v0, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mPointerID:I

    .line 101
    return-void
.end method


# virtual methods
.method public getTriggerClickMaximumMilliseconds()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    return-wide v0
.end method

.method public onManagedTouchEvent(Lorg/andengine/input/touch/TouchEvent;)Z
    .locals 7
    .parameter "pSceneTouchEvent"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 70
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/andengine/input/touch/detector/ClickDetector;->prepareClick(Lorg/andengine/input/touch/TouchEvent;)V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :pswitch_2
    iget v3, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mPointerID:I

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, handled:Z
    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 78
    .local v1, upTimeMilliseconds:J
    iget-wide v3, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 79
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    .line 80
    iget-object v3, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mClickDetectorListener:Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v4

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Lorg/andengine/input/touch/TouchEvent;->getY()F

    move-result v6

    invoke-interface {v3, p0, v4, v5, v6}, Lorg/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;->onClick(Lorg/andengine/input/touch/detector/ClickDetector;IFF)V

    .line 81
    const/4 v0, 0x1

    .line 84
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mPointerID:I

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mPointerID:I

    .line 64
    return-void
.end method

.method public setTriggerClickMaximumMilliseconds(J)V
    .locals 0
    .parameter "pClickMaximumMilliseconds"

    .prologue
    .line 53
    iput-wide p1, p0, Lorg/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    .line 54
    return-void
.end method
