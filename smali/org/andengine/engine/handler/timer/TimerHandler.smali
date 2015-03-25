.class public Lorg/andengine/engine/handler/timer/TimerHandler;
.super Ljava/lang/Object;
.source "TimerHandler.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private mAutoReset:Z

.field protected final mTimerCallback:Lorg/andengine/engine/handler/timer/ITimerCallback;

.field private mTimerCallbackTriggered:Z

.field private mTimerSeconds:F

.field private mTimerSecondsElapsed:F


# direct methods
.method public constructor <init>(FLorg/andengine/engine/handler/timer/ITimerCallback;)V
    .locals 1
    .parameter "pTimerSeconds"
    .parameter "pTimerCallback"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/andengine/engine/handler/timer/ITimerCallback;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FZLorg/andengine/engine/handler/timer/ITimerCallback;)V
    .locals 2
    .parameter "pTimerSeconds"
    .parameter "pAutoReset"
    .parameter "pTimerCallback"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pTimerSeconds must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput p1, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    .line 41
    iput-boolean p2, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    .line 42
    iput-object p3, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/andengine/engine/handler/timer/ITimerCallback;

    .line 43
    return-void
.end method


# virtual methods
.method public getTimerSeconds()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    return v0
.end method

.method public getTimerSecondsElapsed()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    return v0
.end method

.method public isAutoReset()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    return v0
.end method

.method public isTimerCallbackTriggered()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    return v0
.end method

.method public onUpdate(F)V
    .locals 2
    .parameter "pSecondsElapsed"

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    if-eqz v0, :cond_2

    .line 88
    iget v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    .line 89
    :goto_0
    iget v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    .line 102
    :cond_0
    :goto_1
    return-void

    .line 90
    :cond_1
    iget v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    .line 91
    iget-object v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/andengine/engine/handler/timer/ITimerCallback;

    invoke-interface {v0, p0}, Lorg/andengine/engine/handler/timer/ITimerCallback;->onTimePassed(Lorg/andengine/engine/handler/timer/TimerHandler;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-boolean v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    if-nez v0, :cond_0

    .line 95
    iget v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    .line 96
    iget v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    .line 98
    iget-object v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/andengine/engine/handler/timer/ITimerCallback;

    invoke-interface {v0, p0}, Lorg/andengine/engine/handler/timer/ITimerCallback;->onTimePassed(Lorg/andengine/engine/handler/timer/TimerHandler;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    .line 108
    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0
    .parameter "pAutoReset"

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    .line 55
    return-void
.end method

.method public setTimerCallbackTriggered(Z)V
    .locals 0
    .parameter "pTimerCallbackTriggered"

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    .line 79
    return-void
.end method

.method public setTimerSeconds(F)V
    .locals 2
    .parameter "pTimerSeconds"

    .prologue
    .line 58
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pTimerSeconds must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput p1, p0, Lorg/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    .line 63
    return-void
.end method
