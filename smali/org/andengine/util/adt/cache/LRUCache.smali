.class public Lorg/andengine/util/adt/cache/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;,
        Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,
        Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCapacity:I

.field private final mLRUCacheQueue:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final mLRUCacheValueHolderPool:Lorg/andengine/util/adt/pool/GenericPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/pool/GenericPool",
            "<",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "pCapacity"

    .prologue
    .line 45
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/andengine/util/adt/cache/LRUCache$1;

    invoke-direct {v0, p0}, Lorg/andengine/util/adt/cache/LRUCache$1;-><init>(Lorg/andengine/util/adt/cache/LRUCache;)V

    iput-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheValueHolderPool:Lorg/andengine/util/adt/pool/GenericPool;

    .line 46
    iput p1, p0, Lorg/andengine/util/adt/cache/LRUCache;->mCapacity:I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache;->mMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    invoke-direct {v0}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheQueue:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    .line 49
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 112
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheQueue:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    invoke-virtual {v2}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lorg/andengine/util/adt/cache/LRUCache;->mSize:I

    .line 119
    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheQueue:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    invoke-virtual {v2}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;

    .line 115
    .local v1, lruCacheValueHolder:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder<TK;TV;>;"
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheValueHolderPool:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v2, v1}, Lorg/andengine/util/adt/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>;"
    .local p1, pKey:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lorg/andengine/util/adt/cache/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;

    .line 102
    .local v0, lruCacheValueHolder:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder<TK;TV;>;"
    if-nez v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheQueue:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    iget-object v2, v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;->mLRUCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    invoke-virtual {v1, v2}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->moveToTail(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;)V

    .line 108
    iget-object v1, v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;->mValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>;"
    iget v0, p0, Lorg/andengine/util/adt/cache/LRUCache;->mCapacity:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>;"
    iget v0, p0, Lorg/andengine/util/adt/cache/LRUCache;->mSize:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 68
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>;"
    iget v0, p0, Lorg/andengine/util/adt/cache/LRUCache;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>;"
    .local p1, pKey:Ljava/lang/Object;,"TK;"
    .local p2, pValue:Ljava/lang/Object;,"TV;"
    iget-object v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;

    .line 73
    .local v1, existingLRUCacheValueHolder:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 75
    iget-object v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheQueue:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    iget-object v5, v1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;->mLRUCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    invoke-virtual {v4, v5}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->moveToTail(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;)V

    .line 77
    iget-object v4, v1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;->mValue:Ljava/lang/Object;

    .line 97
    :goto_0
    return-object v4

    .line 80
    :cond_0
    iget v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mSize:I

    iget v5, p0, Lorg/andengine/util/adt/cache/LRUCache;->mCapacity:I

    if-lt v4, v5, :cond_1

    .line 81
    iget-object v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheQueue:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    invoke-virtual {v4}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, deadKey:Ljava/lang/Object;,"TK;"
    iget-object v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mSize:I

    .line 86
    .end local v0           #deadKey:Ljava/lang/Object;,"TK;"
    :cond_1
    iget-object v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheQueue:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    invoke-virtual {v4, p1}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->add(Ljava/lang/Object;)Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    move-result-object v2

    .line 88
    .local v2, lruCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode<TK;>;"
    iget-object v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mLRUCacheValueHolderPool:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v4}, Lorg/andengine/util/adt/pool/GenericPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;

    .line 90
    .local v3, lruCacheValueHolder:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder<TK;TV;>;"
    iput-object p2, v3, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;->mValue:Ljava/lang/Object;

    .line 91
    iput-object v2, v3, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;->mLRUCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 93
    iget-object v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/andengine/util/adt/cache/LRUCache;->mSize:I

    .line 97
    const/4 v4, 0x0

    goto :goto_0
.end method
