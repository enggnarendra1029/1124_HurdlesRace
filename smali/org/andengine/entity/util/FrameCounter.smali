.class public Lorg/andengine/entity/util/FrameCounter;
.super Ljava/lang/Object;
.source "FrameCounter.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private mFrames:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrames()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/andengine/entity/util/FrameCounter;->mFrames:I

    return v0
.end method

.method public onUpdate(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 41
    iget v0, p0, Lorg/andengine/entity/util/FrameCounter;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/entity/util/FrameCounter;->mFrames:I

    .line 42
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/entity/util/FrameCounter;->mFrames:I

    .line 47
    return-void
.end method
