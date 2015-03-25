.class public Lorg/andengine/engine/options/MusicOptions;
.super Ljava/lang/Object;
.source "MusicOptions.java"


# instance fields
.field private mNeedsMusic:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needsMusic()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/andengine/engine/options/MusicOptions;->mNeedsMusic:Z

    return v0
.end method

.method public setNeedsMusic(Z)Lorg/andengine/engine/options/MusicOptions;
    .locals 0
    .parameter "pNeedsMusic"

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/andengine/engine/options/MusicOptions;->mNeedsMusic:Z

    .line 35
    return-object p0
.end method
