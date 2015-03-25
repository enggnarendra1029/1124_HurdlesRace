.class public Lorg/andengine/util/adt/transformation/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private tx:F

.field private ty:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 43
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 44
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 45
    iput v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 46
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 47
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 55
    return-void
.end method

.method private postConcat(FFFFFF)V
    .locals 8
    .parameter "pA"
    .parameter "pB"
    .parameter "pC"
    .parameter "pD"
    .parameter "pTX"
    .parameter "pTY"

    .prologue
    .line 254
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 255
    .local v0, a:F
    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 256
    .local v1, b:F
    iget v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 257
    .local v2, c:F
    iget v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 258
    .local v3, d:F
    iget v4, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 259
    .local v4, tx:F
    iget v5, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 261
    .local v5, ty:F
    mul-float v6, v0, p1

    mul-float v7, v1, p3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 262
    mul-float v6, v0, p2

    mul-float v7, v1, p4

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 263
    mul-float v6, v2, p1

    mul-float v7, v3, p3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 264
    mul-float v6, v2, p2

    mul-float v7, v3, p4

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 265
    mul-float v6, v4, p1

    mul-float v7, v5, p3

    add-float/2addr v6, v7

    add-float/2addr v6, p5

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 266
    mul-float v6, v4, p2

    mul-float v7, v5, p4

    add-float/2addr v6, v7

    add-float/2addr v6, p6

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 267
    return-void
.end method

.method private preConcat(FFFFFF)V
    .locals 8
    .parameter "pA"
    .parameter "pB"
    .parameter "pC"
    .parameter "pD"
    .parameter "pTX"
    .parameter "pTY"

    .prologue
    .line 274
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 275
    .local v0, a:F
    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 276
    .local v1, b:F
    iget v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 277
    .local v2, c:F
    iget v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 278
    .local v3, d:F
    iget v4, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 279
    .local v4, tx:F
    iget v5, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 281
    .local v5, ty:F
    mul-float v6, p1, v0

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 282
    mul-float v6, p1, v1

    mul-float v7, p2, v3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 283
    mul-float v6, p3, v0

    mul-float v7, p4, v2

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 284
    mul-float v6, p3, v1

    mul-float v7, p4, v3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 285
    mul-float v6, p5, v0

    mul-float v7, p6, v2

    add-float/2addr v6, v7

    add-float/2addr v6, v4

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 286
    mul-float v6, p5, v1

    mul-float v7, p6, v3

    add-float/2addr v6, v7

    add-float/2addr v6, v5

    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 287
    return-void
.end method


# virtual methods
.method public final postConcat(Lorg/andengine/util/adt/transformation/Transformation;)V
    .locals 7
    .parameter "pTransformation"

    .prologue
    .line 250
    iget v1, p1, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    iget v2, p1, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    iget v3, p1, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    iget v4, p1, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    iget v5, p1, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    iget v6, p1, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/adt/transformation/Transformation;->postConcat(FFFFFF)V

    .line 251
    return-void
.end method

.method public final postRotate(F)V
    .locals 11
    .parameter "pAngle"

    .prologue
    .line 137
    const v9, 0x3c8efa35

    mul-float v1, v9, p1

    .line 139
    .local v1, angleRad:F
    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    .line 140
    .local v6, sin:F
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    .line 142
    .local v4, cos:F
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 143
    .local v0, a:F
    iget v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 144
    .local v2, b:F
    iget v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 145
    .local v3, c:F
    iget v5, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 146
    .local v5, d:F
    iget v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 147
    .local v7, tx:F
    iget v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 149
    .local v8, ty:F
    mul-float v9, v0, v4

    mul-float v10, v2, v6

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 150
    mul-float v9, v0, v6

    mul-float v10, v2, v4

    add-float/2addr v9, v10

    iput v9, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 151
    mul-float v9, v3, v4

    mul-float v10, v5, v6

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 152
    mul-float v9, v3, v6

    mul-float v10, v5, v4

    add-float/2addr v9, v10

    iput v9, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 153
    mul-float v9, v7, v4

    mul-float v10, v8, v6

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 154
    mul-float v9, v7, v6

    mul-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 155
    return-void
.end method

.method public final postScale(FF)V
    .locals 1
    .parameter "pScaleX"
    .parameter "pScaleY"

    .prologue
    .line 181
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 182
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 183
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 184
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 185
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 186
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 187
    return-void
.end method

.method public final postSkew(FF)V
    .locals 11
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    const v10, -0x437105cb

    .line 220
    mul-float v8, v10, p1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 221
    .local v4, tanX:F
    mul-float v8, v10, p2

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 223
    .local v5, tanY:F
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 224
    .local v0, a:F
    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 225
    .local v1, b:F
    iget v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 226
    .local v2, c:F
    iget v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 227
    .local v3, d:F
    iget v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 228
    .local v6, tx:F
    iget v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 230
    .local v7, ty:F
    mul-float v8, v1, v4

    add-float/2addr v8, v0

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 231
    mul-float v8, v0, v5

    add-float/2addr v8, v1

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 232
    mul-float v8, v3, v4

    add-float/2addr v8, v2

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 233
    mul-float v8, v2, v5

    add-float/2addr v8, v3

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 234
    mul-float v8, v7, v4

    add-float/2addr v8, v6

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 235
    mul-float v8, v6, v5

    add-float/2addr v8, v7

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 236
    return-void
.end method

.method public final postTranslate(FF)V
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 104
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 105
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 106
    return-void
.end method

.method public final preConcat(Lorg/andengine/util/adt/transformation/Transformation;)V
    .locals 7
    .parameter "pTransformation"

    .prologue
    .line 270
    iget v1, p1, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    iget v2, p1, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    iget v3, p1, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    iget v4, p1, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    iget v5, p1, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    iget v6, p1, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/util/adt/transformation/Transformation;->preConcat(FFFFFF)V

    .line 271
    return-void
