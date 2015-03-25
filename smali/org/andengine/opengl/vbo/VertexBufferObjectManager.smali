.class public Lorg/andengine/opengl/vbo/VertexBufferObjectManager;
.super Ljava/lang/Object;
.source "VertexBufferObjectManager.java"


# instance fields
.field private final mVertexBufferObjectsLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/vbo/IVertexBufferObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mVertexBufferObjectsToBeUnloaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/vbo/IVertexBufferObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized getGPUHeapMemoryByteSize()I
    .locals 4

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    .local v0, byteSize:I
    :try_start_0
    iget-object v2, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 56
    .local v2, vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 59
    monitor-exit p0

    return v0

    .line 57
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/opengl/vbo/IVertexBufferObject;

    invoke-interface {v3}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->getGPUMemoryByteSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 56
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54
    .end local v1           #i:I
    .end local v2           #vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getHeapMemoryByteSize()I
    .locals 4

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x0

    .line 37
    .local v0, byteSize:I
    :try_start_0
    iget-object v2, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 38
    .local v2, vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 41
    monitor-exit p0

    return v0

    .line 39
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/opengl/vbo/IVertexBufferObject;

    invoke-interface {v3}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->getHeapMemoryByteSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 38
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 36
    .end local v1           #i:I
    .end local v2           #vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getNativeHeapMemoryByteSize()I
    .locals 4

    .prologue
    .line 45
    monitor-enter p0

    const/4 v0, 0x0

    .line 46
    .local v0, byteSize:I
    :try_start_0
    iget-object v2, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 47
    .local v2, vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 50
    monitor-exit p0

    return v0

    .line 48
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/opengl/vbo/IVertexBufferObject;

    invoke-interface {v3}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->getNativeHeapMemoryByteSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 47
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 45
    .end local v1           #i:I
    .end local v2           #vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 76
    .local v1, vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/opengl/vbo/IVertexBufferObject;

    invoke-interface {v2}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->setNotLoadedToHardware()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 75
    .end local v0           #i:I
    .end local v1           #vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onReload()V
    .locals 3

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 95
    .local v1, vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/opengl/vbo/IVertexBufferObject;

    invoke-interface {v2}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->setNotLoadedToHardware()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 94
    .end local v0           #i:I
    .end local v1           #vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUnloadVertexBufferObject(Lorg/andengine/opengl/vbo/IVertexBufferObject;)V
    .locals 1
    .parameter "pVertexBufferObject"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onVertexBufferObjectLoaded(Lorg/andengine/opengl/vbo/IVertexBufferObject;)V
    .locals 1
    .parameter "pVertexBufferObject"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateVertexBufferObjects(Lorg/andengine/opengl/util/GLState;)V
    .locals 5
    .parameter "pGLState"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsLoaded:Ljava/util/ArrayList;

    .line 104
    .local v2, vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    iget-object v3, p0, Lorg/andengine/opengl/vbo/VertexBufferObjectManager;->mVertexBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    .line 107
    .local v3, vertexBufferObjectsToBeUnloaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 114
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/vbo/IVertexBufferObject;

    .line 109
    .local v1, vertexBufferObjectToBeUnloaded:Lorg/andengine/opengl/vbo/IVertexBufferObject;
    invoke-interface {v1}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->isLoadedToHardware()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-interface {v1, p1}, Lorg/andengine/opengl/vbo/IVertexBufferObject;->unloadFromHardware(Lorg/andengine/opengl/util/GLState;)V

    .line 112
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    .end local v0           #i:I
    .end local v1           #vertexBufferObjectToBeUnloaded:Lorg/andengine/opengl/vbo/IVertexBufferObject;
    .end local v2           #vertexBufferObjectsLoaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    .end local v3           #vertexBufferObjectsToBeUnloaded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/vbo/IVertexBufferObject;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
