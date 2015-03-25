.class public Lcom/badlogic/gdx/utils/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field static allocatedUnsafe:I

.field static unsafeBuffers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToElements(Ljava/nio/Buffer;I)I
    .locals 3
    .parameter "dst"
    .parameter "bytes"

    .prologue
    .line 188
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 201
    .end local p1
    :goto_0
    return p1

    .line 190
    .restart local p1
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 191
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 193
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 194
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 195
    ushr-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 196
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    .line 197
    ushr-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 198
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 199
    ushr-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 200
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    .line 201
    ushr-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 203
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t copy to a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native clear(Ljava/nio/ByteBuffer;I)V
.end method

.method public static copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
    .locals 3
    .parameter "src"
    .parameter "dst"
    .parameter "numElements"

    .prologue
    .line 163
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->elementsToBytes(Ljava/nio/Buffer;I)I

    move-result v0

    .line 164
    .local v0, numBytes:I
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v2

    invoke-static {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    .line 165
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    return-void
.end method

.method public static copy([BILjava/nio/Buffer;I)V
    .locals 2
    .parameter "src"
    .parameter "srcOffset"
    .parameter "dst"
    .parameter "numElements"

    .prologue
    .line 65
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([BILjava/nio/Buffer;II)V

    .line 66
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 67
    return-void
.end method

.method public static copy([CILjava/nio/Buffer;I)V
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "dst"
    .parameter "numElements"

    .prologue
    .line 93
    shl-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    shl-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([CILjava/nio/Buffer;II)V

    .line 94
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    return-void
.end method

.method public static copy([DILjava/nio/Buffer;I)V
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "dst"
    .parameter "numElements"

    .prologue
    .line 149
    shl-int/lit8 v0, p1, 0x3

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    shl-int/lit8 v2, p3, 0x3

    invoke-static {p0, v0, p2, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([DILjava/nio/Buffer;II)V

    .line 150
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 151
    return-void
.end method

.method public static copy([FILjava/nio/Buffer;I)V
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "dst"
    .parameter "numElements"

    .prologue
    .line 135
    shl-int/lit8 v0, p1, 0x2

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    shl-int/lit8 v2, p3, 0x2

    invoke-static {p0, v0, p2, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FILjava/nio/Buffer;II)V

    .line 136
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 137
    return-void
.end method

.method public static copy([FLjava/nio/Buffer;II)V
    .locals 1
    .parameter "src"
    .parameter "dst"
    .parameter "numFloats"
    .parameter "offset"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FLjava/nio/Buffer;II)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 50
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 51
    shl-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static copy([IILjava/nio/Buffer;I)V
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "dst"
    .parameter "numElements"

    .prologue
    .line 107
    shl-int/lit8 v0, p1, 0x2

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    shl-int/lit8 v2, p3, 0x2

    invoke-static {p0, v0, p2, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([IILjava/nio/Buffer;II)V

    .line 108
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    return-void
.end method

.method public static copy([JILjava/nio/Buffer;I)V
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "dst"
    .parameter "numElements"

    .prologue
    .line 121
    shl-int/lit8 v0, p1, 0x3

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    shl-int/lit8 v2, p3, 0x3

    invoke-static {p0, v0, p2, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([JILjava/nio/Buffer;II)V

    .line 122
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 123
    return-void
.end method

.method public static copy([SILjava/nio/Buffer;I)V
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "dst"
    .parameter "numElements"

    .prologue
    .line 79
    shl-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    shl-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([SILjava/nio/Buffer;II)V

    .line 80
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 81
    return-void
.end method

.method private static native copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([BILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([CILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([DILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([FILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([FLjava/nio/Buffer;II)V
.end method

.method private static native copyJni([IILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([JILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([SILjava/nio/Buffer;II)V
.end method

.method public static disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 276
    .local v0, size:I
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v2

    .line 277
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "buffer not allocated with newUnsafeByteBuffer or already disposed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    sub-int/2addr v1, v0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 281
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->freeMemory(Ljava/nio/ByteBuffer;)V

    .line 282
    return-void
.end method

.method private static elementsToBytes(Ljava/nio/Buffer;I)I
    .locals 3
    .parameter "dst"
    .parameter "elements"

    .prologue
    .line 207
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 220
    .end local p1
    :goto_0
    return p1

    .line 209
    .restart local p1
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 210
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 212
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 213
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 214
    shl-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 215
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    .line 216
    shl-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 217
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 218
    shl-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 219
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    .line 220
    shl-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 222
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t copy to a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native freeMemory(Ljava/nio/ByteBuffer;)V
.end method

.method public static getAllocatedBytesUnsafe()I
    .locals 1

    .prologue
    .line 316
    sget v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return v0
.end method

.method public static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "numBytes"

    .prologue
    .line 238
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 240
    return-object v0
.end method

.method public static newCharBuffer(I)Ljava/nio/CharBuffer;
    .locals 2
    .parameter "numChars"

    .prologue
    .line 250
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 251
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static native newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static newDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 2
    .parameter "numDoubles"

    .prologue
    .line 232
    mul-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 233
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "numFloats"

    .prologue
    .line 226
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 227
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "numInts"

    .prologue
    .line 256
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 257
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newLongBuffer(I)Ljava/nio/LongBuffer;
    .locals 2
    .parameter "numLongs"

    .prologue
    .line 262
    mul-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 263
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 2
    .parameter "numShorts"

    .prologue
    .line 244
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 245
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "numBytes"

    .prologue
    .line 288
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 289
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 290
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    add-int/2addr v1, p0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 291
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v2

    .line 292
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 291
    monitor-exit v2

    .line 294
    return-object v0

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static newUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "buffer"

    .prologue
    .line 305
    sget v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 306
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 307
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 306
    monitor-exit v1

    .line 309
    return-object p0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static positionInBytes(Ljava/nio/Buffer;)I
    .locals 3
    .parameter "dst"

    .prologue
    .line 169
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 171
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 177
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    .line 178
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 179
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 181
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    .line 182
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 184
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t copy to a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