.end method

.method public final preRotate(F)V
    .locals 9
    .parameter "pAngle"

    .prologue
    .line 120
    const v7, 0x3c8efa35

    mul-float v1, v7, p1

    .line 122
    .local v1, angleRad:F
    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    .line 123
    .local v6, sin:F
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    .line 125
    .local v4, cos:F
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 126
    .local v0, a:F
    iget v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 127
    .local v2, b:F
    iget v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 128
    .local v3, c:F
    iget v5, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 130
    .local v5, d:F
    mul-float v7, v4, v0

    mul-float v8, v6, v3

    add-float/2addr v7, v8

    iput v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 131
    mul-float v7, v4, v2

    mul-float v8, v6, v5

    add-float/2addr v7, v8

    iput v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 132
    mul-float v7, v4, v3

    mul-float v8, v6, v0

    sub-float/2addr v7, v8

    iput v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 133
    mul-float v7, v4, v5

    mul-float v8, v6, v2

    sub-float/2addr v7, v8

    iput v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 134
    return-void
.end method

.method public final preScale(FF)V
    .locals 1
    .parameter "pScaleX"
    .parameter "pScaleY"

    .prologue
    .line 174
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 175
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 176
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 177
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 178
    return-void
.end method

.method public final preSkew(FF)V
    .locals 11
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    const v10, -0x437105cb

    .line 201
    mul-float v8, v10, p1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 202
    .local v4, tanX:F
    mul-float v8, v10, p2

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 204
    .local v5, tanY:F
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 205
    .local v0, a:F
    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 206
    .local v1, b:F
    iget v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 207
    .local v2, c:F
    iget v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 208
    .local v3, d:F
    iget v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 209
    .local v6, tx:F
    iget v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 211
    .local v7, ty:F
    mul-float v8, v5, v2

    add-float/2addr v8, v0

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 212
    mul-float v8, v5, v3

    add-float/2addr v8, v1

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 213
    mul-float v8, v4, v0

    add-float/2addr v8, v2

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 214
    mul-float v8, v4, v1

    add-float/2addr v8, v3

    iput v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 215
    iput v6, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 216
    iput v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 217
    return-void
.end method

.method public final preTranslate(FF)V
    .locals 3
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 99
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 100
    iget v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 101
    return-void
.end method

.method public final reset()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 76
    return-void
.end method

.method public final setTo(Lorg/andengine/util/adt/transformation/Transformation;)V
    .locals 1
    .parameter "pTransformation"

    .prologue
    .line 89
    iget v0, p1, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 90
    iget v0, p1, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 92
    iget v0, p1, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 93
    iget v0, p1, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 94
    iget v0, p1, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 95
    iget v0, p1, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 96
    return-void
.end method

.method public final setToIdentity()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 79
    iput v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 80
    iput v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 82
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 83
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 84
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 85
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 86
    return-void
.end method

.method public final setToRotate(F)Lorg/andengine/util/adt/transformation/Transformation;
    .locals 5
    .parameter "pAngle"

    .prologue
    const/4 v4, 0x0

    .line 158
    const v3, 0x3c8efa35

    mul-float v0, v3, p1

    .line 160
    .local v0, angleRad:F
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    .line 161
    .local v2, sin:F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    .line 163
    .local v1, cos:F
    iput v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 164
    iput v2, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 165
    neg-float v3, v2

    iput v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 166
    iput v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 167
    iput v4, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 168
    iput v4, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 170
    return-object p0
.end method

.method public final setToScale(FF)Lorg/andengine/util/adt/transformation/Transformation;
    .locals 1
    .parameter "pScaleX"
    .parameter "pScaleY"

    .prologue
    const/4 v0, 0x0

    .line 190
    iput p1, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 191
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 192
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 193
    iput p2, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 194
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 195
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 197
    return-object p0
.end method

.method public final setToSkew(FF)Lorg/andengine/util/adt/transformation/Transformation;
    .locals 5
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const v2, -0x437105cb

    .line 239
    iput v4, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 240
    mul-float v0, v2, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 241
    mul-float v0, v2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 242
    iput v4, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 243
    iput v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 244
    iput v3, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 246
    return-object p0
.end method

.method public final setToTranslate(FF)Lorg/andengine/util/adt/transformation/Transformation;
    .locals 2
    .parameter "pX"
    .parameter "pY"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 109
    iput v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    .line 110
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    .line 111
    iput v0, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    .line 112
    iput v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    .line 113
    iput p1, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    .line 114
    iput p2, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    .line 116
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transformation{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][0.0, 0.0, 1.0]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform([F)V
    .locals 9
    .parameter "pVertices"

    .prologue
    .line 290
    array-length v7, p1

    shr-int/lit8 v0, v7, 0x1

    .line 291
    .local v0, count:I
    const/4 v1, 0x0

    .line 292
    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .line 293
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 299
    return-void

    .line 294
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget v5, p1, v2

    .line 295
    .local v5, x:F
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aget v6, p1, v1

    .line 296
    .local v6, y:F
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    iget v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->a:F

    mul-float/2addr v7, v5

    iget v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->c:F

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->tx:F

    add-float/2addr v7, v8

    aput v7, p1, v4

    .line 297
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    iget v7, p0, Lorg/andengine/util/adt/transformation/Transformation;->b:F

    mul-float/2addr v7, v5

    iget v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->d:F

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v8, p0, Lorg/andengine/util/adt/transformation/Transformation;->ty:F

    add-float/2addr v7, v8

    aput v7, p1, v3

    goto :goto_0
.end method
