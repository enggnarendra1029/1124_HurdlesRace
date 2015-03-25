.class public abstract Lorg/andengine/util/adt/pool/PoolUpdateHandler;
.super Ljava/lang/Object;
.source "PoolUpdateHandler.java"

# interfaces
.implements Lorg/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/andengine/util/adt/pool/PoolItem;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/andengine/engine/handler/IUpdateHandler;"
    }
.end annotation


# instance fields
.field private final mPool:Lorg/andengine/util/adt/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/pool/Pool",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mScheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/queue/IQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    .local p0, this:Lorg/andengine/util/adt/pool/PoolUpdateHandler;,"Lorg/andengine/util/adt/pool/PoolUpdateHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;

    new-instance v1, Lorg/andengine/util/adt/list/ShiftList;

    invoke-direct {v1}, Lorg/andengine/util/adt/list/ShiftList;-><init>()V

    invoke-direct {v0, v1}, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;-><init>(Lorg/andengine/util/adt/queue/IQueue;)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mScheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;

    .line 34
    new-instance v0, Lorg/andengine/util/adt/pool/PoolUpdateHandler$1;

    invoke-direct {v0, p0}, Lorg/andengine/util/adt/pool/PoolUpdateHandler$1;-><init>(Lorg/andengine/util/adt/pool/PoolUpdateHandler;)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mPool:Lorg/andengine/util/adt/pool/Pool;

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "pInitialPoolSize"

    .prologue
    .line 42
    .local p0, this:Lorg/andengine/util/adt/pool/PoolUpdateHandler;,"Lorg/andengine/util/adt/pool/PoolUpdateHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;

    new-instance v1, Lorg/andengine/util/adt/list/ShiftList;

    invoke-direct {v1}, Lorg/andengine/util/adt/list/ShiftList;-><init>()V

    invoke-direct {v0, v1}, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;-><init>(Lorg/andengine/util/adt/queue/IQueue;)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mScheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;

    .line 43
    new-instance v0, Lorg/andengine/util/adt/pool/PoolUpdateHandler$2;

    invoke-direct {v0, p0, p1}, Lorg/andengine/util/adt/pool/PoolUpdateHandler$2;-><init>(Lorg/andengine/util/adt/pool/PoolUpdateHandler;I)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mPool:Lorg/andengine/util/adt/pool/Pool;

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "pInitialPoolSize"
    .parameter "pGrowth"

    .prologue
    .line 51
    .local p0, this:Lorg/andengine/util/adt/pool/PoolUpdateHandler;,"Lorg/andengine/util/adt/pool/PoolUpdateHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;

    new-instance v1, Lorg/andengine/util/adt/list/ShiftList;

    invoke-direct {v1}, Lorg/andengine/util/adt/list/ShiftList;-><init>()V

    invoke-direct {v0, v1}, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;-><init>(Lorg/andengine/util/adt/queue/IQueue;)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mScheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;

    .line 52
    new-instance v0, Lorg/andengine/util/adt/pool/PoolUpdateHandler$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/andengine/util/adt/pool/PoolUpdateHandler$3;-><init>(Lorg/andengine/util/adt/pool/PoolUpdateHandler;II)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mPool:Lorg/andengine/util/adt/pool/Pool;

    .line 58
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "pInitialPoolSize"
    .parameter "pGrowth"
    .parameter "pAvailableItemCountMaximum"

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/util/adt/pool/PoolUpdateHandler;,"Lorg/andengine/util/adt/pool/PoolUpdateHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;

    new-instance v1, Lorg/andengine/util/adt/list/ShiftList;

    invoke-direct {v1}, Lorg/andengine/util/adt/list/ShiftList;-><init>()V

    invoke-direct {v0, v1}, Lorg/andengine/util/adt/queue/concurrent/SynchronizedQueue;-><init>(Lorg/andengine/util/adt/queue/IQueue;)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mScheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;

    .line 61
    new-instance v0, Lorg/andengine/util/adt/pool/PoolUpdateHandler$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/andengine/util/adt/pool/PoolUpdateHandler$4;-><init>(Lorg/andengine/util/adt/pool/PoolUpdateHandler;III)V

    iput-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mPool:Lorg/andengine/util/adt/pool/Pool;

    .line 67
    return-void
