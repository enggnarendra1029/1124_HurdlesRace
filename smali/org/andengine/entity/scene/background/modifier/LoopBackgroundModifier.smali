.class public Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;
.super Lorg/andengine/util/modifier/LoopModifier;
.source "LoopBackgroundModifier.java"

# interfaces
.implements Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier$ILoopBackgroundModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/LoopModifier",
        "<",
        "Lorg/andengine/entity/scene/background/IBackground;",
        ">;",
        "Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .parameter "pBackgroundModifier"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;I)V
    .locals 0
    .parameter "pBackgroundModifier"
    .parameter "pLoopCount"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;ILorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;)V
    .locals 0
    .parameter "pBackgroundModifier"
    .parameter "pLoopCount"
    .parameter "pBackgroundModifierListener"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;ILorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier$ILoopBackgroundModifierListener;)V
    .locals 1
    .parameter "pBackgroundModifier"
    .parameter "pLoopCount"
    .parameter "pLoopModifierListener"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;ILorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier$ILoopBackgroundModifierListener;Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;)V
    .locals 0
    .parameter "pBackgroundModifier"
    .parameter "pLoopCount"
    .parameter "pLoopModifierListener"
    .parameter "pBackgroundModifierListener"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/andengine/util/modifier/LoopModifier;-><init>(Lorg/andengine/util/modifier/IModifier;ILorg/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/andengine/util/modifier/IModifier$IModifierListener;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;)V
    .locals 0
    .parameter "pLoopBackgroundModifier"
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
.method public bridge synthetic deepCopy()Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;->deepCopy()Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;-><init>(Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;->deepCopy()Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;->deepCopy()Lorg/andengine/entity/scene/background/modifier/LoopBackgroundModifier;

    move-result-object v0

    return-object v0
.end method
