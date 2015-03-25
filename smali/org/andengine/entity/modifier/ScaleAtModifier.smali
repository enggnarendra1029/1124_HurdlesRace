.class public Lorg/andengine/entity/modifier/ScaleAtModifier;
.super Lorg/andengine/entity/modifier/ScaleModifier;
.source "ScaleAtModifier.java"


# instance fields
.field private final mScaleCenterX:F

.field private final mScaleCenterY:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 7
    .parameter "pDuration"
    .parameter "pFromScale"
    .parameter "pToScale"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"

    .prologue
    .line 32
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFFFFF)V
    .locals 9
    .parameter "pDuration"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"

    .prologue
    .line 48
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"
    .parameter "pEntityModifierListener"

    .prologue
    .line 56
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 60
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 62
    iput p6, p0, Lorg/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterX:F

    .line 63
    iput p7, p0, Lorg/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterY:F

    .line 64
    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromScaleX"
    .parameter "pToScaleX"
    .parameter "pFromScaleY"
    .parameter "pToScaleY"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"
    .parameter "pEaseFunction"

    .prologue
    .line 52
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromScale"
    .parameter "pToScale"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"
    .parameter "pEntityModifierListener"

    .prologue
    .line 40
    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromScale"
    .parameter "pToScale"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 44
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromScale"
    .parameter "pToScale"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"
    .parameter "pEaseFunction"

    .prologue
    .line 36
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/entity/modifier/ScaleAtModifier;)V
    .locals 1
    .parameter "pScaleAtModifier"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/ScaleModifier;-><init>(Lorg/andengine/entity/modifier/ScaleModifier;)V

    .line 69
    iget v0, p1, Lorg/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterX:F

    iput v0, p0, Lorg/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterX:F

    .line 70
    iget v0, p1, Lorg/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterY:F

    iput v0, p0, Lorg/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterY:F

    .line 71
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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ScaleAtModifier;->deepCopy()Lorg/andengine/entity/modifier/ScaleAtModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/ScaleAtModifier;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/andengine/entity/modifier/ScaleAtModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/ScaleAtModifier;-><init>(Lorg/andengine/entity/modifier/ScaleAtModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/ScaleModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ScaleAtModifier;->deepCopy()Lorg/andengine/entity/modifier/ScaleAtModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/ScaleAtModifier;->deepCopy()Lorg/andengine/entity/modifier/ScaleAtModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/andengine/entity/modifier/ScaleAtModifier;->onManagedInitialize(Lorg/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/andengine/entity/IEntity;)V
    .locals 2
    .parameter "pEntity"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lorg/andengine/entity/modifier/ScaleModifier;->onManagedInitialize(Ljava/lang/Object;)V

    .line 89
    iget v0, p0, Lorg/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterX:F

    iget v1, p0, Lorg/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterY:F

    invoke-interface {p1, v0, v1}, Lorg/andengine/entity/IEntity;->setScaleCenter(FF)V

    .line 90
    return-void
.end method
