.class public Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;
.super Lorg/andengine/entity/modifier/DurationEntityModifier;
.source "QuadraticBezierCurveMoveModifier.java"


# instance fields
.field private final mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

.field private final mX1:F

.field private final mX2:F

.field private final mX3:F

.field private final mY1:F

.field private final mY2:F

.field private final mY3:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 10
    .parameter "pDuration"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"

    .prologue
    .line 46
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 47
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pEntityModifierListener"

    .prologue
    .line 74
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 75
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pEaseFunction"

    .prologue
    .line 60
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0
    .parameter "pDuration"
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"
    .parameter "pX3"
    .parameter "pY3"
    .parameter "pEaseFunction"
    .parameter "pEntityModifierListener"

    .prologue
    .line 89
    invoke-direct {p0, p1, p9}, Lorg/andengine/entity/modifier/DurationEntityModifier;-><init>(FLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    .line 91
    iput p2, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX1:F

    .line 92
    iput p3, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY1:F

    .line 93
    iput p4, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX2:F

    .line 94
    iput p5, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY2:F

    .line 95
    iput p6, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX3:F

    .line 96
    iput p7, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY3:F

    .line 98
    iput-object p8, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    .line 99
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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->deepCopy()Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;
    .locals 9

    .prologue
    .line 103
    new-instance v0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;

    iget v1, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mDuration:F

    iget v2, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX1:F

    iget v3, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY1:F

    iget v4, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX2:F

    iget v5, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY2:F

    iget v6, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX3:F

    iget v7, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY3:F

    iget-object v8, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->deepCopy()Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->onManagedInitialize(Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 117
    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->onManagedUpdate(FLorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/andengine/entity/IEntity;)V
    .locals 10
    .parameter "pSecondsElapsed"
    .parameter "pEntity"

    .prologue
    .line 121
    iget-object v7, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mEaseFunction:Lorg/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->getSecondsElapsed()F

    move-result v8

    iget v9, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mDuration:F

    invoke-interface {v7, v8, v9}, Lorg/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    .line 123
    .local v0, percentageDone:F
    const/high16 v7, 0x3f80

    sub-float v2, v7, v0

    .line 124
    .local v2, u:F
    mul-float v1, v0, v0

    .line 125
    .local v1, tt:F
    mul-float v4, v2, v2

    .line 127
    .local v4, uu:F
    const/high16 v7, 0x4000

    mul-float/2addr v7, v2

    mul-float v3, v7, v0

    .line 131
    .local v3, ut2:F
    iget v7, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX1:F

    mul-float/2addr v7, v4

    iget v8, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX2:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget v8, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mX3:F

    mul-float/2addr v8, v1

    add-float v5, v7, v8

    .line 132
    .local v5, x:F
    iget v7, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY1:F

    mul-float/2addr v7, v4

    iget v8, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY2:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget v8, p0, Lorg/andengine/entity/modifier/QuadraticBezierCurveMoveModifier;->mY3:F

    mul-float/2addr v8, v1

    add-float v6, v7, v8

    .line 134
    .local v6, y:F
    invoke-interface {p2, v5, v6}, Lorg/andengine/entity/IEntity;->setPosition(FF)V

    .line 135
    return-void
.end method
