.class public Lorg/andengine/entity/modifier/ParallelEntityModifier;
.super Lorg/andengine/util/modifier/ParallelModifier;
.source "ParallelEntityModifier.java"

# interfaces
.implements Lorg/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/ParallelModifier",
        "<",
        "Lorg/andengine/entity/IEntity;",
        ">;",
        "Lorg/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .parameter "pEntityModifierListener"
    .parameter "pEntityModifiers"
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

.method protected constructor <init>(Lorg/andengine/entity/modifier/ParallelEntityModifier;)V
    .locals 0
    .parameter "pParallelShapeModifier"
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

.method public varargs constructor <init>([Lorg/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .parameter "pEntityModifiers"
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
.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/andengine/entity/modifier/ParallelEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/ParallelEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/andengine/entity/modifier/ParallelEntityModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/ParallelEntityModifier;-><init>(Lorg/andengine/entity/modifier/ParallelEntityModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/andengine/entity/modifier/ParallelEntityModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/andengine/entity/modifier/ParallelEntityModifier;

    move-result-object v0

    return-object v0
.end method
