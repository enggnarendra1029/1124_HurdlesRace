.class public Lorg/andengine/entity/modifier/RotationAtModifier;
.super Lorg/andengine/entity/modifier/RotationModifier;
.source "RotationAtModifier.java"


# instance fields
.field private final mRotationCenterX:F

.field private final mRotationCenterY:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 7
    .parameter "pDuration"
    .parameter "pFromRotation"
    .parameter "pToRotation"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"

    .prologue
    .line 32
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/modifier/RotationAtModifier;-><init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromRotation"
    .parameter "pToRotation"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"
    .parameter "pEntityModifierListener"

    .prologue
    .line 40
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/RotationAtModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromRotation"
    .parameter "pToRotation"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 44
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/RotationModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 46
    iput p4, p0, Lorg/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 47
    iput p5, p0, Lorg/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 48
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromRotation"
    .parameter "pToRotation"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"
    .parameter "pEaseFunction"

    .prologue
    .line 36
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/RotationAtModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/RotationAtModifier;)V
    .locals 1
    .parameter "pRotationAtModifier"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/RotationModifier;-><init>(Lorg/andengine/entity/modifier/RotationModifier;)V

    .line 53
    iget v0, p1, Lorg/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    iput v0, p0, Lorg/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    .line 54
    iget v0, p1, Lorg/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    iput v0, p0, Lorg/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    .line 55
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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/RotationAtModifier;->deepCopy()Lorg/andengine/entity/modifier/RotationAtModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/RotationAtModifier;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/andengine/entity/modifier/RotationAtModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/RotationAtModifier;-><init>(Lorg/andengine/entity/modifier/RotationAtModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/RotationModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/RotationAtModifier;->deepCopy()Lorg/andengine/entity/modifier/RotationAtModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/RotationAtModifier;->deepCopy()Lorg/andengine/entity/modifier/RotationAtModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/andengine/entity/modifier/RotationAtModifier;->onManagedInitialize(Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/andengine/entity/IEntity;)V
    .locals 2
    .parameter "pEntity"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lorg/andengine/entity/modifier/RotationModifier;->onManagedInitialize(Ljava/lang/Object;)V

    .line 73
    iget v0, p0, Lorg/andengine/entity/modifier/RotationAtModifier;->mRotationCenterX:F

    iget v1, p0, Lorg/andengine/entity/modifier/RotationAtModifier;->mRotationCenterY:F

    invoke-interface {p1, v0, v1}, Lorg/andengine/entity/IEntity;->setRotationCenter(FF)V

    .line 74
    return-void
.end method
