.class public abstract Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;
.super Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;
.source "BaseDoubleValueChangeModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/modifier/BaseSingleValueChangeModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mValueChangeBPerSecond:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .parameter "pDuration"
    .parameter "pValueChangeA"
    .parameter "pValueChangeB"

    .prologue
    .line 26
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 27
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 1
    .parameter "pDuration"
    .parameter "pValueChangeA"
    .parameter "pValueChangeB"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier<TT;>;"
    .local p4, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    invoke-direct {p0, p1, p2, p4}, Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FFLorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 32
    div-float v0, p3, p1

    iput v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;->mValueChangeBPerSecond:F

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier<TT;>;"
    .local p1, pBaseDoubleValueChangeModifier:Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;)V

    .line 38
    iget v0, p1, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;->mValueChangeBPerSecond:F

    iput v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;->mValueChangeBPerSecond:F

    .line 39
    return-void
.end method


# virtual methods
.method protected onChangeValue(FLjava/lang/Object;F)V
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter
    .parameter "pValueA"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;F)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;,"Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier<TT;>;"
    .local p2, pItem:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;->mValueChangeBPerSecond:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;->onChangeValues(FLjava/lang/Object;FF)V

    .line 52
    return-void
.end method

.method protected abstract onChangeValues(FLjava/lang/Object;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;FF)V"
        }
    .end annotation
.end method
