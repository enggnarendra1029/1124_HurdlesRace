.class public Lorg/andengine/util/modifier/ParallelModifier;
.super Lorg/andengine/util/modifier/BaseModifier;
.source "ParallelModifier.java"

# interfaces
.implements Lorg/andengine/util/modifier/IModifier$IModifierListener;


# annotations
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


# instance fields
.field private final mDuration:F

.field private mFinishedCached:Z

.field private final mModifiers:[Lorg/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSecondsElapsed:F


# direct methods
.method public varargs constructor <init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V
    .locals 3
    .parameter
    .parameter "pModifiers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;[",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p1, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseModifier;-><init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 41
    array-length v1, p2

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pModifiers must not be empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    invoke-static {p2}, Lorg/andengine/util/modifier/BaseModifier;->assertNoNullModifier([Lorg/andengine/util/modifier/IModifier;)V

    .line 47
    sget-object v1, Lorg/andengine/util/modifier/ParallelModifier;->MODIFIER_COMPARATOR_DURATION_DESCENDING:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 48
    iput-object p2, p0, Lorg/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 50
    const/4 v1, 0x0

    aget-object v0, p2, v1

    .line 51
    .local v0, modifierWithLongestDuration:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    invoke-interface {v0}, Lorg/andengine/util/modifier/IModifier;->getDuration()F

    move-result v1

    iput v1, p0, Lorg/andengine/util/modifier/ParallelModifier;->mDuration:F

    .line 52
    invoke-interface {v0, p0}, Lorg/andengine/util/modifier/IModifier;->addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 53
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/util/modifier/ParallelModifier;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/ParallelModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p1, pParallelModifier:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    invoke-direct {p0}, Lorg/andengine/util/modifier/BaseModifier;-><init>()V

    .line 57
    iget-object v3, p1, Lorg/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 58
    .local v3, otherModifiers:[Lorg/andengine/util/modifier/IModifier;
    array-length v4, v3

    new-array v4, v4, [Lorg/andengine/util/modifier/IModifier;

    iput-object v4, p0, Lorg/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 60
    iget-object v2, p0, Lorg/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 61
    .local v2, modifiers:[Lorg/andengine/util/modifier/IModifier;
    array-length v4, v2

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 65
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 66
    .local v1, modifierWithLongestDuration:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    invoke-interface {v1}, Lorg/andengine/util/modifier/IModifier;->getDuration()F

    move-result v4

    iput v4, p0, Lorg/andengine/util/modifier/ParallelModifier;->mDuration:F

    .line 67
    invoke-interface {v1, p0}, Lorg/andengine/util/modifier/IModifier;->addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 68
    return-void

    .line 62
    .end local v1           #modifierWithLongestDuration:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    :cond_0
    aget-object v4, v3, v0

    invoke-interface {v4}, Lorg/andengine/util/modifier/IModifier;->deepCopy()Lorg/andengine/util/modifier/IModifier;

    move-result-object v4

    aput-object v4, v2, v0

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/andengine/util/modifier/IModifier;)V
    .locals 1
    .parameter "pModifiers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/andengine/util/modifier/ParallelModifier;-><init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V

    .line 36
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
    invoke-virtual {p0}, Lorg/andengine/util/modifier/ParallelModifier;->deepCopy()Lorg/andengine/util/modifier/ParallelModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/util/modifier/ParallelModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/modifier/ParallelModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    new-instance v0, Lorg/andengine/util/modifier/ParallelModifier;

    invoke-direct {v0, p0}, Lorg/andengine/util/modifier/ParallelModifier;-><init>(Lorg/andengine/util/modifier/ParallelModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/ParallelModifier;->mDuration:F

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    return v0
.end method

.method public onModifierFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 1
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
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lorg/andengine/util/modifier/ParallelModifier;->mFinished:Z

    .line 137
    iput-boolean v0, p0, Lorg/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    .line 138
    invoke-virtual {p0, p2}, Lorg/andengine/util/modifier/ParallelModifier;->onModifierFinished(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public onModifierStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0
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
    .line 131
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p2}, Lorg/andengine/util/modifier/ParallelModifier;->onModifierStarted(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public onUpdate(FLjava/lang/Object;)F
    .locals 7
    .parameter "pSecondsElapsed"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 95
    iget-boolean v5, p0, Lorg/andengine/util/modifier/ParallelModifier;->mFinished:Z

    if-eqz v5, :cond_0

    move v2, v4

    .line 114
    :goto_0
    return v2

    .line 98
    :cond_0
    move v1, p1

    .line 100
    .local v1, secondsElapsedRemaining:F
    iget-object v3, p0, Lorg/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 102
    .local v3, shapeModifiers:[Lorg/andengine/util/modifier/IModifier;
    iput-boolean v6, p0, Lorg/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    .line 103
    :goto_1
    cmpl-float v5, v1, v4

    if-lez v5, :cond_1

    iget-boolean v5, p0, Lorg/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    if-eqz v5, :cond_2

    .line 110
    :cond_1
    iput-boolean v6, p0, Lorg/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    .line 112
    sub-float v2, p1, v1

    .line 113
    .local v2, secondsElapsedUsed:F
    iget v4, p0, Lorg/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    add-float/2addr v4, v2

    iput v4, p0, Lorg/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    goto :goto_0

    .line 104
    .end local v2           #secondsElapsedUsed:F
    :cond_2
    const/4 v2, 0x0

    .line 105
    .restart local v2       #secondsElapsedUsed:F
    array-length v5, v3

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_2
    if-gez v0, :cond_3

    .line 108
    sub-float/2addr v1, v2

    goto :goto_1

    .line 106
    :cond_3
    aget-object v5, v3, v0

    invoke-interface {v5, p1, p2}, Lorg/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 120
    .local p0, this:Lorg/andengine/util/modifier/ParallelModifier;,"Lorg/andengine/util/modifier/ParallelModifier<TT;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/andengine/util/modifier/ParallelModifier;->mFinished:Z

    .line 121
    const/4 v2, 0x0

    iput v2, p0, Lorg/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    .line 123
    iget-object v1, p0, Lorg/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 124
    .local v1, shapeModifiers:[Lorg/andengine/util/modifier/IModifier;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 127
    return-void

    .line 125
    :cond_0
    aget-object v2, v1, v0

    invoke-interface {v2}, Lorg/andengine/util/modifier/IModifier;->reset()V

    .line 124
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
