.class public Lorg/andengine/entity/modifier/RotationByModifier;
.super Lorg/andengine/entity/modifier/SingleValueChangeEntityModifier;
.source "RotationByModifier.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "pDuration"
    .parameter "pRotation"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/andengine/entity/modifier/SingleValueChangeEntityModifier;-><init>(FF)V

    .line 27
    return-void
.end method

.method public constructor <init>(FFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pRotation"
    .parameter "pEntityModifierListener"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/SingleValueChangeEntityModifier;-><init>(FFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 31
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/RotationByModifier;)V
    .locals 0
    .parameter "pRotationByModifier"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/SingleValueChangeEntityModifier;-><init>(Lorg/andengine/entity/modifier/SingleValueChangeEntityModifier;)V

    .line 35
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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/RotationByModifier;->deepCopy()Lorg/andengine/entity/modifier/RotationByModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/RotationByModifier;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/andengine/entity/modifier/RotationByModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/RotationByModifier;-><init>(Lorg/andengine/entity/modifier/RotationByModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/RotationByModifier;->deepCopy()Lorg/andengine/entity/modifier/RotationByModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onChangeValue(FLjava/lang/Object;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/RotationByModifier;->onChangeValue(FLorg/andengine/entity/IEntity;F)V

    return-void
.end method

.method protected onChangeValue(FLorg/andengine/entity/IEntity;F)V
    .locals 1
    .parameter "pSecondsElapsed"
    .parameter "pEntity"
    .parameter "pRotation"

    .prologue
    .line 52
    invoke-interface {p2}, Lorg/andengine/entity/IEntity;->getRotation()F

    move-result v0

    add-float/2addr v0, p3

    invoke-interface {p2, v0}, Lorg/andengine/entity/IEntity;->setRotation(F)V

    .line 53
    return-void
.end method
