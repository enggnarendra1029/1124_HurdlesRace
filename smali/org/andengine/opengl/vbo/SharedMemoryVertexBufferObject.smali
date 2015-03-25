.class public abstract Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;
.super Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;
.source "SharedMemoryVertexBufferObject.java"


# static fields
.field private static sSharedByteBuffer:Ljava/nio/ByteBuffer;

.field private static sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 6
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pDrawType"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 60
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;-><init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 61
    return-void
.end method

.method public static getSharedByteBufferByteCapacity()I
    .locals 4

    .prologue
    .line 36
    :try_start_0
    sget-object v2, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 38
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .local v1, sharedByteBuffer:Ljava/nio/ByteBuffer;
    if-nez v1, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 45
    .local v0, byteCapacity:I
    :goto_0
    sget-object v2, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 48
    return v0

    .line 42
    .end local v0           #byteCapacity:I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 44
    .restart local v0       #byteCapacity:I
    goto :goto_0

    .end local v0           #byteCapacity:I
    :catchall_0
    move-exception v2

    .line 45
    sget-object v3, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    throw v2
.end method


# virtual methods
.method protected aquireByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 90
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 92
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->getByteCapacity()I

    move-result v0

    .line 94
    .local v0, byteCapacity:I
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 95
    :cond_0
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 96
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/andengine/opengl/util/BufferUtils;->freeDirectByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 99
    :cond_1
    invoke-static {v0}, Lorg/andengine/opengl/util/BufferUtils;->allocateDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    .line 100
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    :cond_2
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 105
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->dispose()V

    .line 76
    :try_start_0
    sget-object v0, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 78
    sget-object v0, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/andengine/opengl/util/BufferUtils;->freeDirectByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    sget-object v0, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    sget-object v1, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    throw v0
.end method

.method protected releaseByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 110
    sget-object v0, Lorg/andengine/opengl/vbo/SharedMemoryVertexBufferObject;->sSharedByteBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 111
    return-void
.end method
