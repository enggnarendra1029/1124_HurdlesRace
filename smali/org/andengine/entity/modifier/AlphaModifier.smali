.class public Lorg/andengine/entity/modifier/AlphaModifier;
.super Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;
.source "AlphaModifier.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromAlpha"
    .parameter "pToAlpha"

    .prologue
    .line 28
    const/4 v4, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromAlpha"
    .parameter "pToAlpha"
    .parameter "pEntityModifierListener"

    .prologue
    .line 36
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromAlpha"
    .parameter "pToAlpha"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromAlpha"
    .parameter "pToAlpha"
    .parameter "pEaseFunction"

    .prologue
    .line 32
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/AlphaModifier;)V
    .locals 0
    .parameter "pAlphaModifier"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;)V

    .line 45
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/entity/modifier/AlphaModifier;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/andengine/entity/modifier/AlphaModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/AlphaModifier;-><init>(Lorg/andengine/entity/modifier/AlphaModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/AlphaModifier;->deepCopy()Lorg/andengine/entity/modifier/AlphaModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/AlphaModifier;->deepCopy()Lorg/andengine/entity/modifier/AlphaModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSetInitialValue(Ljava/lang/Object;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/AlphaModifier;->onSetInitialValue(Lorg/andengine/entity/IEntity;F)V

    return-void
.end method

.method protected onSetInitialValue(Lorg/andengine/entity/IEntity;F)V
    .locals 0
    .parameter "pEntity"
    .parameter "pAlpha"

    .prologue
    .line 62
    invoke-interface {p1, p2}, Lorg/andengine/entity/IEntity;->setAlpha(F)V

    .line 63
    return-void
.end method

.method protected bridge synthetic onSetValue(Ljava/lang/Object;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/AlphaModifier;->onSetValue(Lorg/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetValue(Lorg/andengine/entity/IEntity;FF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pPercentageDone"
    .parameter "pAlpha"

    .prologue
    .line 67
    invoke-interface {p1, p3}, Lorg/andengine/entity/IEntity;->setAlpha(F)V

    .line 68
    return-void
.end method
