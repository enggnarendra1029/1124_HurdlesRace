.class public abstract Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;
.super Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;
.source "BaseQuadrupelValueSpanModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/modifier/BaseTripleValueSpanModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mFromValueD:F

.field private mValueSpanD:F


# direct methods
.method public constructor <init>(FFFFFFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 11
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"
    .parameter "pFromValueD"
    .parameter "pToValueD"
    .parameter
    .parameter "pEaseFunction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFFFF",
            "Lorg/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;",
            "Lorg/andengine/util/modifier/ease/IEaseFunction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;,"Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier<TT;>;"
    .local p10, pModifierListener:Lorg/andengine/util/modifier/IModifier$IModifierListener;,"Lorg/andengine/util/modifier/IModifier$IModifierListener<TT;>;"
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 35
    move/from16 v0, p8

    iput v0, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mFromValueD:F

    .line 36
    sub-float v1, p9, p8

    iput v1, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mValueSpanD:F

    .line 37
    return-void
.end method

.method public constructor <init>(FFFFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 12
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"
    .parameter "pFromValueD"
    .parameter "pToValueD"
    .parameter "pEaseFunction"

    .prologue
    .line 29
    .local p0, this:Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;,"Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier<TT;>;"
    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;-><init>(FFFFFFFFFLorg/andengine/util/modifier/IModifier$IModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;,"Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier<TT;>;"
    .local p1, pBaseTripleValueSpanModifier:Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;,"Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;)V

    .line 42
    iget v0, p1, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mFromValueD:F

    iput v0, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mFromValueD:F

    .line 43
    iget v0, p1, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mValueSpanD:F

    iput v0, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mValueSpanD:F

    .line 44
    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Ljava/lang/Object;FFF)V
    .locals 6
    .parameter
    .parameter "pValueA"
    .parameter "pValueB"
    .parameter "pValueC"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFF)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;,"Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    iget v5, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mFromValueD:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->onSetInitialValues(Ljava/lang/Object;FFFF)V

    .line 60
    return-void
.end method

.method protected abstract onSetInitialValues(Ljava/lang/Object;FFFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFFF)V"
        }
    .end annotation
.end method

.method protected onSetValues(Ljava/lang/Object;FFFF)V
    .locals 7
    .parameter
    .parameter "pPercentageDone"
    .parameter "pValueA"
    .parameter "pValueB"
    .parameter "pValueC"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFFF)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;,"Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier<TT;>;"
    .local p1, pItem:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mFromValueD:F

    iget v1, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mValueSpanD:F

    mul-float/2addr v1, p2

    add-float v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->onSetValues(Ljava/lang/Object;FFFFF)V

    .line 65
    return-void
.end method

.method protected abstract onSetValues(Ljava/lang/Object;FFFFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFFFF)V"
        }
    .end annotation
.end method

.method public reset(FFFFFFF)V
    .locals 0
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;,"Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier<TT;>;"
    invoke-super/range {p0 .. p7}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;->reset(FFFFFFF)V

    .line 75
    return-void
.end method

.method public reset(FFFFFFFFF)V
    .locals 1
    .parameter "pDuration"
    .parameter "pFromValueA"
    .parameter "pToValueA"
    .parameter "pFromValueB"
    .parameter "pToValueB"
    .parameter "pFromValueC"
    .parameter "pToValueC"
    .parameter "pFromValueD"
    .parameter "pToValueD"

    .prologue
    .line 78
    .local p0, this:Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;,"Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier<TT;>;"
    invoke-super/range {p0 .. p7}, Lorg/andengine/util/modifier/BaseTripleValueSpanModifier;->reset(FFFFFFF)V

    .line 80
    iput p8, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mFromValueD:F

    .line 81
    sub-float v0, p9, p8

    iput v0, p0, Lorg/andengine/util/modifier/BaseQuadrupelValueSpanModifier;->mValueSpanD:F

    .line 82
    return-void
.end method
