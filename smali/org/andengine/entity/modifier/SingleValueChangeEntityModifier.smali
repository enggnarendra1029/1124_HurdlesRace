.class public abstract Lorg/andengine/entity/modifier/SingleValueChangeEntityModifier;
.super Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;
.source "SingleValueChangeEntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/BaseSingleValueChangeModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;",
        "Lorg/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "pDuration"
    .parameter "pValueChange"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pValueChange"
    .parameter "pEntityModifierListener"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FFLorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/SingleValueChangeEntityModifier;)V
    .locals 0
    .parameter "pSingleValueChangeEntityModifier"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(Lorg/andengine/util/modifier/BaseSingleValueChangeModifier;)V

    .line 36
    return-void
.end method
