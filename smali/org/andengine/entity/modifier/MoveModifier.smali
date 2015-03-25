.class public Lorg/andengine/entity/modifier/MoveModifier;
.super Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;
.source "MoveModifier.java"


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"

    .prologue
    .line 28
    const/4 v6, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pEntityModifierListener"

    .prologue
    .line 36
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pEaseFunction"

    .prologue
    .line 32
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/MoveModifier;)V
    .locals 0
    .parameter "pMoveModifier"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;)V

    .line 45
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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/MoveModifier;->deepCopy()Lorg/andengine/entity/modifier/MoveModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/MoveModifier;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/andengine/entity/modifier/MoveModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/MoveModifier;-><init>(Lorg/andengine/entity/modifier/MoveModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/MoveModifier;->deepCopy()Lorg/andengine/entity/modifier/MoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSetInitialValues(Ljava/lang/Object;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/MoveModifier;->onSetInitialValues(Lorg/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetInitialValues(Lorg/andengine/entity/IEntity;FF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 62
    invoke-interface {p1, p2, p3}, Lorg/andengine/entity/IEntity;->setPosition(FF)V

    .line 63
    return-void
.end method

.method protected bridge synthetic onSetValues(Ljava/lang/Object;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/modifier/MoveModifier;->onSetValues(Lorg/andengine/entity/IEntity;FFF)V

    return-void
.end method

.method protected onSetValues(Lorg/andengine/entity/IEntity;FFF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pPercentageDone"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 67
    invoke-interface {p1, p3, p4}, Lorg/andengine/entity/IEntity;->setPosition(FF)V

    .line 68
    return-void
.end method
