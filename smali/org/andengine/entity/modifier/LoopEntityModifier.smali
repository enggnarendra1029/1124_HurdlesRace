.class public Lorg/andengine/entity/modifier/LoopEntityModifier;
.super Lorg/andengine/util/modifier/LoopModifier;
.source "LoopEntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/modifier/LoopEntityModifier$ILoopEntityModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/LoopModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;",
        "Lorg/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;ILorg/andengine/entity/modifier/LoopEntityModifier$ILoopEntityModifierListener;Lorg/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .parameter "pEntityModifierListener"
    .parameter "pLoopCount"
    .parameter "pLoopModifierListener"
    .parameter "pEntityModifier"

    .prologue
    .line 43
    invoke-direct {p0, p4, p2, p3, p1}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .parameter "pEntityModifier"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/modifier/IEntityModifier;I)V
    .locals 0
    .parameter "pEntityModifier"
    .parameter "pLoopCount"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/modifier/IEntityModifier;ILorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pEntityModifier"
    .parameter "pLoopCount"
    .parameter "pEntityModifierListener"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/modifier/IEntityModifier;ILorg/andengine/entity/modifier/LoopEntityModifier$ILoopEntityModifierListener;)V
    .locals 0
    .parameter "pEntityModifier"
    .parameter "pLoopCount"
    .parameter "pLoopModifierListener"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/LoopEntityModifier;)V
    .locals 0
    .parameter "pLoopEntityModifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/LoopModifier;)V

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/LoopEntityModifier;->deepCopy()Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/LoopEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/andengine/entity/modifier/LoopEntityModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/andengine/entity/modifier/LoopEntityModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/LoopEntityModifier;->deepCopy()Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/util/modifier/LoopModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/LoopEntityModifier;->deepCopy()Lorg/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v0

    return-object v0
.end method
