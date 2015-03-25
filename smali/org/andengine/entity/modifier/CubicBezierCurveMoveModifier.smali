.class public Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;
.super Lorg/andengine/entity/modifier/DurationEntityModifier;
.source "CubicBezierCurveMoveModifier.java"


# instance fields
.field private final mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

.field private final mX1:F

.field private final mX2:F

.field private final mX3:F

.field private final mX4:F

.field private final mY1:F

.field private final mY2:F

.field private final mY3:F

.field private final mY4:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 12
    .parameter "pDuration"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX4"
    .parameter "pY4"

    .prologue
    .line 51
    const/4 v10, 0x0

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v11

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

    invoke-direct/range {v0 .. v11}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;-><init>(FFFFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 52
    return-void
.end method

.method public constructor <init>(FFFFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 12
    .parameter "pDuration"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX4"
    .parameter "pY4"
    .parameter "pEntityModifierListener"

    .prologue
    .line 83
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v11

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

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;-><init>(FFFFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 84
    return-void
.end method

.method public constructor <init>(FFFFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX4"
    .parameter "pY4"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 100
    invoke-direct {p0, p1, p10}, Lorg/andengine/entity/modifier/DurationEntityModifier;-><init>(FLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 102
    iput p2, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX1:F

    .line 103
    iput p3, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY1:F

    .line 104
    iput p4, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX2:F

    .line 105
    iput p5, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY2:F

    .line 106
    iput p6, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX3:F

    .line 107
    iput p7, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY3:F

    .line 108
    iput p8, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX4:F

    .line 109
    iput p9, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY4:F

    .line 111
    iput-object p11, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    .line 112
    return-void
.end method

.method public constructor <init>(FFFFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 12
    .parameter "pDuration"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pX4"
    .parameter "pY4"
    .parameter "pEaseFunction"

    .prologue
    .line 67
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

    invoke-direct/range {v0 .. v11}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;-><init>(FFFFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 68
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;
    .locals 11

    .prologue
    .line 116
    new-instance v0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;

    iget v1, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mDuration:F

    iget v2, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX1:F

    iget v3, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY1:F

    iget v4, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX2:F

    iget v5, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY2:F

    iget v6, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX3:F

    iget v7, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY3:F

    iget v8, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX4:F

    iget v9, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY4:F

    iget-object v10, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct/range {v0 .. v10}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;-><init>(FFFFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->deepCopy()Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->deepCopy()Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->onManagedInitialize(Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 130
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->onManagedUpdate(FLorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/andengine/entity/IEntity;)V
    .locals 13
    .parameter "pSecondsElapsed"
    .parameter "pEntity"

    .prologue
    .line 134
    iget-object v10, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->getSecondsElapsed()F

    move-result v11

    iget v12, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mDuration:F

    invoke-interface {v10, v11, v12}, Lorg/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    .line 136
    .local v0, percentageDone:F
    const/high16 v10, 0x3f80

    sub-float v3, v10, v0

    .line 137
    .local v3, u:F
    mul-float v1, v0, v0

    .line 138
    .local v1, tt:F
    mul-float v6, v3, v3

    .line 139
    .local v6, uu:F
    mul-float v7, v6, v3

    .line 140
    .local v7, uuu:F
    mul-float v2, v1, v0

    .line 142
    .local v2, ttt:F
    const/high16 v10, 0x4040

    mul-float/2addr v10, v6

    mul-float v4, v10, v0

    .line 143
    .local v4, ut3:F
    const/high16 v10, 0x4040

    mul-float/2addr v10, v3

    mul-float v5, v10, v1

    .line 148
    .local v5, utt3:F
    iget v10, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX1:F

    mul-float/2addr v10, v7

    iget v11, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX2:F

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    iget v11, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX3:F

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    iget v11, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mX4:F

    mul-float/2addr v11, v2

    add-float v8, v10, v11

    .line 149
    .local v8, x:F
    iget v10, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY1:F

    mul-float/2addr v10, v7

    iget v11, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY2:F

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    iget v11, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY3:F

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    iget v11, p0, Lorg/andengine/entity/modifier/CubicBezierCurveMoveModifier;->mY4:F

    mul-float/2addr v11, v2

    add-float v9, v10, v11

    .line 151
    .local v9, y:F
    invoke-interface {p2, v8, v9}, Lorg/andengine/entity/IEntity;->setPosition(FF)V

    .line 152
    return-void
.end method
