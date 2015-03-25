.class public Lorg/andengine/util/modifier/SequenceModifier;
.super Lorg/andengine/util/modifier/BaseModifier;
.source "SequenceModifier.java"

# interfaces
.implements Lorg/andengine/util/modifier/IModifier$IModifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
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


# instance fields
.field private mCurrentSubSequenceModifierIndex:I

.field private final mDuration:F

.field private mFinishedCached:Z

.field private mSecondsElapsed:F

.field private mSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V
    .locals 1
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
    .line 46
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/andengine/util/modifier/SequenceModifier;-><init>(Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V

    .line 47
    return-void
.end method

.method public varargs constructor <init>(Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V
    .locals 2
    .parameter
    .parameter
    .parameter "pModifiers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;",
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
    .line 50
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, pSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;,"Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener<TT;>;"
    .local p2, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p2}, Lorg/andengine/util/modifier/BaseModifier;-><init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 52
    array-length v0, p3

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pModifiers must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-static {p3}, Lorg/andengine/util/modifier/BaseModifier;->assertNoNullModifier([Lorg/andengine/util/modifier/IModifier;)V

    .line 58
    iput-object p1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    .line 59
    iput-object p3, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 61
    invoke-static {p3}, Lorg/andengine/util/modifier/util/ModifierUtils;->getSequenceDurationOfModifier([Lorg/andengine/util/modifier/IModifier;)F

    move-result v0

    iput v0, p0, Lorg/andengine/util/modifier/SequenceModifier;->mDuration:F

    .line 63
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-interface {v0, p0}, Lorg/andengine/util/modifier/IModifier;->addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 64
    return-void
.end method

.method public varargs constructor <init>(Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;[Lorg/andengine/util/modifier/IModifier;)V
    .locals 1
    .parameter
    .parameter "pModifiers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
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
    .line 42
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, pSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;,"Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/andengine/util/modifier/SequenceModifier;-><init>(Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/util/modifier/SequenceModifier;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/SequenceModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, pSequenceModifier:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    invoke-direct {p0}, Lorg/andengine/util/modifier/BaseModifier;-><init>()V

    .line 68
    iget v3, p1, Lorg/andengine/util/modifier/SequenceModifier;->mDuration:F

    iput v3, p0, Lorg/andengine/util/modifier/SequenceModifier;->mDuration:F

    .line 70
    iget-object v1, p1, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 71
    .local v1, otherModifiers:[Lorg/andengine/util/modifier/IModifier;
    array-length v3, v1

    new-array v3, v3, [Lorg/andengine/util/modifier/IModifier;

    iput-object v3, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 73
    iget-object v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 74
    .local v2, subSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 78
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-interface {v3, p0}, Lorg/andengine/util/modifier/IModifier;->addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 79
    return-void

    .line 75
    :cond_0
    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/andengine/util/modifier/IModifier;->deepCopy()Lorg/andengine/util/modifier/IModifier;

    move-result-object v3

    aput-object v3, v2, v0

    .line 74
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
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0, p1}, Lorg/andengine/util/modifier/SequenceModifier;-><init>(Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V

    .line 39
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
    invoke-virtual {p0}, Lorg/andengine/util/modifier/SequenceModifier;->deepCopy()Lorg/andengine/util/modifier/SequenceModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/util/modifier/SequenceModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/modifier/SequenceModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    new-instance v0, Lorg/andengine/util/modifier/SequenceModifier;

    invoke-direct {v0, p0}, Lorg/andengine/util/modifier/SequenceModifier;-><init>(Lorg/andengine/util/modifier/SequenceModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 109
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/SequenceModifier;->mDuration:F

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    .prologue
    .line 104
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    return v0
.end method

.method public getSubSequenceModifierListener()Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    return-object v0
.end method

.method public onModifierFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 4
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
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x1

    .line 163
    iget-object v1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    iget v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    invoke-interface {v1, p1, p2, v2}, Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;->onSubSequenceFinished(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V

    .line 166
    :cond_0
    invoke-interface {p1, p0}, Lorg/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)Z

    .line 168
    iget v1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    .line 170
    iget v1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    iget-object v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 171
    iget-object v1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    iget v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v0, v1, v2

    .line 172
    .local v0, nextSubSequenceModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    invoke-interface {v0, p0}, Lorg/andengine/util/modifier/IModifier;->addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 179
    .end local v0           #nextSubSequenceModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    :goto_0
    return-void

    .line 174
    :cond_1
    iput-boolean v3, p0, Lorg/andengine/util/modifier/SequenceModifier;->mFinished:Z

    .line 175
    iput-boolean v3, p0, Lorg/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    .line 177
    invoke-virtual {p0, p2}, Lorg/andengine/util/modifier/SequenceModifier;->onModifierFinished(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onModifierStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 2
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
    .line 152
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, pModifier:Lorg/andengine/util/modifier/IModifier;,"Lorg/andengine/util/modifier/IModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0, p2}, Lorg/andengine/util/modifier/SequenceModifier;->onModifierStarted(Ljava/lang/Object;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    iget v1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    invoke-interface {v0, p1, p2, v1}, Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;->onSubSequenceStarted(Lorg/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V

    .line 159
    :cond_1
    return-void
.end method

.method public onUpdate(FLjava/lang/Object;)F
    .locals 5
    .parameter "pSecondsElapsed"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 114
    iget-boolean v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mFinished:Z

    if-eqz v2, :cond_0

    .line 126
    :goto_0
    return v1

    .line 117
    :cond_0
    move v0, p1

    .line 118
    .local v0, secondsElapsedRemaining:F
    iput-boolean v4, p0, Lorg/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    .line 119
    :goto_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    if-eqz v2, :cond_2

    .line 122
    :cond_1
    iput-boolean v4, p0, Lorg/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    .line 124
    sub-float v1, p1, v0

    .line 125
    .local v1, secondsElapsedUsed:F
    iget v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    goto :goto_0

    .line 120
    .end local v1           #secondsElapsedUsed:F
    :cond_2
    iget-object v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    iget v3, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2, v0, p2}, Lorg/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 5

    .prologue
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Lorg/andengine/util/modifier/SequenceModifier;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    iget-object v3, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-interface {v2, p0}, Lorg/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)Z

    .line 138
    :goto_0
    iput v4, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    .line 139
    iput-boolean v4, p0, Lorg/andengine/util/modifier/SequenceModifier;->mFinished:Z

    .line 140
    const/4 v2, 0x0

    iput v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    .line 142
    iget-object v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    aget-object v2, v2, v4

    invoke-interface {v2, p0}, Lorg/andengine/util/modifier/IModifier;->addModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 144
    iget-object v1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    .line 145
    .local v1, subSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_1

    .line 148
    return-void

    .line 135
    .end local v0           #i:I
    .end local v1           #subSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;
    :cond_0
    iget-object v2, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;

    iget v3, p0, Lorg/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2, p0}, Lorg/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/andengine/util/modifier/IModifier$IModifierListener;)Z

    goto :goto_0

    .line 146
    .restart local v0       #i:I
    .restart local v1       #subSequenceModifiers:[Lorg/andengine/util/modifier/IModifier;
    :cond_1
    aget-object v2, v1, v0

    invoke-interface {v2}, Lorg/andengine/util/modifier/IModifier;->reset()V

    .line 145
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public setSubSequenceModifierListener(Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lorg/andengine/util/modifier/SequenceModifier;,"Lorg/andengine/util/modifier/SequenceModifier<TT;>;"
    .local p1, pSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;,"Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener<TT;>;"
    iput-object p1, p0, Lorg/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    .line 96
    return-void
.end method
