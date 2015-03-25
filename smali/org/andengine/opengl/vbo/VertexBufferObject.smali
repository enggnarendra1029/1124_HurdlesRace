.class public abstract Lorg/andengine/opengl/vbo/VertexBufferObject;
.super Ljava/lang/Object;
.source "VertexBufferObject.java"

# interfaces
.implements Lorg/andengine/opengl/vbo/IVertexBufferObject;


# instance fields
.field protected final mAutoDispose:Z

.field protected final mByteBuffer:Ljava/nio/ByteBuffer;

.field protected final mCapacity:I

.field protected mDirtyOnHardware:Z

.field protected mDisposed:Z

.field protected mHardwareBufferID:I

.field protected final mUsage:I

.field protected final mVertexBufferObjectAttributes:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

.field protected final mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/vbo/VertexBufferObjectManager;ILorg/andengine/opengl/vbo/DrawType;ZLorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V
    .locals 2
    .parameter "pVertexBufferObjectManager"
    .parameter "pCapacity"
    .parameter "pDrawType"
    .parameter "pAutoDispose"
    .parameter "pVertexBufferObjectAttributes"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDirtyOnHardware:Z

    .line 58
    iput-object p1, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    .line 59
    iput p2, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mCapacity:I

    .line 60
    invoke-virtual {p3}, Lorg/andengine/opengl/vbo/DrawType;->getUsage()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mUsage:I

    .line 61
    iput-boolean p4, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mAutoDispose:Z

    .line 62
    iput-object p5, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mVertexBufferObjectAttributes:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    .line 64
    mul-int/lit8 v0, p2, 0x4

    invoke-static {v0}, Lorg/andengine/opengl/util/BufferUtils;->allocateDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 66
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    return-void
.end method

.method private loadToHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->generateBuffer()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDirtyOnHardware:Z

    .line 221
    return-void
.end method


# virtual methods
.method public bind(Lorg/andengine/opengl/util/GLState;)V
    .locals 2
    .parameter "pGLState"

    .prologue
    .line 141
    iget v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lorg/andengine/opengl/vbo/VertexBufferObject;->loadToHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 144
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->onVertexBufferObjectLoaded(Lorg/andengine/opengl/vbo/IVertexBufferObject;)V

    .line 149
    :cond_0
    iget v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->bindArrayBuffer(I)V

    .line 151
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDirtyOnHardware:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/VertexBufferObject;->onBufferData()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDirtyOnHardware:Z

    .line 156
    :cond_1
    return-void
.end method

.method public bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pShaderProgram"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/vbo/VertexBufferObject;->bind(Lorg/andengine/opengl/util/GLState;)V

    .line 162
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mVertexBufferObjectAttributes:Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;

    invoke-virtual {p2, p1, v0}, Lorg/andengine/opengl/shader/ShaderProgram;->bind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/vbo/attribute/VertexBufferObjectAttributes;)V

    .line 163
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDisposed:Z

    if-nez v0, :cond_1

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDisposed:Z

    .line 195
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->onUnloadVertexBufferObject(Lorg/andengine/opengl/vbo/IVertexBufferObject;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/andengine/opengl/util/BufferUtils;->freeDirectByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 203
    return-void

    .line 201
    :cond_1
    new-instance v0, Lorg/andengine/util/IDisposable$AlreadyDisposedException;

    invoke-direct {v0}, Lorg/andengine/util/IDisposable$AlreadyDisposedException;-><init>()V

    throw v0
.end method

.method public draw(II)V
    .locals 1
    .parameter "pPrimitiveType"
    .parameter "pCount"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 183
    return-void
.end method

.method public draw(III)V
    .locals 0
    .parameter "pPrimitiveType"
    .parameter "pOffset"
    .parameter "pCount"

    .prologue
    .line 187
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 188
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
    .line 207
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 209
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDisposed:Z

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/VertexBufferObject;->dispose()V

    .line 212
    :cond_0
    return-void
.end method

.method public getByteCapacity()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mCapacity:I

    return v0
.end method

.method public getGPUMemoryByteSize()I
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/VertexBufferObject;->isLoadedToHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/andengine/opengl/vbo/VertexBufferObject;->getByteCapacity()I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHardwareBufferID()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    return v0
.end method

.method public getVertexBufferObjectManager()Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mVertexBufferObjectManager:Lorg/andengine/opengl/vbo/VertexBufferObjectManager;

    return-object v0
.end method

.method public isAutoDispose()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mAutoDispose:Z

    return v0
.end method

.method public isDirtyOnHardware()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDirtyOnHardware:Z

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDisposed:Z

    return v0
.end method

.method public isLoadedToHardware()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBufferData()V
.end method

.method public setDirtyOnHardware()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDirtyOnHardware:Z

    .line 112
    return-void
.end method

.method public setNotLoadedToHardware()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mDirtyOnHardware:Z

    .line 102
    return-void
.end method

.method public unbind(Lorg/andengine/opengl/util/GLState;Lorg/andengine/opengl/shader/ShaderProgram;)V
    .locals 0
    .parameter "pGLState"
    .parameter "pShaderProgram"

    .prologue
    .line 168
    invoke-virtual {p2, p1}, Lorg/andengine/opengl/shader/ShaderProgram;->unbind(Lorg/andengine/opengl/util/GLState;)V

    .line 171
    return-void
.end method

.method public unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 175
    iget v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/GLState;->deleteArrayBuffer(I)V

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObject;->mHardwareBufferID:I

    .line 178
    return-void
.end method
