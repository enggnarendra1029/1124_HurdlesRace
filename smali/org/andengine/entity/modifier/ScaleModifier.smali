.class public Lorg/andengine/entity/modifier/ScaleModifier;
.super Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;
.source "ScaleModifier.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromScale"
    .parameter "pToScale"

    .prologue
    .line 28
    const/4 v4, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"

    .prologue
    .line 44
    const/4 v6, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"
    .parameter "pEntityModifierListener"

    .prologue
    .line 52
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

    .line 53
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p7}, Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"
    .parameter "pEaseFunction"

    .prologue
    .line 48
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromScale"
    .parameter "pToScale"
    .parameter "pEntityModifierListener"

    .prologue
    .line 36
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromScale"
    .parameter "pToScale"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6
    .parameter "pDuration"
    .parameter "pFromScale"
    .parameter "pToScale"
    .parameter "pEaseFunction"

    .prologue
    .line 32
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(FFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/ScaleModifier;)V
    .locals 0
    .parameter "pScaleModifier"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(Lorg/andengine/entity/modifier/DoubleValueSpanEntityModifier;)V

    .line 61
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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ScaleModifier;->deepCopy()Lorg/andengine/entity/modifier/ScaleModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/ScaleModifier;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lorg/andengine/entity/modifier/ScaleModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(Lorg/andengine/entity/modifier/ScaleModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ScaleModifier;->deepCopy()Lorg/andengine/entity/modifier/ScaleModifier;

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/andengine/entity/modifier/ScaleModifier;->onSetInitialValues(Lorg/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetInitialValues(Lorg/andengine/entity/IEntity;FF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pScaleA"
    .parameter "pScaleB"

    .prologue
    .line 78
    invoke-interface {p1, p2, p3}, Lorg/andengine/entity/IEntity;->setScale(FF)V

    .line 79
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/modifier/ScaleModifier;->onSetValues(Lorg/andengine/entity/IEntity;FFF)V

    return-void
.end method

.method protected onSetValues(Lorg/andengine/entity/IEntity;FFF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pPercentageDone"
    .parameter "pScaleA"
    .parameter "pScaleB"

    .prologue
    .line 83
    invoke-interface {p1, p3, p4}, Lorg/andengine/entity/IEntity;->setScale(FF)V

    .line 84
    return-void
.end method
