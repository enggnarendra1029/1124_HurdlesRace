.class public Lorg/andengine/entity/modifier/JumpModifier;
.super Lorg/andengine/entity/modifier/MoveModifier;
.source "JumpModifier.java"


# static fields
.field private static final JUMPCOUNT_DEFAULT:I = 0x1


# instance fields
.field protected final mJumpCount:I

.field protected final mJumpHeight:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 9
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pJumpHeight"

    .prologue
    .line 32
    const/4 v7, 0x1

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/modifier/JumpModifier;-><init>(FFFFFFILorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFFFFI)V
    .locals 9
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pJumpHeight"
    .parameter "pJumpCount"

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

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/modifier/JumpModifier;-><init>(FFFFFFILorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFFFFILorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pJumpHeight"
    .parameter "pJumpCount"
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/JumpModifier;-><init>(FFFFFFILorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFFFFFILorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pJumpHeight"
    .parameter "pJumpCount"
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

    invoke-direct/range {v0 .. v7}, Lorg/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 62
    iput p6, p0, Lorg/andengine/entity/modifier/JumpModifier;->mJumpHeight:F

    .line 63
    iput p7, p0, Lorg/andengine/entity/modifier/JumpModifier;->mJumpCount:I

    .line 64
    return-void
.end method

.method public constructor <init>(FFFFFFILorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pJumpHeight"
    .parameter "pJumpCount"
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

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/JumpModifier;-><init>(FFFFFFILorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pJumpHeight"
    .parameter "pEntityModifierListener"

    .prologue
    .line 40
    const/4 v7, 0x1

    invoke-static {}, Lorg/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/andengine/util/modifier/ease/EaseLinear;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/JumpModifier;-><init>(FFFFFFILorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFFFLorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pJumpHeight"
    .parameter "pEntityModifierListener"
    .parameter "pEaseFunction"

    .prologue
    .line 44
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/andengine/entity/modifier/JumpModifier;-><init>(FFFFFFILorg/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFFFFLorg/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 9
    .parameter "pDuration"
    .parameter "pFromX"
    .parameter "pToX"
    .parameter "pFromY"
    .parameter "pToY"
    .parameter "pJumpHeight"
    .parameter "pEaseFunction"

    .prologue
    .line 36
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/entity/modifier/JumpModifier;-><init>(FFFFFFILorg/andengine/util/modifier/ease/IEaseFunction;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/andengine/entity/modifier/JumpModifier;)V
    .locals 1
    .parameter "pJumpModifier"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/andengine/entity/modifier/MoveModifier;-><init>(Lorg/andengine/entity/modifier/MoveModifier;)V

    .line 69
    iget v0, p1, Lorg/andengine/entity/modifier/JumpModifier;->mJumpHeight:F

    iput v0, p0, Lorg/andengine/entity/modifier/JumpModifier;->mJumpHeight:F

    .line 70
    iget v0, p1, Lorg/andengine/entity/modifier/JumpModifier;->mJumpCount:I

    iput v0, p0, Lorg/andengine/entity/modifier/JumpModifier;->mJumpCount:I

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/JumpModifier;->deepCopy()Lorg/andengine/entity/modifier/JumpModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/andengine/entity/modifier/JumpModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/andengine/entity/modifier/JumpModifier;

    invoke-direct {v0, p0}, Lorg/andengine/entity/modifier/JumpModifier;-><init>(Lorg/andengine/entity/modifier/JumpModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/andengine/entity/modifier/MoveModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/JumpModifier;->deepCopy()Lorg/andengine/entity/modifier/JumpModifier;

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
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/JumpModifier;->deepCopy()Lorg/andengine/entity/modifier/JumpModifier;

    move-result-object v0

    return-object v0
.end method

.method protected onSetValues(Lorg/andengine/entity/IEntity;FFF)V
    .locals 5
    .parameter "pEntity"
    .parameter "pPercentageDone"
    .parameter "pX"
    .parameter "pY"

    .prologue
    const/high16 v4, 0x3f80

    .line 88
    iget v2, p0, Lorg/andengine/entity/modifier/JumpModifier;->mJumpCount:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    rem-float v1, v2, v4

    .line 89
    .local v1, fraction:F
    iget v2, p0, Lorg/andengine/entity/modifier/JumpModifier;->mJumpHeight:F

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    sub-float v3, v4, v1

    mul-float v0, v2, v3

    .line 91
    .local v0, deltaY:F
    sub-float v2, p4, v0

    invoke-super {p0, p1, p2, p3, v2}, Lorg/andengine/entity/modifier/MoveModifier;->onSetValues(Lorg/andengine/entity/IEntity;FFF)V

    .line 92
    return-void
.end method
