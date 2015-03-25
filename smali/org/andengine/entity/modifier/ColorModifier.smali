.class public Lorg/andengine/entity/modifier/ColorModifier;
.super Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;
.source "ColorModifier.java"


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromRed"
    .parameter "pToRed"
    .parameter "pFromGreen"
    .parameter "pToGreen"
    .parameter "pFromBlue"
    .parameter "pToBlue"

    .prologue
    .line 33
    const/4 v8, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/ColorModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 34
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromRed"
    .parameter "pToRed"
    .parameter "pFromGreen"
    .parameter "pToGreen"
    .parameter "pFromBlue"
    .parameter "pToBlue"
    .parameter "pEntityModifierListener"

    .prologue
    .line 49
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 50
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromRed"
    .parameter "pToRed"
    .parameter "pFromGreen"
    .parameter "pToGreen"
    .parameter "pFromBlue"
    .parameter "pToBlue"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p9}, Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 58
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromRed"
    .parameter "pToRed"
    .parameter "pFromGreen"
    .parameter "pToGreen"
    .parameter "pFromBlue"
    .parameter "pToBlue"
    .parameter "pEaseFunction"

    .prologue
    .line 41
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/ColorModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 42
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromColor"
    .parameter "pToColor"

    .prologue
    .line 29
    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v2

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v3

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v4

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v5

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v6

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v7

    const/4 v8, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/ColorModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 30
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pEntityModifierListener"

    .prologue
    .line 45
    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v2

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v3

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v4

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v5

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v6

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v7

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 46
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 53
    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v2

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v3

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v4

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v5

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v6

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v7

    move-object v0, p0

    move v1, p1

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 54
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pEaseFunction"

    .prologue
    .line 37
    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v2

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v3

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v4

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v5

    invoke-virtual {p2}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v6

    invoke-virtual {p3}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v7

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/ColorModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/ColorModifier;)V
    .locals 0
    .parameter "pColorModifier"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;-><init>(Lorg/andengine/entity/modifier/TripleValueSpanEntityModifier;)V

    .line 62
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/entity/modifier/ColorModifier;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lorg/andengine/entity/modifier/ColorModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/ColorModifier;-><init>(Lorg/andengine/entity/modifier/ColorModifier;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ColorModifier;->deepCopy()Lorg/andengine/entity/modifier/ColorModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ColorModifier;->deepCopy()Lorg/andengine/entity/modifier/ColorModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSetInitialValues(Ljava/lang/Object;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/modifier/ColorModifier;->onSetInitialValues(Lorg/andengine/entity/IEntity;FFF)V

    return-void
.end method

.method protected onSetInitialValues(Lorg/andengine/entity/IEntity;FFF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 79
    invoke-interface {p1, p2, p3, p4}, Lorg/andengine/entity/IEntity;->setColor(FFF)V

    .line 80
    return-void
.end method

.method protected bridge synthetic onSetValues(Ljava/lang/Object;FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    move-object v1, p1

    check-cast v1, Lorg/andengine/entity/IEntity;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/modifier/ColorModifier;->onSetValues(Lorg/andengine/entity/IEntity;FFFF)V

    return-void
.end method

.method protected onSetValues(Lorg/andengine/entity/IEntity;FFFF)V
    .locals 0
    .parameter "pEntity"
    .parameter "pPerctentageDone"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 84
    invoke-interface {p1, p3, p4, p5}, Lorg/andengine/entity/IEntity;->setColor(FFF)V

    .line 85
    return-void
.end method
