.class public abstract Lorg/andengine/entity/modifier/DurationEntityModifier;
.super Lorg/andengine/util/modifier/BaseDurationModifier;
.source "DurationEntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/BaseDurationModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;",
        "Lorg/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "pDuration"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    .line 28
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pEntityModifierListener"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/modifier/BaseDurationModifier;-><init>(FLorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/DurationEntityModifier;)V
    .locals 0
    .parameter "pDurationEntityModifier"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/andengine/util/modifier/BaseDurationModifier;)V

    .line 36
    return-void
.end method
