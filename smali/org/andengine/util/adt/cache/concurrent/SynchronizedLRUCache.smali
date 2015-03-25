.class public Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache;
.super Lorg/andengine/util/adt/cache/LRUCache;
.source "SynchronizedLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/andengine/util/adt/cache/LRUCache",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "pCapacity"

    .prologue
    .line 25
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/cache/LRUCache;-><init>(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/andengine/util/adt/cache/LRUCache;->clear()V
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

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache<TK;TV;>;"
    .local p1, pKey:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/andengine/util/adt/cache/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/andengine/util/adt/cache/LRUCache;->getSize()I
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
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/andengine/util/adt/cache/LRUCache;->isEmpty()Z
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

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache;,"Lorg/andengine/util/adt/cache/concurrent/SynchronizedLRUCache<TK;TV;>;"
    .local p1, pKey:Ljava/lang/Object;,"TK;"
    .local p2, pValue:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/andengine/util/adt/cache/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
