.class public abstract Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;
.super Lorg/andengine/util/modifier/BaseDurationModifier;
.source "BaseSingleValueSpanModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/modifier/BaseDurationModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

.field private mFromValue:F

.field private mValueSpan:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"

    .prologue
    .line 32
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    const/4 v4, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p4, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter
    .parameter "pEaseFunction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;",
            "Lorg/andengine/util/modifier/ease/IEaseFunction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p4, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p1, p4}, Lorg/andengine/util/modifier/BaseDurationModifier;-><init>(FLorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 46
    iput p2, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    .line 47
    sub-float v0, p3, p2

    iput v0, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    .line 48
    iput-object p5, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    .line 49
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter "pEaseFunction"

    .prologue
    .line 36
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/BaseSingleValueSpanModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p1, pBaseSingleValueSpanModifier:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/andengine/util/modifier/BaseDurationModifier;)V

    .line 54
    iget v0, p1, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iput v0, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    .line 55
    iget v0, p1, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    iput v0, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    .line 56
    iget-object v0, p1, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    iput-object v0, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    .line 57
    return-void
.end method


# virtual methods
.method public getFromValue()F
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    return v0
.end method

.method public getToValue()F
    .locals 2

    .prologue
    .line 68
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iget v1, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onManagedInitialize(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->onSetInitialValue(Ljava/lang/Object;F)V

    .line 81
    return-void
.end method

.method protected onManagedUpdate(FLjava/lang/Object;)V
    .locals 4
    .parameter "pSecondsElapsed"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->getSecondsElapsed()F

    move-result v2

    iget v3, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mDuration:F

    invoke-interface {v1, v2, v3}, Lorg/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    .line 87
    .local v0, percentageDone:F
    iget v1, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iget v2, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->onSetValue(Ljava/lang/Object;FF)V

    .line 88
    return-void
.end method

.method protected abstract onSetInitialValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method protected abstract onSetValue(Ljava/lang/Object;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation
.end method

.method public reset(FFF)V
    .locals 1
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"

    .prologue
    .line 95
    .local p0, this:Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseSingleValueSpanModifier<TT;>;"
    invoke-super {p0}, Lorg/andengine/util/modifier/BaseDurationModifier;->reset()V

    .line 97
    iput p1, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mDuration:F

    .line 98
    iput p2, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    .line 99
    sub-float v0, p3, p2

    iput v0, p0, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    .line 100
    return-void
.end method
