.class public final Lorg/andengine/util/adt/array/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final contains([BB)Z
    .locals 2
    .parameter "pItems"
    .parameter "pItem"

    .prologue
    .line 256
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 261
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 257
    :cond_0
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_1

    .line 258
    const/4 v1, 0x1

    goto :goto_1

    .line 256
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final contains([CC)Z
    .locals 2
    .parameter "pItems"
    .parameter "pItem"

    .prologue
    .line 265
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 270
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 266
    :cond_0
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_1

    .line 267
    const/4 v1, 0x1

    goto :goto_1

    .line 265
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final contains([DD)Z
    .locals 3
    .parameter "pItems"
    .parameter "pItem"

    .prologue
    .line 310
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 315
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 311
    :cond_0
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_1

    .line 312
    const/4 v1, 0x1

    goto :goto_1

    .line 310
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final contains([FF)Z
    .locals 2
    .parameter "pItems"
    .parameter "pItem"

    .prologue
    .line 301
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 306
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 302
    :cond_0
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    .line 303
    const/4 v1, 0x1

    goto :goto_1

    .line 301
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final contains([II)Z
    .locals 2
    .parameter "pItems"
    .parameter "pItem"

    .prologue
    .line 283
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 288
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 284
    :cond_0
    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    .line 285
    const/4 v1, 0x1

    goto :goto_1

    .line 283
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final contains([JJ)Z
    .locals 3
    .parameter "pItems"
    .parameter "pItem"

    .prologue
    .line 292
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 297
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 293
    :cond_0
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 294
    const/4 v1, 0x1

    goto :goto_1

    .line 292
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final contains([SS)Z
    .locals 2
    .parameter "pItems"
    .parameter "pItem"

    .prologue
    .line 274
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 279
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 275
    :cond_0
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_1

    .line 276
    const/4 v1, 0x1

    goto :goto_1

    .line 274
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final equals([BI[BII)Z
    .locals 6
    .parameter "pArrayA"
    .parameter "pOffsetA"
    .parameter "pArrayB"
    .parameter "pOffsetB"
    .parameter "pLength"

    .prologue
    .line 180
    add-int v2, p1, p4

    .line 181
    .local v2, lastIndexA:I
    array-length v4, p0

    if-le v2, v4, :cond_0

    .line 182
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 185
    :cond_0
    add-int v3, p3, p4

    .line 186
    .local v3, lastIndexB:I
    array-length v4, p2

    if-le v3, v4, :cond_1

    .line 187
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v5, p2

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 190
    :cond_1
    move v0, p1

    .local v0, a:I
    move v1, p3

    .local v1, b:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 196
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 191
    :cond_2
    aget-byte v4, p0, v0

    aget-byte v5, p2, v1

    if-eq v4, v5, :cond_3

    .line 192
    const/4 v4, 0x0

    goto :goto_1

    .line 190
    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static idealBooleanArraySize(I)I
    .locals 1
    .parameter "pSize"

    .prologue
    .line 373
    invoke-static {p0}, Lorg/andengine/util/adt/array/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .parameter "pSize"

    .prologue
    const/4 v2, 0x1

    .line 363
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 369
    .end local p0
    :goto_1
    return p0

    .line 364
    .restart local p0
    :cond_0
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 365
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    goto :goto_1

    .line 363
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealCharArraySize(I)I
    .locals 1
    .parameter "pSize"

    .prologue
    .line 381
    shl-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lorg/andengine/util/adt/array/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static idealDoubleArraySize(I)I
    .locals 1
    .parameter "pSize"

    .prologue
    .line 393
    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Lorg/andengine/util/adt/array/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .locals 1
    .parameter "pSize"

    .prologue
    .line 389
    shl-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lorg/andengine/util/adt/array/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "pSize"

    .prologue
    .line 385
    shl-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lorg/andengine/util/adt/array/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .parameter "pSize"

    .prologue
    .line 397
    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Lorg/andengine/util/adt/array/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .locals 1
    .parameter "pSize"

    .prologue
    .line 401
    shl-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lorg/andengine/util/adt/array/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealShortArraySize(I)I
    .locals 1
    .parameter "pSize"

    .prologue
    .line 377
    shl-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lorg/andengine/util/adt/array/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter "pArrays"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, pClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 325
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-object v4

    .line 329
    :cond_1
    array-length v1, p1

    .line 330
    .local v1, arrayCount:I
    if-eqz v1, :cond_0

    .line 332
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 333
    aget-object v4, p1, v7

    goto :goto_0

    .line 336
    :cond_2
    const/4 v5, 0x0

    .line 338
    .local v5, resultLength:I
    array-length v6, p1

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_1
    if-gez v2, :cond_4

    .line 345
    if-eqz v5, :cond_0

    .line 350
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 351
    .local v4, result:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 352
    .local v3, offset:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_0

    .line 353
    aget-object v0, p1, v2

    .line 354
    .local v0, array:[Ljava/lang/Object;
    if-eqz v0, :cond_3

    array-length v6, v0

    if-lez v6, :cond_3

    .line 355
    array-length v6, v0

    invoke-static {v0, v7, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    array-length v6, v0

    add-int/2addr v3, v6

    .line 352
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 339
    .end local v0           #array:[Ljava/lang/Object;
    .end local v3           #offset:I
    .end local v4           #result:[Ljava/lang/Object;
    :cond_4
    aget-object v0, p1, v2

    .line 340
    .restart local v0       #array:[Ljava/lang/Object;
    if-eqz v0, :cond_5

    array-length v6, v0

    if-lez v6, :cond_5

    .line 341
    array-length v6, v0

    add-int/2addr v5, v6

    .line 338
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static final random([B)B
    .locals 2
    .parameter "pArray"

    .prologue
    .line 40
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(II)I

    move-result v0

    aget-byte v0, p0, v0

    return v0
.end method

.method public static final random([D)D
    .locals 2
    .parameter "pArray"

    .prologue
    .line 60
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(II)I

    move-result v0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public static final random([F)F
    .locals 2
    .parameter "pArray"

    .prologue
    .line 56
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(II)I

    move-result v0

    aget v0, p0, v0

    return v0
.end method

.method public static final random([I)I
    .locals 2
    .parameter "pArray"

    .prologue
    .line 48
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(II)I

    move-result v0

    aget v0, p0, v0

    return v0
.end method

.method public static final random([J)J
    .locals 2
    .parameter "pArray"

    .prologue
    .line 52
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(II)I

    move-result v0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public static final random([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "pArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(II)I

    move-result v0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static final random([S)S
    .locals 2
    .parameter "pArray"

    .prologue
    .line 44
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/andengine/util/math/MathUtils;->random(II)I

    move-result v0

    aget-short v0, p0, v0

    return v0
.end method

.method public static final reverse([B)V
    .locals 4
    .parameter "pArray"

    .prologue
    .line 68
    if-nez p0, :cond_1

    .line 81
    :cond_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    .line 72
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 74
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 75
    aget-byte v2, p0, v1

    .line 76
    .local v2, tmp:B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 77
    aput-byte v2, p0, v0

    .line 78
    add-int/lit8 v1, v1, -0x1

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final reverse([D)V
    .locals 6
    .parameter "pArray"

    .prologue
    .line 148
    if-nez p0, :cond_1

    .line 161
    :cond_0
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x0

    .line 152
    .local v0, i:I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 154
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 155
    aget-wide v2, p0, v1

    .line 156
    .local v2, tmp:D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 157
    aput-wide v2, p0, v0

    .line 158
    add-int/lit8 v1, v1, -0x1

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final reverse([F)V
    .locals 4
    .parameter "pArray"

    .prologue
    .line 132
    if-nez p0, :cond_1

    .line 145
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 136
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 138
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 139
    aget v2, p0, v1

    .line 140
    .local v2, tmp:F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 141
    aput v2, p0, v0

    .line 142
    add-int/lit8 v1, v1, -0x1

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final reverse([I)V
    .locals 4
    .parameter "pArray"

    .prologue
    .line 100
    if-nez p0, :cond_1

    .line 113
    :cond_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    .line 104
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 106
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 107
    aget v2, p0, v1

    .line 108
    .local v2, tmp:I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 109
    aput v2, p0, v0

    .line 110
    add-int/lit8 v1, v1, -0x1

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final reverse([J)V
    .locals 6
    .parameter "pArray"

    .prologue
    .line 116
    if-nez p0, :cond_1

    .line 129
    :cond_0
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    .line 120
    .local v0, i:I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 122
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 123
    aget-wide v2, p0, v1

    .line 124
    .local v2, tmp:J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 125
    aput-wide v2, p0, v0

    .line 126
    add-int/lit8 v1, v1, -0x1

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final reverse([Ljava/lang/Object;)V
    .locals 4
    .parameter "pArray"

    .prologue
    .line 164
    if-nez p0, :cond_1

    .line 177
    :cond_0
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    .line 168
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 170
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 171
    aget-object v2, p0, v1

    .line 172
    .local v2, tmp:Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 173
    aput-object v2, p0, v0

    .line 174
    add-int/lit8 v1, v1, -0x1

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final reverse([S)V
    .locals 4
    .parameter "pArray"

    .prologue
    .line 84
    if-nez p0, :cond_1

    .line 97
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 90
    .local v1, j:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 91
    aget-short v2, p0, v1

    .line 92
    .local v2, tmp:S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 93
    aput-short v2, p0, v0

    .line 94
    add-int/lit8 v1, v1, -0x1

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final toByteArray(Ljava/util/List;)[B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, pItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    .line 201
    .local v1, out:[B
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 204
    return-object v1

    .line 202
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final toCharArray(Ljava/util/List;)[C
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, pItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Character;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [C

    .line 209
    .local v1, out:[C
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 212
    return-object v1

    .line 210
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 209
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final toDoubleArray(Ljava/util/List;)[D
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, pItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [D

    .line 249
    .local v1, out:[D
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 252
    return-object v1

    .line 250
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 249
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final toFloatArray(Ljava/util/List;)[F
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, pItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [F

    .line 241
    .local v1, out:[F
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 244
    return-object v1

    .line 242
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 241
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final toIntArray(Ljava/util/List;)[I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, pItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 225
    .local v1, out:[I
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 228
    return-object v1

    .line 226
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 225
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final toLongArray(Ljava/util/List;)[J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, pItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 233
    .local v1, out:[J
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 236
    return-object v1

    .line 234
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 233
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final toShortArray(Ljava/util/List;)[S
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;)[S"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, pItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Short;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [S

    .line 217
    .local v1, out:[S
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 220
    return-object v1

    .line 218
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 217
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
