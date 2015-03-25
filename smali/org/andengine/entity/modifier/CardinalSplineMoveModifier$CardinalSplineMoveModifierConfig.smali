.class public Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;
.super Ljava/lang/Object;
.source "CardinalSplineMoveModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/modifier/CardinalSplineMoveModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardinalSplineMoveModifierConfig"
.end annotation


# static fields
.field private static final CONTROLPOINT_COUNT_MINIMUM:I = 0x4


# instance fields
.field private final mControlPointXs:[F

.field private final mControlPointYs:[F

.field final mTension:F


# direct methods
.method public constructor <init>(IF)V
    .locals 4
    .parameter "pControlPointCount"
    .parameter "pTension"

    .prologue
    const/4 v3, 0x4

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    if-ge p1, v3, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " control points."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput p2, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mTension:F

    .line 201
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F

    .line 202
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F

    .line 203
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F

    return-object v0
.end method

.method static synthetic access$1(Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;)[F
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F

    return-object v0
.end method


# virtual methods
.method public deepCopy()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->getControlPointCount()I

    move-result v0

    .line 208
    .local v0, controlPointCount:I
    new-instance v1, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    iget v2, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mTension:F

    invoke-direct {v1, v0, v2}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;-><init>(IF)V

    .line 210
    .local v1, copy:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;
    iget-object v2, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F

    iget-object v3, v1, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget-object v2, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F

    iget-object v3, v1, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-object v1
.end method

.method public deepCopyReverse()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->deepCopy()Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;

    move-result-object v0

    .line 219
    .local v0, copy:Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;
    iget-object v1, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F

    invoke-static {v1}, Lorg/andengine/util/adt/array/ArrayUtils;->reverse([F)V

    .line 220
    iget-object v1, v0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F

    invoke-static {v1}, Lorg/andengine/util/adt/array/ArrayUtils;->reverse([F)V

    .line 222
    return-object v0
.end method

.method public getControlPointCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F

    array-length v0, v0

    return v0
.end method

.method public getControlPointX(I)F
    .locals 1
    .parameter "pIndex"

    .prologue
    .line 239
    iget-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F

    aget v0, v0, p1

    return v0
.end method

.method public getControlPointY(I)F
    .locals 1
    .parameter "pIndex"

    .prologue
    .line 243
    iget-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F

    aget v0, v0, p1

    return v0
.end method

.method public setControlPoint(IFF)V
    .locals 1
    .parameter "pIndex"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 234
    iget-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointXs:[F

    aput p2, v0, p1

    .line 235
    iget-object v0, p0, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;->mControlPointYs:[F

    aput p3, v0, p1

    .line 236
    return-void
.end method
