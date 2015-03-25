.class public abstract Lorg/andengine/util/adt/pool/Pool;
.super Lorg/andengine/util/adt/pool/GenericPool;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/andengine/util/adt/pool/PoolItem;",
        ">",
        "Lorg/andengine/util/adt/pool/GenericPool",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pInitialSize"

    .prologue
    .line 31
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/pool/GenericPool;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pInitialSize"
    .parameter "pGrowth"

    .prologue
    .line 35
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/andengine/util/adt/pool/GenericPool;-><init>(II)V

    .line 36
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "pInitialSize"
    .parameter "pGrowth"
    .parameter "pAvailableItemCountMaximum"

    .prologue
    .line 39
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/util/adt/pool/GenericPool;-><init>(III)V

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic onHandleAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/pool/Pool;->onHandleAllocatePoolItem()Lorg/andengine/util/adt/pool/PoolItem;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleAllocatePoolItem()Lorg/andengine/util/adt/pool/PoolItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    invoke-super {p0}, Lorg/andengine/util/adt/pool/GenericPool;->onHandleAllocatePoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/pool/PoolItem;

    .line 53
    .local v0, poolItem:Lorg/andengine/util/adt/pool/PoolItem;,"TT;"
    iput-object p0, v0, Lorg/andengine/util/adt/pool/PoolItem;->mParent:Lorg/andengine/util/adt/pool/Pool;

    .line 54
    return-object v0
.end method

.method protected bridge synthetic onHandleObtainItem(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/pool/PoolItem;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/pool/Pool;->onHandleObtainItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    return-void
.end method

.method protected onHandleObtainItem(Lorg/andengine/util/adt/pool/PoolItem;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    .local p1, pPoolItem:Lorg/andengine/util/adt/pool/PoolItem;,"TT;"
    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/andengine/util/adt/pool/PoolItem;->mRecycled:Z

    .line 60
    invoke-virtual {p1}, Lorg/andengine/util/adt/pool/PoolItem;->onObtain()V

    .line 61
    return-void
.end method

.method protected bridge synthetic onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/pool/PoolItem;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/pool/Pool;->onHandleRecycleItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    return-void
.end method

.method protected onHandleRecycleItem(Lorg/andengine/util/adt/pool/PoolItem;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    .local p1, pPoolItem:Lorg/andengine/util/adt/pool/PoolItem;,"TT;"
    invoke-virtual {p1}, Lorg/andengine/util/adt/pool/PoolItem;->onRecycle()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/andengine/util/adt/pool/PoolItem;->mRecycled:Z

    .line 67
    return-void
.end method

.method public declared-synchronized ownsPoolItem(Lorg/andengine/util/adt/pool/PoolItem;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    .local p1, pPoolItem:Lorg/andengine/util/adt/pool/PoolItem;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/andengine/util/adt/pool/PoolItem;->mParent:Lorg/andengine/util/adt/pool/Pool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method recycle(Lorg/andengine/util/adt/pool/PoolItem;)V
    .locals 0
    .parameter "pPoolItem"

    .prologue
    .line 92
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/pool/Pool;->recyclePoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    .line 93
    return-void
.end method

.method public bridge synthetic recyclePoolItem(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/pool/PoolItem;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/pool/Pool;->recyclePoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    return-void
.end method

.method public declared-synchronized recyclePoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    .local p1, pPoolItem:Lorg/andengine/util/adt/pool/PoolItem;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/andengine/util/adt/pool/PoolItem;->mParent:Lorg/andengine/util/adt/pool/Pool;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem not assigned to a pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Lorg/andengine/util/adt/pool/PoolItem;->isFromPool(Lorg/andengine/util/adt/pool/Pool;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem from another pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/util/adt/pool/PoolItem;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    invoke-super {p0, p1}, Lorg/andengine/util/adt/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit p0

    return-void
.end method
