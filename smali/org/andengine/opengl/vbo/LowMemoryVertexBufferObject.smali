.class public Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;
.super Lorg/andengine/opengl/vbo/VertexBufferObject;
.source "LowMemoryVertexBufferObject.java"


# instance fields
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
    .line 41
    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/vbo/VertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 43
    iget-object v0, p0, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 44
    return-void
.end method


# virtual methods
.method public getFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;->mFloatBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getHeapMemoryByteSize()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getNativeHeapMemoryByteSize()I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;->getByteCapacity()I

    move-result v0

    return v0
.end method

.method protected onBufferData()V
    .locals 4

    .prologue
    .line 70
    const v0, 0x8892

    iget-object v1, p0, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/andengine/opengl/vbo/LowMemoryVertexBufferObject;->mUsage:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 71
    return-void
.end method
