.class public abstract Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;
.super Ljava/lang/Object;
.source "ZeroMemoryVertexBufferObject.java"

# interfaces
.implements Lorg/andengine/opengl/vbo/IVertexBufferObject;


# instance fields
.field protected final mAutoDispose:Z

.field protected final mCapacity:I

.field protected mDirtyOnHardware:Z

.field protected mDisposed:Z

.field protected mHardwareBufferID:I

.field protected final mUsage:I

.field protected final mVertexBufferObjectAttributes:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

.field protected final mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 1
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDirtyOnHardware:Z

    .line 57
    iput-object p1, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    .line 58
    iput p2, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mCapacity:I

    .line 59
    invoke-virtual {p3}, Lorg/andengine/opengl/vbo/DrawType;->getUsage()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mUsage:I

    .line 60
    iput-boolean p4, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mAutoDispose:Z

    .line 61
    iput-object p5, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mVertexBufferObjectAttributes:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 62
    return-void
.end method

.method private loadToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 227
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->generateBuffer()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDirtyOnHardware:Z

    .line 229
    return-void
.end method


# virtual methods
.method protected aquireByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->getByteCapacity()I

    move-result v1

    invoke-static {v1}, Lorg/andengine/opengl/util/BufferUtils;->allocateDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 237
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 238
    return-object v0
.end method

.method public bind(Lorg/andengine/opengl/util/GLState;)V
    .locals 4
    .parameter "pGLState"

    .prologue
    .line 146
    iget v1, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->loadToHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 148
    iget-object v1, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-virtual {v1, p0}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->onVertexBufferObjectLoaded(Lorg/andengine/opengl/vbo/IVertexBufferObject;)V

    .line 151
    :cond_0
    iget v1, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    invoke-virtual {p1, v1}, Lorg/andengine/opengl/util/GLState;->bindArrayBuffer(I)V

    .line 153
    iget-boolean v1, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDirtyOnHardware:Z

    if-eqz v1, :cond_2

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->aquireByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->onPopulateBufferData(Ljava/nio/ByteBuffer;)V

    .line 160
    const v1, 0x8892

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget v3, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mUsage:I

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0, v0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 167
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDirtyOnHardware:Z

    .line 169
    .end local v0           #byteBuffer:Ljava/nio/ByteBuffer;
    :cond_2
    return-void

    .line 161
    .restart local v0       #byteBuffer:Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    .line 162
    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p0, v0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 165
    :cond_3
    throw v1
.end method

.method public bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pShaderProgram"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;)V

    .line 175
    iget-object v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mVertexBufferObjectAttributes:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    invoke-virtual {p2, p1, v0}, Lorg/andengine/opengl/shader/ShaderProgram;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 176
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDisposed:Z

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDisposed:Z

    .line 207
    iget-object v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->onUnloadVertexBufferObject(Lorg/andengine/opengl/vbo/IVertexBufferObject;)V

    .line 211
    return-void

    .line 209
    :cond_0
    new-instance v0, Lorg/andengine/util/IDisposable$AlreadyDisposedException;

    invoke-direct {v0}, Lorg/andengine/util/IDisposable$AlreadyDisposedException;-><init>()V

    throw v0
.end method

.method public draw(II)V
    .locals 1
    .parameter "pPrimitiveType"
    .parameter "pCount"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 195
    return-void
.end method

.method public draw(III)V
    .locals 0
    .parameter "pPrimitiveType"
    .parameter "pOffset"
    .parameter "pCount"

    .prologue
    .line 199
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 200
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 217
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDisposed:Z

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->dispose()V

    .line 220
    :cond_0
    return-void
.end method

.method public getByteCapacity()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mCapacity:I

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mCapacity:I

    return v0
.end method

.method public getGPUMemoryByteSize()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->getByteCapacity()I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHardwareBufferID()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    return v0
.end method

.method public getHeapMemoryByteSize()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getNativeHeapMemoryByteSize()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    return-object v0
.end method

.method public isAutoDispose()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mAutoDispose:Z

    return v0
.end method

.method public isDirtyOnHardware()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDirtyOnHardware:Z

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDisposed:Z

    return v0
.end method

.method public isLoadedToHardware()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onPopulateBufferData(Ljava/nio/ByteBuffer;)V
.end method

.method protected releaseByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "byteBuffer"

    .prologue
    .line 242
    invoke-static {p1}, Lorg/andengine/opengl/util/BufferUtils;->freeDirectByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 243
    return-void
.end method

.method public setDirtyOnHardware()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDirtyOnHardware:Z

    .line 107
    return-void
.end method

.method public setNotLoadedToHardware()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mDirtyOnHardware:Z

    .line 97
    return-void
.end method

.method public unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pGLState"
    .parameter "pShaderProgram"

    .prologue
    .line 180
    invoke-virtual {p2, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->unbind(Lorg/andengine/opengl/util/GLState;)V

    .line 183
    return-void
.end method

.method public unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 187
    iget v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->deleteArrayBuffer(I)V

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/vbo/ZeroMemoryVertexBufferObject;->mHardwareBufferID:I

    .line 190
    return-void
.end method
