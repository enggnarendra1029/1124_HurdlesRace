.class public Lorg/andengine/entity/modifier/SkewYModifier;
.super Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;
.source "SkewYModifier.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromSkewY"
    .parameter "pToSkewY"

    .prologue
    .line 27
    const/4 v4, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/SkewYModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromSkewY"
    .parameter "pToSkewY"
    .parameter "pEntityModifierListener"

    .prologue
    .line 35
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 36
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromSkewY"
    .parameter "pToSkewY"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 40
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromSkewY"
    .parameter "pToSkewY"
    .parameter "pEaseFunction"

    .prologue
    .line 31
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/SkewYModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/SkewYModifier;)V
    .locals 0
    .parameter "pSkewYModifier"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(Lorg/andengine/entity/modifier/SingleValueSpanEntityModifier;)V

    .line 44
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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/SkewYModifier;->deepCopy()Lorg/andengine/entity/modifier/SkewYModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/SkewYModifier;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/andengine/entity/modifier/SkewYModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/SkewYModifier;-><init>(Lorg/andengine/entity/modifier/SkewYModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/SkewYModifier;->deepCopy()Lorg/andengine/entity/modifier/SkewYModifier;

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

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/SkewYModifier;->onSetInitialValue(Lorg/andengine/entity/IEntity;F)V

    return-void
.end method

.method protected onSetInitialValue(Lorg/andengine/entity/IEntity;F)V
    .locals 0
    .parameter "pEntity"
    .parameter "pSkewY"

    .prologue
    .line 61
    invoke-interface {p1, p2}, Lorg/andengine/entity/IEntity;->setSkewY(F)V

    .line 62
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/SkewYModifier;->onSetValue(Lorg/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetValue(Lorg/andengine/entity/IEntity;FF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pPercentageDone"
    .parameter "pSkewY"

    .prologue
    .line 66
    invoke-interface {p1, p3}, Lorg/andengine/entity/IEntity;->setSkewY(F)V

    .line 67
    return-void
.end method
