.class public Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "ByteBufferOutputStream.java"


# instance fields
.field protected mCount:I

.field protected mData:[B

.field protected final mMaximumGrow:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "pInitialCapacity"
    .parameter "pMaximumGrow"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    iput p2, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mMaximumGrow:I

    .line 35
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mData:[B

    .line 36
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1
    .parameter "pDesiredCapacity"

    .prologue
    .line 70
    iget-object v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mData:[B

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->grow(I)V

    .line 73
    :cond_0
    return-void
.end method

.method private grow(I)V
    .locals 7
    .parameter "pDesiredCapacity"

    .prologue
    const/4 v6, 0x0

    .line 76
    iget-object v4, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mData:[B

    array-length v3, v4

    .line 77
    .local v3, oldCapacity:I
    iget v4, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mMaximumGrow:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 78
    .local v1, grow:I
    add-int v2, v3, v1

    .line 80
    .local v2, newCapacity:I
    sub-int v4, v2, p1

    if-gez v4, :cond_0

    .line 81
    move v2, p1

    .line 83
    :cond_0
    if-gez v2, :cond_2

    .line 84
    if-gez p1, :cond_1

    .line 85
    new-instance v4, Ljava/lang/OutOfMemoryError;

    invoke-direct {v4}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v4

    .line 87
    :cond_1
    const v2, 0x7fffffff

    .line 91
    :cond_2
    new-array v0, v2, [B

    .line 92
    .local v0, data:[B
    iget-object v4, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mData:[B

    iget v5, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mData:[B

    .line 94
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mData:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .parameter "pByte"

    .prologue
    .line 48
    iget v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->ensureCapacity(I)V

    .line 49
    iget-object v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mData:[B

    iget v1, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 50
    iget v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    .line 51
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "pData"
    .parameter "pOffset"
    .parameter "pLength"

    .prologue
    .line 55
    iget v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->ensureCapacity(I)V

    .line 56
    iget-object v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mData:[B

    iget v1, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/andengine/util/adt/io/out/ByteBufferOutputStream;->mCount:I

    .line 58
    return-void
.end method
