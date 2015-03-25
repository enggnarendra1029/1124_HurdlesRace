.class public final Lorg/andengine/util/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lorg/andengine/util/math/MathUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayAverage([F)F
    .locals 2
    .parameter "pValues"

    .prologue
    .line 157
    invoke-static {p0}, Lorg/andengine/util/math/MathUtils;->arraySum([F)F

    move-result v0

    array-length v1, p0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static final arraySum([F)F
    .locals 4
    .parameter "pValues"

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, sum:F
    array-length v2, p0

    .line 150
    .local v2, valueCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 153
    return v1

    .line 151
    :cond_0
    aget v3, p0, v0

    add-float/2addr v1, v3

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([I)V
    .locals 4
    .parameter "pValues"

    .prologue
    .line 118
    array-length v1, p0

    .line 119
    .local v1, valueCount:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    aget v3, p0, v0

    add-int/2addr v2, v3

    aput v2, p0, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([J)V
    .locals 6
    .parameter "pValues"

    .prologue
    .line 125
    array-length v1, p0

    .line 126
    .local v1, valueCount:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 129
    return-void

    .line 127
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p0, v2

    aget-wide v4, p0, v0

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([JJ)V
    .locals 6
    .parameter "pValues"
    .parameter "pFactor"

    .prologue
    const/4 v4, 0x0

    .line 132
    aget-wide v2, p0, v4

    mul-long/2addr v2, p1

    aput-wide v2, p0, v4

    .line 133
    array-length v1, p0

    .line 134
    .local v1, valueCount:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 137
    return-void

    .line 135
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p0, v2

    aget-wide v4, p0, v0

    mul-long/2addr v4, p1

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInto([J[JJ)V
    .locals 6
    .parameter "pValues"
    .parameter "pTargetValues"
    .parameter "pFactor"

    .prologue
    const/4 v4, 0x0

    .line 140
    aget-wide v2, p0, v4

    mul-long/2addr v2, p2

    aput-wide v2, p1, v4

    .line 141
    array-length v1, p0

    .line 142
    .local v1, valueCount:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p1, v2

    aget-wide v4, p0, v0

    mul-long/2addr v4, p2

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final atan2(FF)F
    .locals 4
    .parameter "dY"
    .parameter "dX"

    .prologue
    .line 42
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final bringToBounds(FFF)F
    .locals 1
    .parameter "pMinValue"
    .parameter "pMaxValue"
    .parameter "pValue"

    .prologue
    .line 230
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static final bringToBounds(III)I
    .locals 1
    .parameter "pMinValue"
    .parameter "pMaxValue"
    .parameter "pValue"

    .prologue
    .line 220
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static cross(FFFF)F
    .locals 2
    .parameter "pXA"
    .parameter "pYA"
    .parameter "pXB"
    .parameter "pYB"

    .prologue
    .line 282
    mul-float v0, p0, p3

    mul-float v1, p2, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static final degToRad(F)F
    .locals 1
    .parameter "pDegree"

    .prologue
    .line 50
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final distance(FFFF)F
    .locals 4
    .parameter "pX1"
    .parameter "pY1"
    .parameter "pX2"
    .parameter "pY2"

    .prologue
    .line 237
    sub-float v0, p2, p0

    .line 238
    .local v0, dX:F
    sub-float v1, p3, p1

    .line 239
    .local v1, dY:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static dot(FFFF)F
    .locals 2
    .parameter "pXA"
    .parameter "pYA"
    .parameter "pXB"
    .parameter "pYB"

    .prologue
    .line 278
    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static final isEven(I)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 270
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isInBounds(FFF)Z
    .locals 1
    .parameter "pMinValue"
    .parameter "pMaxValue"
    .parameter "pValue"

    .prologue
    .line 210
    cmpl-float v0, p2, p0

    if-ltz v0, :cond_0

    cmpg-float v0, p2, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isInBounds(III)Z
    .locals 1
    .parameter "pMinValue"
    .parameter "pMaxValue"
    .parameter "pValue"

    .prologue
    .line 206
    if-lt p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isOdd(I)Z
    .locals 2
    .parameter "n"

    .prologue
    const/4 v0, 0x1

    .line 274
    rem-int/lit8 v1, p0, 0x2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPowerOfTwo(I)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final length(FF)F
    .locals 2
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 246
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public static final mix(FFF)F
    .locals 2
    .parameter "pX"
    .parameter "pY"
    .parameter "pMix"

    .prologue
    .line 256
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final mix(IIF)I
    .locals 2
    .parameter "pX"
    .parameter "pY"
    .parameter "pMix"

    .prologue
    .line 266
    int-to-float v0, p0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static final nextPowerOfTwo(F)I
    .locals 1
    .parameter "f"

    .prologue
    .line 89
    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lorg/andengine/util/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    return v0
.end method

.method public static final nextPowerOfTwo(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 93
    move v1, p0

    .line 95
    .local v1, k:I
    if-nez v1, :cond_0

    .line 96
    const/4 v2, 0x1

    .line 105
    :goto_0
    return v2

    .line 99
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 101
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    .line 105
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    shr-int v2, v1, v0

    or-int/2addr v1, v2

    .line 101
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final radToDeg(F)F
    .locals 1
    .parameter "pRad"

    .prologue
    .line 46
    const v0, 0x42652ee0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final random(FF)F
    .locals 2
    .parameter "pMin"
    .parameter "pMax"

    .prologue
    .line 72
    sget-object v0, Lorg/andengine/util/math/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final random(II)I
    .locals 2
    .parameter "pMin"
    .parameter "pMax"

    .prologue
    .line 81
    sget-object v0, Lorg/andengine/util/math/MathUtils;->RANDOM:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final randomSign()I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/andengine/util/math/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static revertRotateAndScaleAroundCenter([FFFFFFFF)[F
    .locals 1
    .parameter "pVertices"
    .parameter "pRotation"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"

    .prologue
    .line 201
    invoke-static {p0, p4, p5, p6, p7}, Lorg/andengine/util/math/MathUtils;->revertScaleAroundCenter([FFFFF)[F

    .line 202
    invoke-static {p0, p1, p2, p3}, Lorg/andengine/util/math/MathUtils;->revertRotateAroundCenter([FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static revertRotateAroundCenter([FFFF)[F
    .locals 1
    .parameter "pVertices"
    .parameter "pRotation"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"

    .prologue
    .line 197
    neg-float v0, p1

    invoke-static {p0, v0, p2, p3}, Lorg/andengine/util/math/MathUtils;->rotateAroundCenter([FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static revertScaleAroundCenter([FFFFF)[F
    .locals 2
    .parameter "pVertices"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"

    .prologue
    const/high16 v1, 0x3f80

    .line 193
    div-float v0, v1, p1

    div-float/2addr v1, p2

    invoke-static {p0, v0, v1, p3, p4}, Lorg/andengine/util/math/MathUtils;->scaleAroundCenter([FFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndScaleAroundCenter([FFFFFFFF)[F
    .locals 1
    .parameter "pVertices"
    .parameter "pRotation"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"

    .prologue
    .line 188
    invoke-static {p0, p1, p2, p3}, Lorg/andengine/util/math/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 189
    invoke-static {p0, p4, p5, p6, p7}, Lorg/andengine/util/math/MathUtils;->scaleAroundCenter([FFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static rotateAroundCenter([FFFF)[F
    .locals 9
    .parameter "pVertices"
    .parameter "pRotation"
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"

    .prologue
    .line 161
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_0

    .line 162
    invoke-static {p1}, Lorg/andengine/util/math/MathUtils;->degToRad(F)F

    move-result v4

    .line 163
    .local v4, rotationRad:F
    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 164
    .local v5, sinRotationRad:F
    invoke-static {v4}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 166
    .local v0, cosRotationInRad:F
    array-length v6, p0

    add-int/lit8 v1, v6, -0x2

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    .line 173
    .end local v0           #cosRotationInRad:F
    .end local v1           #i:I
    .end local v4           #rotationRad:F
    .end local v5           #sinRotationRad:F
    :cond_0
    return-object p0

    .line 167
    .restart local v0       #cosRotationInRad:F
    .restart local v1       #i:I
    .restart local v4       #rotationRad:F
    .restart local v5       #sinRotationRad:F
    :cond_1
    aget v2, p0, v1

    .line 168
    .local v2, pX:F
    add-int/lit8 v6, v1, 0x1

    aget v3, p0, v6

    .line 169
    .local v3, pY:F
    sub-float v6, v2, p2

    mul-float/2addr v6, v0

    sub-float v7, v3, p3

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    add-float/2addr v6, p2

    aput v6, p0, v1

    .line 170
    add-int/lit8 v6, v1, 0x1

    sub-float v7, v2, p2

    mul-float/2addr v7, v5

    sub-float v8, v3, p3

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    add-float/2addr v7, p3

    aput v7, p0, v6

    .line 166
    add-int/lit8 v1, v1, -0x2

    goto :goto_0
.end method

.method public static scaleAroundCenter([FFFFF)[F
    .locals 3
    .parameter "pVertices"
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"

    .prologue
    const/high16 v2, 0x3f80

    .line 177
    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    cmpl-float v1, p2, v2

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, -0x2

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_2

    .line 184
    .end local v0           #i:I
    :cond_1
    return-object p0

    .line 179
    .restart local v0       #i:I
    :cond_2
    aget v1, p0, v0

    sub-float/2addr v1, p3

    mul-float/2addr v1, p1

    add-float/2addr v1, p3

    aput v1, p0, v0

    .line 180
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    sub-float/2addr v2, p4

    mul-float/2addr v2, p2

    add-float/2addr v2, p4

    aput v2, p0, v1

    .line 178
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public static final signum(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_0
    if-lez p0, :cond_1

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final sum([I)I
    .locals 3
    .parameter "pValues"

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, sum:I
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 114
    return v1

    .line 111
    :cond_0
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
