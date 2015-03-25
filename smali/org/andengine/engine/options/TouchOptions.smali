.class public Lorg/andengine/engine/options/TouchOptions;
.super Ljava/lang/Object;
.source "TouchOptions.java"


# static fields
.field private static final TOUCHEVENT_INTERVAL_MILLISECONDS_DEFAULT:J = 0x14L


# instance fields
.field private mNeedsMultiTouch:Z

.field private mTouchEventIntervalMilliseconds:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lorg/andengine/engine/options/TouchOptions;->mTouchEventIntervalMilliseconds:J

    .line 9
    return-void
.end method


# virtual methods
.method public getTouchEventIntervalMilliseconds()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/andengine/engine/options/TouchOptions;->mTouchEventIntervalMilliseconds:J

    return-wide v0
.end method

.method public needsMultiTouch()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/andengine/engine/options/TouchOptions;->mNeedsMultiTouch:Z

    return v0
.end method

.method public setNeedsMultiTouch(Z)Lorg/andengine/engine/options/TouchOptions;
    .locals 0
    .parameter "pNeedsMultiTouch"

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/andengine/engine/options/TouchOptions;->mNeedsMultiTouch:Z

    .line 37
    return-object p0
.end method

.method public setTouchEventIntervalMilliseconds(J)V
    .locals 0
    .parameter "pTouchEventIntervalMilliseconds"

    .prologue
    .line 45
    iput-wide p1, p0, Lorg/andengine/engine/options/TouchOptions;->mTouchEventIntervalMilliseconds:J

    .line 46
    return-void
.end method
