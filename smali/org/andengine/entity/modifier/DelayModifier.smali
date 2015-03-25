.class public Lorg/andengine/entity/modifier/DelayModifier;
.super Lorg/andengine/entity/modifier/DurationEntityModifier;
.source "DelayModifier.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "pDuration"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/DurationEntityModifier;-><init>(F)V

    .line 31
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pEntityModifierListener"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/modifier/DurationEntityModifier;-><init>(FLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/DelayModifier;)V
    .locals 0
    .parameter "pDelayModifier"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/DurationEntityModifier;-><init>(Lorg/andengine/entity/modifier/DurationEntityModifier;)V

    .line 35
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/entity/modifier/DelayModifier;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/andengine/entity/modifier/DelayModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/DelayModifier;-><init>(Lorg/andengine/entity/modifier/DelayModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/DelayModifier;->deepCopy()Lorg/andengine/entity/modifier/DelayModifier;

    move-result-object v0

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/DelayModifier;->deepCopy()Lorg/andengine/entity/modifier/DelayModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/andengine/entity/modifier/DelayModifier;->onManagedInitialize(Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 53
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/DelayModifier;->onManagedUpdate(FLorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pSecondsElapsed"
    .parameter "pEntity"

    .prologue
    .line 58
    return-void
.end method
