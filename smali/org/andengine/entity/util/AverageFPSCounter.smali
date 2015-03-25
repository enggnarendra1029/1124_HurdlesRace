.class public abstract Lorg/andengine/entity/util/AverageFPSCounter;
.super Lorg/andengine/entity/util/FPSCounter;
.source "AverageFPSCounter.java"


# static fields
.field private static final AVERAGE_DURATION_DEFAULT:F = 5.0f


# instance fields
.field protected final mAverageDuration:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/high16 v0, 0x40a0

    invoke-direct {p0, v0}, Lorg/andengine/entity/util/AverageFPSCounter;-><init>(F)V

    .line 31
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "pAverageDuration"

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/andengine/entity/util/FPSCounter;-><init>()V

    .line 34
    iput p1, p0, Lorg/andengine/entity/util/AverageFPSCounter;->mAverageDuration:F

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract onHandleAverageDurationElapsed(F)V
.end method

.method public onUpdate(F)V
    .locals 2
    .parameter "pSecondsElapsed"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lorg/andengine/entity/util/FPSCounter;->onUpdate(F)V

    .line 51
    iget v0, p0, Lorg/andengine/entity/util/AverageFPSCounter;->mSecondsElapsed:F

    iget v1, p0, Lorg/andengine/entity/util/AverageFPSCounter;->mAverageDuration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/andengine/entity/util/AverageFPSCounter;->getFPS()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/andengine/entity/util/AverageFPSCounter;->onHandleAverageDurationElapsed(F)V

    .line 54
    iget v0, p0, Lorg/andengine/entity/util/AverageFPSCounter;->mSecondsElapsed:F

    iget v1, p0, Lorg/andengine/entity/util/AverageFPSCounter;->mAverageDuration:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/util/AverageFPSCounter;->mSecondsElapsed:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/entity/util/AverageFPSCounter;->mFrames:I

    .line 57
    :cond_0
    return-void
.end method
