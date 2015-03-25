.class public Lorg/andengine/entity/modifier/SkewModifier;
.super Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;
.source "SkewModifier.java"


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromSkewX"
    .parameter "pToSkewX"
    .parameter "pFromSkewY"
    .parameter "pToSkewY"

    .prologue
    .line 27
    const/4 v6, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/SkewModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 28
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromSkewX"
    .parameter "pToSkewX"
    .parameter "pFromSkewY"
    .parameter "pToSkewY"
    .parameter "pEntityModifierListener"

    .prologue
    .line 35
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

    .line 36
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromSkewX"
    .parameter "pToSkewX"
    .parameter "pFromSkewY"
    .parameter "pToSkewY"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 40
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromSkewX"
    .parameter "pToSkewX"
    .parameter "pFromSkewY"
    .parameter "pToSkewY"
    .parameter "pEaseFunction"

    .prologue
    .line 31
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/SkewModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/SkewModifier;)V
    .locals 0
    .parameter "pSkewXModifier"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/SkewModifier;->deepCopy()Lorg/andengine/entity/modifier/SkewModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/SkewModifier;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/andengine/entity/modifier/SkewModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/SkewModifier;-><init>(Lorg/andengine/entity/modifier/SkewModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/SkewModifier;->deepCopy()Lorg/andengine/entity/modifier/SkewModifier;

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/SkewModifier;->onSetInitialValues(Lorg/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetInitialValues(Lorg/andengine/entity/IEntity;FF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    .line 61
    invoke-interface {p1, p2, p3}, Lorg/andengine/entity/IEntity;->setSkew(FF)V

    .line 62
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/modifier/SkewModifier;->onSetValues(Lorg/andengine/entity/IEntity;FFF)V

    return-void
.end method

.method protected onSetValues(Lorg/andengine/entity/IEntity;FFF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pPercentageDone"
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    .line 66
    invoke-interface {p1, p3, p4}, Lorg/andengine/entity/IEntity;->setSkew(FF)V

    .line 67
    return-void
.end method
