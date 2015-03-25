.class public Lorg/andengine/engine/options/SoundOptions;
.super Ljava/lang/Object;
.source "SoundOptions.java"


# instance fields
.field private mMaxSimultaneousStreams:I

.field private mNeedsSound:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lorg/andengine/engine/options/SoundOptions;->mMaxSimultaneousStreams:I

    .line 11
    return-void
.end method


# virtual methods
.method public getMaxSimultaneousStreams()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/andengine/engine/options/SoundOptions;->mMaxSimultaneousStreams:I

    return v0
.end method

.method public needsSound()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/andengine/engine/options/SoundOptions;->mNeedsSound:Z

    return v0
.end method

.method public setMaxSimultaneousStreams(I)Lorg/andengine/engine/options/SoundOptions;
    .locals 0
    .parameter "pMaxSimultaneousStreams"

    .prologue
    .line 45
    iput p1, p0, Lorg/andengine/engine/options/SoundOptions;->mMaxSimultaneousStreams:I

    .line 46
    return-object p0
.end method

.method public setNeedsSound(Z)Lorg/andengine/engine/options/SoundOptions;
    .locals 0
    .parameter "pNeedsSound"

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/andengine/engine/options/SoundOptions;->mNeedsSound:Z

    .line 37
    return-object p0
.end method
