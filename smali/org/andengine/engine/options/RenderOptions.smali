.class public Lorg/andengine/engine/options/RenderOptions;
.super Ljava/lang/Object;
.source "RenderOptions.java"


# instance fields
.field private mDithering:Z

.field private mMultiSampling:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lorg/andengine/engine/options/RenderOptions;->mMultiSampling:Z

    .line 20
    iput-boolean v0, p0, Lorg/andengine/engine/options/RenderOptions;->mDithering:Z

    .line 10
    return-void
.end method


# virtual methods
.method public isDithering()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/andengine/engine/options/RenderOptions;->mDithering:Z

    return v0
.end method

.method public isMultiSampling()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/andengine/engine/options/RenderOptions;->mMultiSampling:Z

    return v0
.end method

.method public setDithering(Z)V
    .locals 0
    .parameter "pDithering"

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/andengine/engine/options/RenderOptions;->mDithering:Z

    .line 44
    return-void
.end method

.method public setMultiSampling(Z)V
    .locals 0
    .parameter "pMultiSampling"

    .prologue
    .line 35
    iput-boolean p1, p0, Lorg/andengine/engine/options/RenderOptions;->mMultiSampling:Z

    .line 36
    return-void
.end method
