.class public Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;
.super Lorg/andengine/opengl/vbo/VertexBufferObject;
.source "HighPerformanceVertexBufferObject.java"


# instance fields
.field protected final mBufferData:[F

.field protected final mFloatBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 1
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/VertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 41
    new-array v0, p2, [F

    iput-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mBufferData:[F

    .line 42
    sget-boolean v0, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_HONEYCOMB_OR_LATER:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;[FLorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 6
    .parameter "pVertexBufferObjectManager"
    .parameter "pBufferData"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 50
    array-length v2, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/vbo/VertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 51
    iput-object p2, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mBufferData:[F

    .line 53
    sget-boolean v0, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_HONEYCOMB_OR_LATER:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method


# virtual methods
.method public getBufferData()[F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mBufferData:[F

    return-object v0
.end method

.method public getHeapMemoryByteSize()I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->getByteCapacity()I

    move-result v0

    return v0
.end method

.method public getNativeHeapMemoryByteSize()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->getByteCapacity()I

    move-result v0

    return v0
.end method

.method protected onBufferData()V
    .locals 5

    .prologue
    const v4, 0x8892

    const/4 v3, 0x0

    .line 85
    sget-boolean v0, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_HONEYCOMB_OR_LATER:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    iget-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mBufferData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 90
    iget-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mUsage:I

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mBufferData:[F

    iget-object v2, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mBufferData:[F

    array-length v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/opengl/util/BufferUtils;->put(Ljava/nio/ByteBuffer;[FII)V

    .line 93
    iget-object v0, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/andengine/opengl/vbo/HighPerformanceVertexBufferObject;->mUsage:I

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0
.end method
