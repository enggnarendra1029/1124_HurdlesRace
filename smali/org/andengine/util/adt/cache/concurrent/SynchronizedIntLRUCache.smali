.class public Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache;
.super Lorg/andengine/util/adt/cache/IntLRUCache;
.source "SynchronizedIntLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/adt/cache/IntLRUCache",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "pCapacity"

    .prologue
    .line 25
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache<TV;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/cache/IntLRUCache;-><init>(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/andengine/util/adt/cache/IntLRUCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .parameter "pKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/andengine/util/adt/cache/IntLRUCache;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/andengine/util/adt/cache/IntLRUCache;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/andengine/util/adt/cache/IntLRUCache;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "pKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedIntLRUCache<TV;>;"
    .local p2, pValue:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/andengine/util/adt/cache/IntLRUCache;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
