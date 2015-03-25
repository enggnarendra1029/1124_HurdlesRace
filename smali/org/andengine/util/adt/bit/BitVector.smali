.class public final Lorg/andengine/util/adt/bit/BitVector;
.super Ljava/lang/Object;
.source "BitVector.java"


# instance fields
.field private final mCapacity:I

.field private final mData:[J


# direct methods
.method private constructor <init>(I)V
    .locals 4
    .parameter "pCapacity"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-gtz p1, :cond_0

    .line 30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pCapacity must be > 0."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_0
    iput p1, p0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    .line 35
    rem-int/lit8 v2, p1, 0x40

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 38
    .local v1, perfectDataFit:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 39
    div-int/lit8 v0, p1, 0x40

    .line 44
    .local v0, dataCapacity:I
    :goto_1
    new-array v2, v0, [J

    iput-object v2, p0, Lorg/andengine/util/adt/bit/BitVector;->mData:[J

    .line 45
    return-void

    .line 35
    .end local v0           #dataCapacity:I
    .end local v1           #perfectDataFit:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 42
    .restart local v1       #perfectDataFit:Z
    :cond_2
    div-int/lit8 v2, p1, 0x40

    add-int/lit8 v0, v2, 0x1

    .restart local v0       #dataCapacity:I
    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 18
    .parameter "pBytes"

    .prologue
    .line 48
    move-object/from16 v0, p1

    array-length v12, v0

    mul-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/andengine/util/adt/bit/BitVector;-><init>(I)V

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/util/adt/bit/BitVector;->mData:[J

    .line 53
    .local v2, data:[J
    move-object/from16 v0, p1

    array-length v12, v0

    rem-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_1

    const/4 v11, 0x1

    .line 55
    .local v11, perfectDataFit:Z
    :goto_0
    array-length v3, v2

    .line 56
    .local v3, dataCapacity:I
    if-eqz v11, :cond_2

    add-int/lit8 v5, v3, -0x1

    .line 58
    .local v5, lastCompleteDataIndex:I
    :goto_1
    move v4, v5

    .local v4, i:I
    :goto_2
    if-gez v4, :cond_3

    .line 72
    if-nez v11, :cond_0

    .line 73
    const-wide/16 v8, 0x0

    .line 75
    .local v8, overflowData:J
    add-int/lit8 v10, v3, -0x1

    .line 76
    .local v10, overflowDataIndex:I
    mul-int/lit8 v7, v10, 0x8

    .line 78
    .local v7, overflowBytesOffset:I
    move-object/from16 v0, p1

    array-length v12, v0

    sub-int v6, v12, v7

    .line 79
    .local v6, overflowByteCount:I
    packed-switch v6, :pswitch_data_0

    .line 96
    :goto_3
    aput-wide v8, v2, v10

    .line 98
    .end local v6           #overflowByteCount:I
    .end local v7           #overflowBytesOffset:I
    .end local v8           #overflowData:J
    .end local v10           #overflowDataIndex:I
    :cond_0
    return-void

    .line 53
    .end local v3           #dataCapacity:I
    .end local v4           #i:I
    .end local v5           #lastCompleteDataIndex:I
    .end local v11           #perfectDataFit:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 56
    .restart local v3       #dataCapacity:I
    .restart local v11       #perfectDataFit:Z
    :cond_2
    add-int/lit8 v5, v3, -0x2

    goto :goto_1

    .line 59
    .restart local v4       #i:I
    .restart local v5       #lastCompleteDataIndex:I
    :cond_3
    mul-int/lit8 v1, v4, 0x8

    .line 61
    .local v1, bytesOffset:I
    add-int/lit8 v12, v1, 0x0

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const/16 v14, 0x38

    shl-long/2addr v12, v14

    const-wide/high16 v14, -0x100

    and-long/2addr v12, v14

    .line 62
    add-int/lit8 v14, v1, 0x1

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x30

    shl-long v14, v14, v16

    const-wide/high16 v16, 0xff

    and-long v14, v14, v16

    or-long/2addr v12, v14

    .line 63
    add-int/lit8 v14, v1, 0x2

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x28

    shl-long v14, v14, v16

    const-wide v16, 0xff0000000000L

    and-long v14, v14, v16

    or-long/2addr v12, v14

    .line 64
    add-int/lit8 v14, v1, 0x3

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x20

    shl-long v14, v14, v16

    const-wide v16, 0xff00000000L

    and-long v14, v14, v16

    or-long/2addr v12, v14

    .line 65
    add-int/lit8 v14, v1, 0x4

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x18

    shl-long v14, v14, v16

    const-wide v16, 0xff000000L

    and-long v14, v14, v16

    or-long/2addr v12, v14

    .line 66
    add-int/lit8 v14, v1, 0x5

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x10

    shl-long v14, v14, v16

    const-wide/32 v16, 0xff0000

    and-long v14, v14, v16

    or-long/2addr v12, v14

    .line 67
    add-int/lit8 v14, v1, 0x6

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x8

    shl-long v14, v14, v16

    const-wide/32 v16, 0xff00

    and-long v14, v14, v16

    or-long/2addr v12, v14

    .line 68
    add-int/lit8 v14, v1, 0x7

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const/16 v16, 0x0

    shl-long v14, v14, v16

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    or-long/2addr v12, v14

    .line 61
    aput-wide v12, v2, v4

    .line 58
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_2

    .line 81
    .end local v1           #bytesOffset:I
    .restart local v6       #overflowByteCount:I
    .restart local v7       #overflowBytesOffset:I
    .restart local v8       #overflowData:J
    .restart local v10       #overflowDataIndex:I
    :pswitch_0
    add-int/lit8 v12, v7, 0x6

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const/16 v14, 0x8

    shl-long/2addr v12, v14

    const-wide/32 v14, 0xff00

    and-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 83
    :pswitch_1
    add-int/lit8 v12, v7, 0x5

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const/16 v14, 0x10

    shl-long/2addr v12, v14

    const-wide/32 v14, 0xff0000

    and-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 85
    :pswitch_2
    add-int/lit8 v12, v7, 0x4

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const/16 v14, 0x18

    shl-long/2addr v12, v14

    const-wide v14, 0xff000000L

    and-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 87
    :pswitch_3
    add-int/lit8 v12, v7, 0x3

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    const-wide v14, 0xff00000000L

    and-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 89
    :pswitch_4
    add-int/lit8 v12, v7, 0x2

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const/16 v14, 0x28

    shl-long/2addr v12, v14

    const-wide v14, 0xff0000000000L

    and-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 91
    :pswitch_5
    add-int/lit8 v12, v7, 0x1

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const/16 v14, 0x30

    shl-long/2addr v12, v14

    const-wide/high16 v14, 0xff

    and-long/2addr v12, v14

    or-long/2addr v8, v12

    .line 93
    :pswitch_6
    add-int/lit8 v12, v7, 0x0

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const/16 v14, 0x38

    shl-long/2addr v12, v14

    const-wide/high16 v14, -0x100

    and-long/2addr v12, v14

    or-long/2addr v8, v12

    goto/16 :goto_3

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBit(I)Z
    .locals 11
    .parameter "pPosition"

    .prologue
    .line 109
    if-gez p1, :cond_0

    .line 110
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "pPosition must be >= 0."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 112
    :cond_0
    iget v7, p0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    if-lt p1, v7, :cond_1

    .line 113
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "pPosition must be < capacity."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 116
    :cond_1
    div-int/lit8 v4, p1, 0x40

    .line 117
    .local v4, dataIndex:I
    rem-int/lit8 v5, p1, 0x40

    .line 119
    .local v5, dataOffset:I
    iget-object v7, p0, Lorg/andengine/util/adt/bit/BitVector;->mData:[J

    aget-wide v2, v7, v4

    .line 121
    .local v2, dataField:J
    rsub-int/lit8 v7, v5, 0x40

    add-int/lit8 v6, v7, -0x1

    .line 122
    .local v6, rightShift:I
    shr-long v7, v2, v6

    const-wide/16 v9, 0x1

    and-long v0, v7, v9

    .line 124
    .local v0, bit:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getBits(II)J
    .locals 15
    .parameter "pPosition"
    .parameter "pLength"

    .prologue
    .line 145
    if-gez p1, :cond_0

    .line 146
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "pPosition must be >= 0."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 148
    :cond_0
    if-gez p2, :cond_1

    .line 149
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "pLength must be >= 0."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 151
    :cond_1
    add-int v10, p1, p2

    iget v11, p0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    if-le v10, v11, :cond_2

    .line 152
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "pPosition + pLength must be <= capacity."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 156
    :cond_2
    if-nez p2, :cond_4

    .line 157
    const-wide/16 v1, 0x0

    .line 179
    :cond_3
    :goto_0
    return-wide v1

    .line 160
    :cond_4
    div-int/lit8 v3, p1, 0x40

    .line 161
    .local v3, dataIndex:I
    rem-int/lit8 v6, p1, 0x40

    .line 164
    .local v6, offset:I
    if-nez v6, :cond_5

    .line 165
    iget-object v10, p0, Lorg/andengine/util/adt/bit/BitVector;->mData:[J

    aget-wide v1, v10, v3

    .line 173
    .local v1, data:J
    :goto_1
    const/16 v10, 0x40

    move/from16 v0, p2

    if-eq v0, v10, :cond_3

    .line 176
    rsub-int/lit8 v7, p2, 0x40

    .line 177
    .local v7, rightShift:I
    const-wide/16 v10, -0x1

    ushr-long v4, v10, v7

    .line 178
    .local v4, mask:J
    shr-long v8, v1, v7

    .line 179
    .local v8, unmaskedBits:J
    and-long v1, v8, v4

    goto :goto_0

    .line 166
    .end local v1           #data:J
    .end local v4           #mask:J
    .end local v7           #rightShift:I
    .end local v8           #unmaskedBits:J
    :cond_5
    add-int v10, v6, p2

    const/16 v11, 0x40

    if-gt v10, v11, :cond_6

    .line 167
    iget-object v10, p0, Lorg/andengine/util/adt/bit/BitVector;->mData:[J

    aget-wide v10, v10, v3

    shl-long v1, v10, v6

    .line 168
    .restart local v1       #data:J
    goto :goto_1

    .line 170
    .end local v1           #data:J
    :cond_6
    iget-object v10, p0, Lorg/andengine/util/adt/bit/BitVector;->mData:[J

    aget-wide v10, v10, v3

    shl-long/2addr v10, v6

    iget-object v12, p0, Lorg/andengine/util/adt/bit/BitVector;->mData:[J

    add-int/lit8 v13, v3, 0x1

    aget-wide v12, v12, v13

    rsub-int/lit8 v14, v6, 0x40

    ushr-long/2addr v12, v14

    or-long v1, v10, v12

    .restart local v1       #data:J
    goto :goto_1
.end method

.method public getByte(I)B
    .locals 2
    .parameter "pPosition"

    .prologue
    .line 128
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/bit/BitVector;->getBits(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "pPosition"

    .prologue
    .line 136
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/bit/BitVector;->getBits(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "pPosition"

    .prologue
    .line 140
    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/bit/BitVector;->getBits(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "pPosition"

    .prologue
    .line 132
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/adt/bit/BitVector;->getBits(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 23

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x8

    if-nez v18, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    move/from16 v18, v0

    div-int/lit8 v2, v18, 0x8

    .line 213
    .local v2, byteArrayLength:I
    :goto_0
    new-array v3, v2, [B

    .line 215
    .local v3, bytes:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x40

    if-nez v18, :cond_2

    const/16 v17, 0x1

    .line 217
    .local v17, perfectDataFit:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/andengine/util/adt/bit/BitVector;->mData:[J

    .line 218
    .local v6, data:[J
    array-length v7, v6

    .line 219
    .local v7, dataCapacity:I
    if-eqz v17, :cond_3

    add-int/lit8 v11, v7, -0x1

    .line 221
    .local v11, lastCompleteDataIndex:I
    :goto_2
    mul-int/lit8 v18, v11, 0x8

    add-int/lit8 v4, v18, 0x7

    .line 222
    .local v4, bytesOffset:I
    move v10, v11

    .local v10, i:I
    move v5, v4

    .end local v4           #bytesOffset:I
    .local v5, bytesOffset:I
    :goto_3
    if-gez v10, :cond_4

    .line 236
    if-nez v17, :cond_0

    .line 237
    add-int/lit8 v16, v7, -0x1

    .line 238
    .local v16, overflowDataIndex:I
    aget-wide v14, v6, v16

    .line 240
    .local v14, overflowDataField:J
    mul-int/lit8 v13, v16, 0x8

    .line 242
    .local v13, overflowBytesOffset:I
    array-length v0, v3

    move/from16 v18, v0

    rem-int/lit8 v12, v18, 0x8

    .line 243
    .local v12, overflowByteCount:I
    packed-switch v12, :pswitch_data_0

    .line 261
    .end local v12           #overflowByteCount:I
    .end local v13           #overflowBytesOffset:I
    .end local v14           #overflowDataField:J
    .end local v16           #overflowDataIndex:I
    :cond_0
    :goto_4
    return-object v3

    .line 210
    .end local v2           #byteArrayLength:I
    .end local v3           #bytes:[B
    .end local v5           #bytesOffset:I
    .end local v6           #data:[J
    .end local v7           #dataCapacity:I
    .end local v10           #i:I
    .end local v11           #lastCompleteDataIndex:I
    .end local v17           #perfectDataFit:Z
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x8

    add-int/lit8 v2, v18, 0x1

    .restart local v2       #byteArrayLength:I
    goto :goto_0

    .line 215
    .restart local v3       #bytes:[B
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 219
    .restart local v6       #data:[J
    .restart local v7       #dataCapacity:I
    .restart local v17       #perfectDataFit:Z
    :cond_3
    add-int/lit8 v11, v7, -0x2

    goto :goto_2

    .line 223
    .restart local v5       #bytesOffset:I
    .restart local v10       #i:I
    .restart local v11       #lastCompleteDataIndex:I
    :cond_4
    aget-wide v8, v6, v10

    .line 225
    .local v8, dataField:J
    add-int/lit8 v4, v5, -0x1

    .end local v5           #bytesOffset:I
    .restart local v4       #bytesOffset:I
    const/16 v18, 0x0

    shr-long v18, v8, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v5

    .line 226
    add-int/lit8 v5, v4, -0x1

    .end local v4           #bytesOffset:I
    .restart local v5       #bytesOffset:I
    const/16 v18, 0x8

    shr-long v18, v8, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v4

    .line 227
    add-int/lit8 v4, v5, -0x1

    .end local v5           #bytesOffset:I
    .restart local v4       #bytesOffset:I
    const/16 v18, 0x10

    shr-long v18, v8, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v5

    .line 228
    add-int/lit8 v5, v4, -0x1

    .end local v4           #bytesOffset:I
    .restart local v5       #bytesOffset:I
    const/16 v18, 0x18

    shr-long v18, v8, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v4

    .line 229
    add-int/lit8 v4, v5, -0x1

    .end local v5           #bytesOffset:I
    .restart local v4       #bytesOffset:I
    const/16 v18, 0x20

    shr-long v18, v8, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v5

    .line 230
    add-int/lit8 v5, v4, -0x1

    .end local v4           #bytesOffset:I
    .restart local v5       #bytesOffset:I
    const/16 v18, 0x28

    shr-long v18, v8, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v4

    .line 231
    add-int/lit8 v4, v5, -0x1

    .end local v5           #bytesOffset:I
    .restart local v4       #bytesOffset:I
    const/16 v18, 0x30

    shr-long v18, v8, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v5

    .line 232
    add-int/lit8 v5, v4, -0x1

    .end local v4           #bytesOffset:I
    .restart local v5       #bytesOffset:I
    const/16 v18, 0x38

    shr-long v18, v8, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v3, v4

    .line 222
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_3

    .line 245
    .end local v8           #dataField:J
    .restart local v12       #overflowByteCount:I
    .restart local v13       #overflowBytesOffset:I
    .restart local v14       #overflowDataField:J
    .restart local v16       #overflowDataIndex:I
    :pswitch_0
    add-int/lit8 v18, v13, 0x6

    const/16 v19, 0x8

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    .line 247
    :pswitch_1
    add-int/lit8 v18, v13, 0x5

    const/16 v19, 0x10

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    .line 249
    :pswitch_2
    add-int/lit8 v18, v13, 0x4

    const/16 v19, 0x18

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    .line 251
    :pswitch_3
    add-int/lit8 v18, v13, 0x3

    const/16 v19, 0x20

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    .line 253
    :pswitch_4
    add-int/lit8 v18, v13, 0x2

    const/16 v19, 0x28

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    .line 255
    :pswitch_5
    add-int/lit8 v18, v13, 0x1

    const/16 v19, 0x30

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    .line 257
    :pswitch_6
    add-int/lit8 v18, v13, 0x0

    const/16 v19, 0x38

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v18

    goto/16 :goto_4

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    if-lt v0, v2, :cond_0

    .line 197
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 192
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/bit/BitVector;->getBit(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x31

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/andengine/util/adt/bit/BitVector;->mCapacity:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 194
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    const/16 v2, 0x30

    goto :goto_1
.end method