.end method


# virtual methods
.method public obtainPoolItem()Lorg/andengine/util/adt/pool/PoolItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lorg/andengine/util/adt/pool/PoolUpdateHandler;,"Lorg/andengine/util/adt/pool/PoolUpdateHandler<TT;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mPool:Lorg/andengine/util/adt/pool/Pool;

    invoke-virtual {v0}, Lorg/andengine/util/adt/pool/Pool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/pool/PoolItem;

    return-object v0
.end method

.method protected abstract onAllocatePoolItem()Lorg/andengine/util/adt/pool/PoolItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract onHandlePoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onUpdate(F)V
    .locals 3
    .parameter "pSecondsElapsed"

    .prologue
    .line 83
    .local p0, this:Lorg/andengine/util/adt/pool/PoolUpdateHandler;,"Lorg/andengine/util/adt/pool/PoolUpdateHandler<TT;>;"
    iget-object v2, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mScheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;

    .line 84
    .local v2, scheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;,"Lorg/andengine/util/adt/queue/IQueue<TT;>;"
    iget-object v1, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mPool:Lorg/andengine/util/adt/pool/Pool;

    .line 87
    .local v1, pool:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    :goto_0
    invoke-interface {v2}, Lorg/andengine/util/adt/queue/IQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/pool/PoolItem;

    .local v0, item:Lorg/andengine/util/adt/pool/PoolItem;,"TT;"
    if-nez v0, :cond_0

    .line 91
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->onHandlePoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    .line 89
    invoke-virtual {v1, v0}, Lorg/andengine/util/adt/pool/Pool;->recyclePoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    goto :goto_0
.end method

.method public postPoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lorg/andengine/util/adt/pool/PoolUpdateHandler;,"Lorg/andengine/util/adt/pool/PoolUpdateHandler<TT;>;"
    .local p1, pPoolItem:Lorg/andengine/util/adt/pool/PoolItem;,"TT;"
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mPool:Lorg/andengine/util/adt/pool/Pool;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/pool/Pool;->ownsPoolItem(Lorg/andengine/util/adt/pool/PoolItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem from another pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iget-object v0, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mScheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;

    invoke-interface {v0, p1}, Lorg/andengine/util/adt/queue/IQueue;->enter(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 95
    .local p0, this:Lorg/andengine/util/adt/pool/PoolUpdateHandler;,"Lorg/andengine/util/adt/pool/PoolUpdateHandler<TT;>;"
    iget-object v2, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mScheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;

    .line 96
    .local v2, scheduledPoolItemQueue:Lorg/andengine/util/adt/queue/IQueue;,"Lorg/andengine/util/adt/queue/IQueue<TT;>;"
    iget-object v1, p0, Lorg/andengine/util/adt/pool/PoolUpdateHandler;->mPool:Lorg/andengine/util/adt/pool/Pool;

    .line 99
    .local v1, pool:Lorg/andengine/util/adt/pool/Pool;,"Lorg/andengine/util/adt/pool/Pool<TT;>;"
    :goto_0
    invoke-interface {v2}, Lorg/andengine/util/adt/queue/IQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/pool/PoolItem;

    .local v0, item:Lorg/andengine/util/adt/pool/PoolItem;,"TT;"
    if-nez v0, :cond_0

    .line 102
    return-void

    .line 100
    :cond_0
    invoke-virtual {v1, v0}, Lorg/andengine/util/adt/pool/Pool;->recyclePoolItem(Lorg/andengine/util/adt/pool/PoolItem;)V

    goto :goto_0
.end method
