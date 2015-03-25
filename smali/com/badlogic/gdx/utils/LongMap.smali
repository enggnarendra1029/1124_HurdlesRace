.class public Lcom/badlogic/gdx/utils/LongMap;
.super Ljava/lang/Object;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/LongMap$Entries;,
        Lcom/badlogic/gdx/utils/LongMap$Entry;,
        Lcom/badlogic/gdx/utils/LongMap$Keys;,
        Lcom/badlogic/gdx/utils/LongMap$MapIterator;,
        Lcom/badlogic/gdx/utils/LongMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[J

.field private keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values:Lcom/badlogic/gdx/utils/LongMap$Values;

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 63
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const v0, 0x3f4ccccd

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 68
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialCapacity must be >= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    const/high16 v1, 0x4000

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialCapacity is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .line 73
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadFactor must be > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private containsKeyStash(J)Z
    .locals 5
    .parameter "key"

    .prologue
    .line 433
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 434
    .local v1, keyTable:[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, i:I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, n:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 436
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 435
    :cond_0
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 434
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getStash(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, defaultValue:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 315
    .local v1, keyTable:[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, i:I
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, n:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 317
    .end local p3           #defaultValue:Ljava/lang/Object;,"TV;"
    :goto_1
    return-object p3

    .line 316
    .restart local p3       #defaultValue:Ljava/lang/Object;,"TV;"
    :cond_0
    aget-wide v3, v1, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object p3, v3, v0

    goto :goto_1

    .line 315
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(J)I
    .locals 4
    .parameter "h"

    .prologue
    .line 494
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/32 v0, -0x4b47d1c7

    mul-long/2addr p1, v0

    .line 495
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private hash3(J)I
    .locals 4
    .parameter "h"

    .prologue
    .line 499
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/32 v0, -0x312e3dbf

    mul-long/2addr p1, v0

    .line 500
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private push(JLjava/lang/Object;IJIJIJ)V
    .locals 10
    .parameter "insertKey"
    .parameter
    .parameter "index1"
    .parameter "key1"
    .parameter "index2"
    .parameter "key2"
    .parameter "index3"
    .parameter "key3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;IJIJIJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, insertValue:Ljava/lang/Object;,"TV;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 205
    .local v4, keyTable:[J
    iget-object v7, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 206
    .local v7, valueTable:[Ljava/lang/Object;
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 211
    .local v5, mask:I
    const/4 v3, 0x0

    .local v3, i:I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 214
    .local v6, pushIterations:I
    :goto_0
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 228
    move-wide/from16 v0, p11

    .line 229
    .local v0, evictedKey:J
    aget-object v2, v7, p10

    .line 230
    .local v2, evictedValue:Ljava/lang/Object;,"TV;"
    aput-wide p1, v4, p10

    .line 231
    aput-object p3, v7, p10

    .line 236
    :goto_1
    int-to-long v8, v5

    and-long/2addr v8, v0

    long-to-int p4, v8

    .line 237
    aget-wide p5, v4, p4

    .line 238
    const-wide/16 v8, 0x0

    cmp-long v8, p5, v8

    if-nez v8, :cond_1

    .line 239
    aput-wide v0, v4, p4

    .line 240
    aput-object v2, v7, p4

    .line 241
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 270
    :cond_0
    :goto_2
    return-void

    .line 216
    .end local v0           #evictedKey:J
    .end local v2           #evictedValue:Ljava/lang/Object;,"TV;"
    :pswitch_0
    move-wide v0, p5

    .line 217
    .restart local v0       #evictedKey:J
    aget-object v2, v7, p4

    .line 218
    .restart local v2       #evictedValue:Ljava/lang/Object;,"TV;"
    aput-wide p1, v4, p4

    .line 219
    aput-object p3, v7, p4

    goto :goto_1

    .line 222
    .end local v0           #evictedKey:J
    .end local v2           #evictedValue:Ljava/lang/Object;,"TV;"
    :pswitch_1
    move-wide/from16 v0, p8

    .line 223
    .restart local v0       #evictedKey:J
    aget-object v2, v7, p7

    .line 224
    .restart local v2       #evictedValue:Ljava/lang/Object;,"TV;"
    aput-wide p1, v4, p7

    .line 225
    aput-object p3, v7, p7

    goto :goto_1

    .line 245
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result p7

    .line 246
    aget-wide p8, v4, p7

    .line 247
    const-wide/16 v8, 0x0

    cmp-long v8, p8, v8

    if-nez v8, :cond_2

    .line 248
    aput-wide v0, v4, p7

    .line 249
    aput-object v2, v7, p7

    .line 250
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_2

    .line 254
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result p10

    .line 255
    aget-wide p11, v4, p10

    .line 256
    const-wide/16 v8, 0x0

    cmp-long v8, p11, v8

    if-nez v8, :cond_3

    .line 257
    aput-wide v0, v4, p10

    .line 258
    aput-object v2, v7, p10

    .line 259
    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_2

    .line 263
    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_4

    .line 269
    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->putStash(JLjava/lang/Object;)V

    goto :goto_2

    .line 265
    :cond_4
    move-wide p1, v0

    .line 266
    move-object p3, v2

    .line 267
    goto/16 :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(JLjava/lang/Object;)V
    .locals 14
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 167
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v5, v1

    .line 174
    .local v5, index1:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v6, v1, v5

    .line 175
    .local v6, key1:J
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v5

    .line 177
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v5

    .line 178
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v8

    .line 183
    .local v8, index2:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v9, v1, v8

    .line 184
    .local v9, key2:J
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v8

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v8

    .line 187
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v11

    .line 192
    .local v11, index3:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v12, v1, v11

    .line 193
    .local v12, key3:J
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-nez v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v11

    .line 195
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v11

    .line 196
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    .line 200
    invoke-direct/range {v1 .. v13}, Lcom/badlogic/gdx/utils/LongMap;->push(JLjava/lang/Object;IJIJIJ)V

    goto/16 :goto_0
.end method

.method private putStash(JLjava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    if-ne v1, v2, :cond_0

    .line 275
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v1, v2

    .line 281
    .local v0, index:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v1, v0

    .line 282
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 283
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 284
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 10
    .parameter "newSize"

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v7, 0x0

    .line 470
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v3, v6, v8

    .line 472
    .local v3, oldEndIndex:I
    iput p1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .line 473
    int-to-float v6, p1

    iget v8, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 474
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 475
    int-to-long v8, p1

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3f

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    .line 476
    const/4 v6, 0x3

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    .line 477
    const/16 v6, 0x8

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    div-int/lit8 v8, v8, 0x8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 479
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 480
    .local v4, oldKeyTable:[J
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 482
    .local v5, oldValueTable:[Ljava/lang/Object;
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 483
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v6, p1

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 485
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 486
    iput v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 487
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v3, :cond_1

    .line 491
    return-void

    .end local v0           #i:I
    :cond_0
    move v6, v7

    .line 485
    goto :goto_0

    .line 488
    .restart local v0       #i:I
    :cond_1
    aget-wide v1, v4, v0

    .line 489
    .local v1, key:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-eqz v6, :cond_2

    aget-object v6, v5, v0

    invoke-direct {p0, v1, v2, v6}, Lcom/badlogic/gdx/utils/LongMap;->putResize(JLjava/lang/Object;)V

    .line 487
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 386
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 387
    .local v2, keyTable:[J
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 388
    .local v3, valueTable:[Ljava/lang/Object;
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-gtz v1, :cond_0

    .line 392
    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 393
    iput v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 394
    iput-object v7, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 395
    iput-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 396
    return-void

    .line 389
    :cond_0
    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 390
    aput-object v7, v3, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public containsKey(J)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 420
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 429
    :goto_0
    return v1

    .line 421
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v0, v1

    .line 422
    .local v0, index:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 423
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->containsKeyStash(J)Z

    move-result v1

    goto :goto_0

    .line 429
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 9
    .parameter "value"
    .parameter "identity"

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v4, 0x1

    .line 401
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 402
    .local v3, valueTable:[Ljava/lang/Object;
    if-nez p1, :cond_5

    .line 403
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v4

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 405
    .local v2, keyTable:[J
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-gtz v1, :cond_3

    .line 416
    .end local v2           #keyTable:[J
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 406
    .restart local v2       #keyTable:[J
    :cond_3
    aget-wide v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    :cond_4
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 407
    .end local v1           #i:I
    .end local v2           #keyTable:[J
    :cond_5
    if-eqz p2, :cond_6

    .line 408
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eq p1, v5, :cond_0

    .line 409
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0       #i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_2

    .line 410
    aget-object v5, v3, v0

    if-eq v5, p1, :cond_0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 412
    .end local v1           #i:I
    :cond_6
    iget-boolean v5, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 413
    :cond_7
    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0       #i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_2

    .line 414
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_3
.end method

.method public ensureCapacity(I)V
    .locals 3
    .parameter "additionalCapacity"

    .prologue
    .line 465
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int v0, v1, p1

    .line 466
    .local v0, sizeNeeded:I
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 467
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/LongMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Entries",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 537
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

    return-object v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    goto :goto_0
.end method

.method public findKey(Ljava/lang/Object;ZJ)J
    .locals 8
    .parameter "value"
    .parameter "identity"
    .parameter "notFound"

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v4, 0x0

    .line 444
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 445
    .local v3, valueTable:[Ljava/lang/Object;
    if-nez p1, :cond_2

    .line 446
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v6, :cond_1

    move-wide p3, v4

    .line 459
    .end local p3
    :cond_0
    :goto_0
    return-wide p3

    .line 447
    .restart local p3
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 448
    .local v2, keyTable:[J
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v6, v7

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 449
    aget-wide v6, v2, v0

    cmp-long v6, v6, v4

    if-eqz v6, :cond_8

    aget-object v6, v3, v0

    if-nez v6, :cond_8

    aget-wide p3, v2, v0

    goto :goto_0

    .line 450
    .end local v0           #i:I
    .end local v2           #keyTable:[J
    :cond_2
    if-eqz p2, :cond_4

    .line 451
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v6, :cond_3

    move-wide p3, v4

    goto :goto_0

    .line 452
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .restart local v0       #i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 453
    aget-object v4, v3, v0

    if-ne v4, p1, :cond_7

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide p3, v4, v0

    goto :goto_0

    .line 455
    .end local v0           #i:I
    :cond_4
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-wide p3, v4

    goto :goto_0

    .line 456
    :cond_5
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v4, v5

    .restart local v0       #i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 457
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide p3, v4, v0

    goto :goto_0

    :cond_6
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_3

    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_7
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .end local v1           #i:I
    .restart local v0       #i:I
    .restart local v2       #keyTable:[J
    :cond_8
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 297
    :goto_0
    return-object v1

    .line 289
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v0, v1

    .line 290
    .local v0, index:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/badlogic/gdx/utils/LongMap;->getStash(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, defaultValue:Ljava/lang/Object;,"TV;"
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 310
    :goto_0
    return-object v1

    .line 302
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v1, v1

    and-long/2addr v1, p1

    long-to-int v0, v1

    .line 303
    .local v0, index:I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/LongMap;->getStash(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public keys()Lcom/badlogic/gdx/utils/LongMap$Keys;
    .locals 1

    .prologue
    .line 553
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

    return-object v0

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    goto :goto_0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 89
    .local v18, oldValue:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 90
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    .line 91
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 92
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 156
    .end local v18           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_0
    :goto_0
    return-object v18

    .line 97
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    move-object/from16 v16, v0

    .line 100
    .local v16, keyTable:[J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long v2, v2, p1

    long-to-int v6, v2

    .line 101
    .local v6, index1:I
    aget-wide v7, v16, v6

    .line 102
    .local v7, key1:J
    cmp-long v2, v7, p1

    if-nez v2, :cond_2

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v18, v2, v6

    .line 104
    .restart local v18       #oldValue:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v6

    goto :goto_0

    .line 108
    .end local v18           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v9

    .line 109
    .local v9, index2:I
    aget-wide v10, v16, v9

    .line 110
    .local v10, key2:J
    cmp-long v2, v10, p1

    if-nez v2, :cond_3

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v18, v2, v9

    .line 112
    .restart local v18       #oldValue:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v9

    goto :goto_0

    .line 116
    .end local v18           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v12

    .line 117
    .local v12, index3:I
    aget-wide v13, v16, v12

    .line 118
    .local v13, key3:J
    cmp-long v2, v13, p1

    if-nez v2, :cond_4

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v18, v2, v12

    .line 120
    .restart local v18       #oldValue:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v12

    goto :goto_0

    .line 125
    .end local v18           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v15, i:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v17, v15, v2

    .local v17, n:I
    :goto_1
    move/from16 v0, v17

    if-lt v15, v0, :cond_6

    .line 134
    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-nez v2, :cond_8

    .line 135
    aput-wide p1, v16, v6

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v6

    .line 137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 138
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 126
    :cond_6
    aget-wide v2, v16, v15

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v18, v2, v15

    .line 128
    .restart local v18       #oldValue:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v15

    goto/16 :goto_0

    .line 125
    .end local v18           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 141
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_a

    .line 142
    aput-wide p1, v16, v9

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v9

    .line 144
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 145
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 148
    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-nez v2, :cond_c

    .line 149
    aput-wide p1, v16, v12

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v12

    .line 151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 152
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    .line 155
    invoke-direct/range {v2 .. v14}, Lcom/badlogic/gdx/utils/LongMap;->push(JLjava/lang/Object;IJIJIJ)V

    .line 156
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p1, map:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/LongMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    return-void

    .line 160
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/LongMap$Entry;

    .line 161
    .local v0, entry:Lcom/badlogic/gdx/utils/LongMap$Entry;,"Lcom/badlogic/gdx/utils/LongMap$Entry<TV;>;"
    iget-wide v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    iget-object v4, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 321
    cmp-long v3, p1, v5

    if-nez v3, :cond_1

    .line 322
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v3, :cond_0

    move-object v1, v2

    .line 357
    :goto_0
    return-object v1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 324
    .local v1, oldValue:Ljava/lang/Object;,"TV;"
    iput-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 325
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 326
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 330
    .end local v1           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v3, v3

    and-long/2addr v3, p1

    long-to-int v0, v3

    .line 331
    .local v0, index:I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 332
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v5, v3, v0

    .line 333
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 334
    .restart local v1       #oldValue:Ljava/lang/Object;,"TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 335
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 339
    .end local v1           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 340
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    .line 341
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v5, v3, v0

    .line 342
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 343
    .restart local v1       #oldValue:Ljava/lang/Object;,"TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 344
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 348
    .end local v1           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 349
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_4

    .line 350
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide v5, v3, v0

    .line 351
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 352
    .restart local v1       #oldValue:Ljava/lang/Object;,"TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 353
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_0

    .line 357
    .end local v1           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->removeStash(J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method removeStash(J)Ljava/lang/Object;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 362
    .local v1, keyTable:[J
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v0, i:I
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, n:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 370
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 363
    :cond_0
    aget-wide v4, v1, v0

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 364
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 365
    .local v3, oldValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->removeStashIndex(I)V

    .line 366
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    goto :goto_1

    .line 362
    .end local v3           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeStashIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v4, 0x0

    .line 375
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 376
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int v0, v1, v2

    .line 377
    .local v0, lastIndex:I
    if-ge p1, v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, p1

    .line 379
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 380
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v1, v0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v4, v1, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v9, 0x0

    const/16 v8, 0x3d

    .line 504
    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v7, :cond_0

    const-string v7, "[]"

    .line 527
    :goto_0
    return-object v7

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/16 v7, 0x5b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    iget-object v5, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 508
    .local v5, keyTable:[J
    iget-object v6, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 509
    .local v6, valueTable:[Ljava/lang/Object;
    array-length v1, v5

    .local v1, i:I
    move v2, v1

    .line 510
    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-gtz v2, :cond_1

    move v2, v1

    .line 518
    .end local v1           #i:I
    .restart local v2       #i:I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-gtz v2, :cond_3

    .line 526
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 511
    :cond_1
    aget-wide v3, v5, v1

    .line 512
    .local v3, key:J
    cmp-long v7, v3, v9

    if-nez v7, :cond_2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 513
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    aget-object v7, v6, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 516
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 519
    .end local v2           #i:I
    .end local v3           #key:J
    .restart local v1       #i:I
    :cond_3
    aget-wide v3, v5, v1

    .line 520
    .restart local v3       #key:J
    cmp-long v7, v3, v9

    if-nez v7, :cond_4

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 521
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_4
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    aget-object v7, v6, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2
.end method

.method public values()Lcom/badlogic/gdx/utils/LongMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, this:Lcom/badlogic/gdx/utils/LongMap;,"Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values:Lcom/badlogic/gdx/utils/LongMap$Values;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values:Lcom/badlogic/gdx/utils/LongMap$Values;

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    goto :goto_0
.end method
