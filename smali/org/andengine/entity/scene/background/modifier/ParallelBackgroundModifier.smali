.class public Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;
.super Lorg/andengine/util/modifier/ParallelModifier;
.source "ParallelBackgroundModifier.java"

# interfaces
.implements Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/ParallelModifier",
        "<",
        "Lorg/andengine/entity/scene/background/IBackground;",
        ">;",
        "Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;[Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .parameter "pBackgroundModifierListener"
    .parameter "pBackgroundModifiers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/modifier/ParallelModifier;-><init>(Lorg/andengine/util/modifier/IModifier$IModifierListener;[Lorg/andengine/util/modifier/IModifier;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;)V
    .locals 0
    .parameter "pParallelBackgroundModifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/ParallelModifier;-><init>(Lorg/andengine/util/modifier/ParallelModifier;)V

    .line 36
    return-void
.end method

.method public varargs constructor <init>([Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .parameter "pBackgroundModifiers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/ParallelModifier;-><init>([Lorg/andengine/util/modifier/IModifier;)V

    .line 28
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
    invoke-virtual {p0}, Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;->deepCopy()Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;-><init>(Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;->deepCopy()Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/util/modifier/ParallelModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;->deepCopy()Lorg/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;

    move-result-object v0

    return-object v0
.end method
