.class public abstract Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;
.super Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;
.source "SingleValueSpanEntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/BaseSingleValueSpanModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;",
        "Lorg/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFF)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter "pEntityModifierListener"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValue"
    .parameter "pToValue"
    .parameter "pEaseFunction"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;)V
    .locals 0
    .parameter "pSingleValueSpanEntityModifier"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(Lorg/andengine/util/modifier/BaseSingleValueSpanModifier;)V

    .line 45
    return-void
.end method
