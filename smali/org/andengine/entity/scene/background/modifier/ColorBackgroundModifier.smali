.class public Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;
.super Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;
.source "ColorBackgroundModifier.java"

# interfaces
.implements Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/modifier/BaseTripleValueSpanModifier",
        "<",
        "Lorg/andengine/entity/scene/background/IBackground;",
        ">;",
        "Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;"
    }
.end annotation


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
    .line 34
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;-><init>(FFFFFFFLorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 35
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromRed"
    .parameter "pToRed"
    .parameter "pFromGreen"
    .parameter "pToGreen"
    .parameter "pFromBlue"
    .parameter "pToBlue"
    .parameter "pBackgroundModifierListener"

    .prologue
    .line 50
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 51
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromRed"
    .parameter "pToRed"
    .parameter "pFromGreen"
    .parameter "pToGreen"
    .parameter "pFromBlue"
    .parameter "pToBlue"
    .parameter "pBackgroundModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p9}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 59
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
    .line 42
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;-><init>(FFFFFFFLorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 43
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromColor"
    .parameter "pToColor"

    .prologue
    .line 30
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;-><init>(FFFFFFFLorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 31
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pBackgroundModifierListener"

    .prologue
    .line 46
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 47
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pBackgroundModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 54
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 55
    return-void
.end method

.method public constructor <init>(FLorg/andengine/util/color/Color;Lorg/andengine/util/color/Color;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromColor"
    .parameter "pToColor"
    .parameter "pEaseFunction"

    .prologue
    .line 38
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;-><init>(FFFFFFFLorg/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;)V
    .locals 0
    .parameter "pColorBackgroundModifier"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;)V

    .line 63
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;-><init>(Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;->deepCopy()Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;->deepCopy()Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;

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
    check-cast p1, Lorg/andengine/entity/scene/background/IBackground;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;->onSetInitialValues(Lorg/andengine/entity/scene/background/IBackground;FFF)V

    return-void
.end method

.method protected onSetInitialValues(Lorg/andengine/entity/scene/background/IBackground;FFF)V
    .locals 0
    .parameter "pBackground"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 80
    invoke-interface {p1, p2, p3, p4}, Lorg/andengine/entity/scene/background/IBackground;->setColor(FFF)V

    .line 81
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

    check-cast v1, Lorg/andengine/entity/scene/background/IBackground;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/entity/scene/background/modifier/ColorBackgroundModifier;->onSetValues(Lorg/andengine/entity/scene/background/IBackground;FFFF)V

    return-void
.end method

.method protected onSetValues(Lorg/andengine/entity/scene/background/IBackground;FFFF)V
    .locals 0
    .parameter "pBackground"
    .parameter "pPerctentageDone"
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 85
    invoke-interface {p1, p3, p4, p5}, Lorg/andengine/entity/scene/background/IBackground;->setColor(FFF)V

    .line 86
    return-void
.end method
