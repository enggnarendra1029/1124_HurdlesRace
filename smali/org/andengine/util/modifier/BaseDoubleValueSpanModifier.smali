.class public abstract Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;
.super Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;
.source "BaseDoubleValueSpanModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/modifier/BaseSingleValueSpanModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mFromValueB:F

.field private mValueSpanB:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    const/4 v6, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 32
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFF",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p6, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 40
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter
    .parameter "pEaseFunction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFF",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;",
            "Lorg/andengine/util/modifier/ease/IEaseFunction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p6, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 45
    iput p4, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    .line 46
    sub-float v0, p5, p4

    iput v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    .line 47
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pEaseFunction"

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p1, pBaseDoubleValueSpanModifier:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;)V

    .line 52
    iget v0, p1, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    iput v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    .line 53
    iget v0, p1, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    iput v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    .line 54
    return-void
.end method


# virtual methods
.method public getFromValue()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    invoke-super {p0}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->getFromValue()F

    move-result v0

    return v0
.end method

.method public getFromValueA()F
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    invoke-super {p0}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->getFromValue()F

    move-result v0

    return v0
.end method

.method public getFromValueB()F
    .locals 1

    .prologue
    .line 81
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    return v0
.end method

.method public getToValue()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    invoke-super {p0}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->getToValue()F

    move-result v0

    return v0
.end method

.method public getToValueA()F
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    invoke-super {p0}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->getToValue()F

    move-result v0

    return v0
.end method

.method public getToValueB()F
    .locals 2

    .prologue
    .line 85
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    iget v1, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;F)V
    .locals 1
    .parameter
    .parameter "pValueA"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->onSetInitialValues(Ljava/lang/Object;FF)V

    .line 98
    return-void
.end method

.method protected abstract onSetInitialValues(Ljava/lang/Object;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation
.end method

.method protected onSetValue(Ljava/lang/Object;FF)V
    .locals 2
    .parameter
    .parameter "pPercentageDone"
    .parameter "pValueA"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    iget v1, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->onSetValues(Ljava/lang/Object;FFF)V

    .line 103
    return-void
.end method

.method protected abstract onSetValues(Ljava/lang/Object;FFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFF)V"
        }
    .end annotation
.end method

.method public reset(FFF)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->reset(FFF)V

    .line 109
    return-void
.end method

.method public reset(FFFFF)V
    .locals 1
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"

    .prologue
    .line 116
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;->reset(FFF)V

    .line 118
    iput p4, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mFromValueB:F

    .line 119
    sub-float v0, p5, p4

    iput v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueSpanModifier;->mValueSpanB:F

    .line 120
    return-void
.end method
