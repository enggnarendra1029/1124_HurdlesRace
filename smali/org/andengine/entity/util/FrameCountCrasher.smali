.class public Lorg/andengine/entity/util/FrameCountCrasher;
.super Ljava/lang/Object;
.source "FrameCountCrasher.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private final mFrameLengths:[F

.field private mFramesLeft:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "pFrameCount"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    .line 33
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/andengine/entity/util/FrameCountCrasher;->mFrameLengths:[F

    .line 34
    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 4
    .parameter "pSecondsElapsed"

    .prologue
    .line 46
    iget v2, p0, Lorg/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    .line 48
    iget-object v0, p0, Lorg/andengine/entity/util/FrameCountCrasher;->mFrameLengths:[F

    .line 49
    .local v0, frameLengths:[F
    iget v2, p0, Lorg/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    if-ltz v2, :cond_0

    .line 50
    iget v2, p0, Lorg/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    aput p1, v0, v2

    .line 60
    return-void

    .line 53
    :cond_0
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    .line 58
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 54
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Elapsed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 53
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
