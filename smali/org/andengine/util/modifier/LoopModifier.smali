.class public Lorg/andengine/util/modifier/LoopModifier;
.super Lorg/andengine/util/modifier/BaseModifier;
.source "LoopModifier.java"

# interfaces
.implements Lorg/andengine/util/modifier/IModifier$IModifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/modifier/BaseModifier",
        "<TT;>;",
        "Lorg/andengine/util/modifier/IModifier$IModifierListener",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final LOOP_CONTINUOUS:I = -0x1


# instance fields
.field private final mDuration:F

.field private mFinishedCached:Z

.field private mLoop:I

.field private final mLoopCount:I

.field private mLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mModifier:Lorg/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mModifierStartedCalled:Z

.field private mSecondsElapsed:F


# direct methods
.method public constructor <init>(Lorg/andengine/util/modifier/IModifier;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/modifier/IModifier;I)V
    .locals 1
    .parameter
    .parameter "pLoopCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 1
    .parameter
    .parameter "pLoopCount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;I",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p3, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;)V
    .locals 1
    .parameter
    .parameter "pLoopCount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;I",
            "Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p3, pLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;,"Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 2
    .parameter
    .parameter "pLoopCount"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;I",
            "Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p3, pLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;,"Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener<TT;>;"
    .local p4, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p4}, Lorg/andengine/util/modifier/BaseModifier;-><init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 61
    invoke-static {p1}, Lorg/andengine/util/modifier/BaseModifier;->assertNoNullModifier(Lorg/andengine/util/modifier/IModifier;)V

    .line 63
    iput-object p1, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifier:Lorg/andengine/util/modifier/IModifier;

    .line 64
    iput p2, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopCount:I

    .line 65
    iput-object p3, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoop:I

    .line 68
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/high16 v0, 0x7f80

    :goto_0
    iput v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mDuration:F

    .line 70
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifier:Lorg/andengine/util/modifier/IModifier;

    invoke-interface {v0, p0}, Lorg/andengine/util/modifier/IModifier;->addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 71
    return-void

    .line 68
    :cond_0
    invoke-interface {p1}, Lorg/andengine/util/modifier/IModifier;->getDuration()F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/andengine/util/modifier/LoopModifier;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/LoopModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pLoopModifier:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    iget-object v0, p1, Lorg/andengine/util/modifier/LoopModifier;->mModifier:Lorg/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/andengine/util/modifier/IModifier;->deepCopy()Lorg/andengine/util/modifier/IModifier;

    move-result-object v0

    iget v1, p1, Lorg/andengine/util/modifier/LoopModifier;->mLoopCount:I

    invoke-direct {p0, v0, v1}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;I)V

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/modifier/LoopModifier;->deepCopy()Lorg/andengine/util/modifier/LoopModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/util/modifier/LoopModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/modifier/LoopModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    new-instance v0, Lorg/andengine/util/modifier/LoopModifier;

    invoke-direct {v0, p0}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/LoopModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 105
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mDuration:F

    return v0
.end method

.method public getLoopModifierListener()Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    return-object v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 100
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    return v0
.end method

.method public onModifierFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    iget v1, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoop:I

    iget v2, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopCount:I

    invoke-interface {v0, p0, v1, v2}, Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;->onLoopFinished(Lorg/andengine/util/modifier/LoopModifier;II)V

    .line 158
    :cond_0
    iget v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 159
    iput v3, p0, Lorg/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    .line 160
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifier:Lorg/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/andengine/util/modifier/IModifier;->reset()V

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoop:I

    .line 163
    iget v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoop:I

    iget v1, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopCount:I

    if-lt v0, v1, :cond_2

    .line 164
    iput-boolean v4, p0, Lorg/andengine/util/modifier/LoopModifier;->mFinished:Z

    .line 165
    iput-boolean v4, p0, Lorg/andengine/util/modifier/LoopModifier;->mFinishedCached:Z

    .line 166
    invoke-virtual {p0, p2}, Lorg/andengine/util/modifier/LoopModifier;->onModifierFinished(Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_2
    iput v3, p0, Lorg/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    .line 169
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifier:Lorg/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/andengine/util/modifier/IModifier;->reset()V

    goto :goto_0
.end method

.method public onModifierStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget-boolean v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifierStartedCalled:Z

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifierStartedCalled:Z

    .line 145
    invoke-virtual {p0, p2}, Lorg/andengine/util/modifier/LoopModifier;->onModifierStarted(Ljava/lang/Object;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    iget v1, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoop:I

    iget v2, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopCount:I

    invoke-interface {v0, p0, v1, v2}, Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;->onLoopStarted(Lorg/andengine/util/modifier/LoopModifier;II)V

    .line 150
    :cond_1
    return-void
.end method

.method public onUpdate(FLjava/lang/Object;)F
    .locals 4
    .parameter "pSecondsElapsed"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 110
    iget-boolean v2, p0, Lorg/andengine/util/modifier/LoopModifier;->mFinished:Z

    if-eqz v2, :cond_0

    .line 123
    :goto_0
    return v1

    .line 113
    :cond_0
    move v0, p1

    .line 115
    .local v0, secondsElapsedRemaining:F
    iput-boolean v3, p0, Lorg/andengine/util/modifier/LoopModifier;->mFinishedCached:Z

    .line 116
    :goto_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lorg/andengine/util/modifier/LoopModifier;->mFinishedCached:Z

    if-eqz v2, :cond_2

    .line 119
    :cond_1
    iput-boolean v3, p0, Lorg/andengine/util/modifier/LoopModifier;->mFinishedCached:Z

    .line 121
    sub-float v1, p1, v0

    .line 122
    .local v1, secondsElapsedUsed:F
    iget v2, p0, Lorg/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    goto :goto_0

    .line 117
    .end local v1           #secondsElapsedUsed:F
    :cond_2
    iget-object v2, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifier:Lorg/andengine/util/modifier/IModifier;

    invoke-interface {v2, v0, p2}, Lorg/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Lorg/andengine/util/modifier/LoopModifier;->mFinished:Z

    .line 130
    iput v1, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoop:I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    .line 132
    iput-boolean v1, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifierStartedCalled:Z

    .line 134
    iget-object v0, p0, Lorg/andengine/util/modifier/LoopModifier;->mModifier:Lorg/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/andengine/util/modifier/IModifier;->reset()V

    .line 135
    return-void
.end method

.method public setLoopModifierListener(Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lorg/andengine/util/modifier/LoopModifier;,"Lorg/andengine/util/modifier/LoopModifier<TT;>;"
    .local p1, pLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;,"Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener<TT;>;"
    iput-object p1, p0, Lorg/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    .line 92
    return-void
.end method
