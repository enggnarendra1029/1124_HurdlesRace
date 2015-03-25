.class public Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;
.super Lorg/andengine/entity/modifier/DurationEntityModifier;
.source "CardinalSplineMoveModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;
    }
.end annotation


# instance fields
.field private final mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

.field private final mControlSegmentCount:I

.field private final mControlSegmentCountInverse:F

.field private final mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;


# direct methods
.method public constructor <init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)V
    .locals 2
    .parameter "pDuration"
    .parameter "pCardinalSplineMoveModifierConfig"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 39
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 1
    .parameter "pDuration"
    .parameter "pCardinalSplineMoveModifierConfig"
    .parameter "pEntityModifierListener"

    .prologue
    .line 46
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 47
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 2
    .parameter "pDuration"
    .parameter "pCardinalSplineMoveModifierConfig"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 50
    invoke-direct {p0, p1, p3}, Lorg/andengine/entity/modifier/DurationEntityModifier;-><init>(FLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 52
    iput-object p2, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    .line 53
    iput-object p4, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    .line 55
    invoke-virtual {p2}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->getControlPointCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCount:I

    .line 56
    const/high16 v0, 0x3f80

    iget v1, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCountInverse:F

    .line 57
    return-void
.end method

.method public constructor <init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .parameter "pDuration"
    .parameter "pCardinalSplineMoveModifierConfig"
    .parameter "pEaseFunction"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 43
    return-void
.end method

.method public static final cardinalSplineX(FFFFFF)F
    .locals 11
    .parameter "pX0"
    .parameter "pX1"
    .parameter "pX2"
    .parameter "pX3"
    .parameter "pT"
    .parameter "pTension"

    .prologue
    .line 137
    move v5, p4

    .line 138
    .local v5, t:F
    mul-float v6, v5, v5

    .line 139
    .local v6, tt:F
    mul-float v7, v6, v5

    .line 141
    .local v7, ttt:F
    const/high16 v8, 0x3f80

    sub-float v8, v8, p5

    const/high16 v9, 0x4000

    div-float v4, v8, v9

    .line 143
    .local v4, s:F
    neg-float v8, v7

    const/high16 v9, 0x4000

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    sub-float/2addr v8, v5

    mul-float v0, v4, v8

    .line 144
    .local v0, b1:F
    neg-float v8, v7

    add-float/2addr v8, v6

    mul-float/2addr v8, v4

    const/high16 v9, 0x4000

    mul-float/2addr v9, v7

    const/high16 v10, 0x4040

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    add-float v1, v8, v9

    .line 145
    .local v1, b2:F
    const/high16 v8, 0x4000

    mul-float/2addr v8, v6

    sub-float v8, v7, v8

    add-float/2addr v8, v5

    mul-float/2addr v8, v4

    const/high16 v9, -0x4000

    mul-float/2addr v9, v7

    const/high16 v10, 0x4040

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    add-float v2, v8, v9

    .line 146
    .local v2, b3:F
    sub-float v8, v7, v6

    mul-float v3, v4, v8

    .line 148
    .local v3, b4:F
    mul-float v8, p0, v0

    mul-float v9, p1, v1

    add-float/2addr v8, v9

    mul-float v9, p2, v2

    add-float/2addr v8, v9

    mul-float v9, p3, v3

    add-float/2addr v8, v9

    return v8
.end method

.method public static final cardinalSplineY(FFFFFF)F
    .locals 11
    .parameter "pY0"
    .parameter "pY1"
    .parameter "pY2"
    .parameter "pY3"
    .parameter "pT"
    .parameter "pTension"

    .prologue
    .line 152
    move v5, p4

    .line 153
    .local v5, t:F
    mul-float v6, v5, v5

    .line 154
    .local v6, tt:F
    mul-float v7, v6, v5

    .line 156
    .local v7, ttt:F
    const/high16 v8, 0x3f80

    sub-float v8, v8, p5

    const/high16 v9, 0x4000

    div-float v4, v8, v9

    .line 158
    .local v4, s:F
    neg-float v8, v7

    const/high16 v9, 0x4000

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    sub-float/2addr v8, v5

    mul-float v0, v4, v8

    .line 159
    .local v0, b1:F
    neg-float v8, v7

    add-float/2addr v8, v6

    mul-float/2addr v8, v4

    const/high16 v9, 0x4000

    mul-float/2addr v9, v7

    const/high16 v10, 0x4040

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    add-float v1, v8, v9

    .line 160
    .local v1, b2:F
    const/high16 v8, 0x4000

    mul-float/2addr v8, v6

    sub-float v8, v7, v8

    add-float/2addr v8, v5

    mul-float/2addr v8, v4

    const/high16 v9, -0x4000

    mul-float/2addr v9, v7

    const/high16 v10, 0x4040

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    add-float v2, v8, v9

    .line 161
    .local v2, b3:F
    sub-float v8, v7, v6

    mul-float v3, v4, v8

    .line 163
    .local v3, b4:F
    mul-float v8, p0, v0

    mul-float v9, p1, v1

    add-float/2addr v8, v9

    mul-float v9, p2, v2

    add-float/2addr v8, v9

    mul-float v9, p3, v3

    add-float/2addr v8, v9

    return v8
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;

    iget v1, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mDuration:F

    iget-object v2, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    invoke-virtual {v2}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->deepCopy()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-result-object v2

    iget-object v3, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct {v0, v1, v2, v3}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->deepCopy()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->deepCopy()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->onManagedInitialize(Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 79
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->onManagedUpdate(FLorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/andengine/entity/IEntity;)V
    .locals 30
    .parameter "pSecondsElapsed"
    .parameter "pEntity"

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->getSecondsElapsed()F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mDuration:F

    move/from16 v29, v0

    invoke-interface/range {v27 .. v29}, Lorg/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v20

    .line 87
    .local v20, percentageDone:F
    const/high16 v27, 0x3f80

    cmpl-float v27, v20, v27

    if-nez v27, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget v7, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCount:I

    .line 94
    .local v7, p:I
    :goto_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCount:I

    move/from16 v28, v0

    add-int/lit8 v29, v7, -0x1

    invoke-static/range {v27 .. v29}, Lorg/andengine/util/math/MathUtils;->bringToBounds(III)I

    move-result v8

    .line 95
    .local v8, p0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v27, v0

    #getter for: Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F
    invoke-static/range {v27 .. v27}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->access$0(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F

    move-result-object v27

    aget v12, v27, v8

    .line 96
    .local v12, pX0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v27, v0

    #getter for: Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F
    invoke-static/range {v27 .. v27}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->access$1(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F

    move-result-object v27

    aget v16, v27, v8

    .line 98
    .local v16, pY0:F
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v0, v1, v7}, Lorg/andengine/util/math/MathUtils;->bringToBounds(III)I

    move-result v9

    .line 99
    .local v9, p1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v27, v0

    #getter for: Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F
    invoke-static/range {v27 .. v27}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->access$0(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F

    move-result-object v27

    aget v13, v27, v9

    .line 100
    .local v13, pX1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v27, v0

    #getter for: Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F
    invoke-static/range {v27 .. v27}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->access$1(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F

    move-result-object v27

    aget v17, v27, v9

    .line 102
    .local v17, pY1:F
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCount:I

    move/from16 v28, v0

    add-int/lit8 v29, v7, 0x1

    invoke-static/range {v27 .. v29}, Lorg/andengine/util/math/MathUtils;->bringToBounds(III)I

    move-result v10

    .line 103
    .local v10, p2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v27, v0

    #getter for: Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F
    invoke-static/range {v27 .. v27}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->access$0(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F

    move-result-object v27

    aget v14, v27, v10

    .line 104
    .local v14, pX2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v27, v0

    #getter for: Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F
    invoke-static/range {v27 .. v27}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->access$1(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F

    move-result-object v27

    aget v18, v27, v10

    .line 106
    .local v18, pY2:F
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCount:I

    move/from16 v28, v0

    add-int/lit8 v29, v7, 0x2

    invoke-static/range {v27 .. v29}, Lorg/andengine/util/math/MathUtils;->bringToBounds(III)I

    move-result v11

    .line 107
    .local v11, p3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v27, v0

    #getter for: Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F
    invoke-static/range {v27 .. v27}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->access$0(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F

    move-result-object v27

    aget v15, v27, v11

    .line 108
    .local v15, pX3:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v27, v0

    #getter for: Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F
    invoke-static/range {v27 .. v27}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->access$1(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F

    move-result-object v27

    aget v19, v27, v11

    .line 111
    .local v19, pY3:F
    int-to-float v0, v7

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCountInverse:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v27, v20, v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCountInverse:F

    move/from16 v28, v0

    div-float v22, v27, v28

    .line 112
    .local v22, t:F
    mul-float v23, v22, v22

    .line 113
    .local v23, tt:F
    mul-float v24, v23, v22

    .line 119
    .local v24, ttt:F
    const/high16 v27, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mTension:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    const/high16 v28, 0x4000

    div-float v21, v27, v28

    .line 121
    .local v21, s:F
    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4000

    mul-float v28, v28, v23

    add-float v27, v27, v28

    sub-float v27, v27, v22

    mul-float v3, v21, v27

    .line 122
    .local v3, b1:F
    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v23

    mul-float v27, v27, v21

    const/high16 v28, 0x4000

    mul-float v28, v28, v24

    const/high16 v29, 0x4040

    mul-float v29, v29, v23

    sub-float v28, v28, v29

    const/high16 v29, 0x3f80

    add-float v28, v28, v29

    add-float v4, v27, v28

    .line 123
    .local v4, b2:F
    const/high16 v27, 0x4000

    mul-float v27, v27, v23

    sub-float v27, v24, v27

    add-float v27, v27, v22

    mul-float v27, v27, v21

    const/high16 v28, -0x4000

    mul-float v28, v28, v24

    const/high16 v29, 0x4040

    mul-float v29, v29, v23

    add-float v28, v28, v29

    add-float v5, v27, v28

    .line 124
    .local v5, b3:F
    sub-float v27, v24, v23

    mul-float v6, v21, v27

    .line 126
    .local v6, b4:F
    mul-float v27, v12, v3

    mul-float v28, v13, v4

    add-float v27, v27, v28

    mul-float v28, v14, v5

    add-float v27, v27, v28

    mul-float v28, v15, v6

    add-float v25, v27, v28

    .line 127
    .local v25, x:F
    mul-float v27, v16, v3

    mul-float v28, v17, v4

    add-float v27, v27, v28

    mul-float v28, v18, v5

    add-float v27, v27, v28

    mul-float v28, v19, v6

    add-float v26, v27, v28

    .line 129
    .local v26, y:F
    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/andengine/entity/IEntity;->setPosition(FF)V

    .line 130
    return-void

    .line 90
    .end local v3           #b1:F
    .end local v4           #b2:F
    .end local v5           #b3:F
    .end local v6           #b4:F
    .end local v7           #p:I
    .end local v8           #p0:I
    .end local v9           #p1:I
    .end local v10           #p2:I
    .end local v11           #p3:I
    .end local v12           #pX0:F
    .end local v13           #pX1:F
    .end local v14           #pX2:F
    .end local v15           #pX3:F
    .end local v16           #pY0:F
    .end local v17           #pY1:F
    .end local v18           #pY2:F
    .end local v19           #pY3:F
    .end local v21           #s:F
    .end local v22           #t:F
    .end local v23           #tt:F
    .end local v24           #ttt:F
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mControlSegmentCountInverse:F

    move/from16 v27, v0

    div-float v27, v20, v27

    move/from16 v0, v27

    float-to-int v7, v0

    .restart local v7       #p:I
    goto/16 :goto_0
.end method

.method public reverse()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;

    iget v1, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mDuration:F

    iget-object v2, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mCardinalSplineMoveModifierConfig:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    invoke-virtual {v2}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->deepCopyReverse()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-result-object v2

    iget-object v3, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct {v0, v1, v2, v3}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;-><init>(FLorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    return-object v0
.end method
