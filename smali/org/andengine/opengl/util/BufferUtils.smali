.class public Lorg/andengine/opengl/util/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field private static final NATIVE_LIB_LOADED:Z

.field private static final WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT:Z

.field private static final WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 33
    :try_start_0
    const-string v2, "andengine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v0, 0x1

    .line 38
    .local v0, loadLibrarySuccess:Z
    :goto_0
    sput-boolean v0, Lorg/andengine/opengl/util/BufferUtils;->NATIVE_LIB_LOADED:Z

    .line 40
    sget-boolean v2, Lorg/andengine/opengl/util/BufferUtils;->NATIVE_LIB_LOADED:Z

    if-eqz v2, :cond_2

    .line 41
    invoke-static {v5, v6}, Lorg/andengine/util/system/SystemUtils;->isAndroidVersion(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    sput-boolean v3, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT:Z

    .line 47
    :goto_1
    const/16 v2, 0x8

    invoke-static {v2}, Lorg/andengine/util/system/SystemUtils;->isAndroidVersionOrLower(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sput-boolean v3, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY:Z

    .line 60
    :goto_2
    return-void

    .line 35
    .end local v0           #loadLibrarySuccess:Z
    :catch_0
    move-exception v1

    .line 36
    .local v1, pUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    const/4 v0, 0x0

    .restart local v0       #loadLibrarySuccess:Z
    goto :goto_0

    .line 44
    .end local v1           #pUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    sput-boolean v4, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT:Z

    goto :goto_1

    .line 50
    :cond_1
    sput-boolean v4, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY:Z

    goto :goto_2

    .line 53
    :cond_2
    sput-boolean v4, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT:Z

    .line 54
    invoke-static {v5, v6}, Lorg/andengine/util/system/SystemUtils;->isAndroidVersion(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will actually allocate 4x the memory than requested!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 58
    :cond_3
    sput-boolean v4, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY:Z

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateDirectByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "pCapacity"

    .prologue
    .line 87
    sget-boolean v0, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lorg/andengine/opengl/util/BufferUtils;->jniAllocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static freeDirectByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "pByteBuffer"

    .prologue
    .line 95
    sget-boolean v0, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_ALLOCATE_DIRECT:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0}, Lorg/andengine/opengl/util/BufferUtils;->jniFreeDirect(Ljava/nio/ByteBuffer;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static getUnsignedByte(Ljava/nio/ByteBuffer;)S
    .locals 1
    .parameter "pByteBuffer"

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static getUnsignedByte(Ljava/nio/ByteBuffer;I)S
    .locals 1
    .parameter "pByteBuffer"
    .parameter "pPosition"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;)J
    .locals 4
    .parameter "pByteBuffer"

    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;I)J
    .locals 4
    .parameter "pByteBuffer"
    .parameter "pPosition"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;)I
    .locals 2
    .parameter "pByteBuffer"

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .parameter "pByteBuffer"
    .parameter "pPosition"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static native jniAllocateDirect(I)Ljava/nio/ByteBuffer;
.end method

.method private static native jniFreeDirect(Ljava/nio/ByteBuffer;)V
.end method

.method private static native jniPut(Ljava/nio/ByteBuffer;[FII)V
.end method

.method public static put(Ljava/nio/ByteBuffer;[FII)V
    .locals 2
    .parameter "pByteBuffer"
    .parameter "pSource"
    .parameter "pLength"
    .parameter "pOffset"

    .prologue
    .line 110
    sget-boolean v1, Lorg/andengine/opengl/util/BufferUtils;->WORKAROUND_BYTEBUFFER_PUT_FLOATARRAY:Z

    if-eqz v1, :cond_1

    .line 111
    invoke-static {p0, p1, p2, p3}, Lorg/andengine/opengl/util/BufferUtils;->jniPut(Ljava/nio/ByteBuffer;[FII)V

    .line 117
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    shl-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 119
    return-void

    .line 113
    :cond_1
    move v0, p3

    .local v0, i:I
    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_0

    .line 114
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static putUnsignedByte(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .parameter "pByteBuffer"
    .parameter "pValue"

    .prologue
    .line 128
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 129
    return-void
.end method

.method public static putUnsignedByte(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .parameter "pByteBuffer"
    .parameter "pPosition"
    .parameter "pValue"

    .prologue
    .line 136
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 137
    return-void
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;IJ)V
    .locals 2
    .parameter "pByteBuffer"
    .parameter "pPosition"
    .parameter "pValue"

    .prologue
    .line 168
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 169
    return-void
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;J)V
    .locals 2
    .parameter "pByteBuffer"
    .parameter "pValue"

    .prologue
    .line 160
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    return-void
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .parameter "pByteBuffer"
    .parameter "pValue"

    .prologue
    .line 144
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 145
    return-void
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .parameter "pByteBuffer"
    .parameter "pPosition"
    .parameter "pValue"

    .prologue
    .line 152
    const v0, 0xffff

    and-int/2addr v0, p2

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 153
    return-void
.end method
