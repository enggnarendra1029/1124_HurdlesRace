.class public abstract Lorg/andengine/entity/modifier/DoubleValueChangeEntityModifier;
.super Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;
.source "DoubleValueChangeEntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier",
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
    .parameter "pValueChangeA"
    .parameter "pValueChangeB"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(FFF)V

    .line 27
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pValueChangeA"
    .parameter "pValueChangeB"
    .parameter "pModifierListener"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(FFFLorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/modifier/DoubleValueChangeEntityModifier;)V
    .locals 0
    .parameter "pDoubleValueChangeEntityModifier"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(Lorg/andengine/util/modifier/BaseDoubleValueChangeModifier;)V

    .line 35
    return-void
.end method
