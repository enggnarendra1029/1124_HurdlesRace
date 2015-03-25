.class public Lorg/andengine/util/adt/cache/IntLRUCache;
.super Ljava/lang/Object;
.source "IntLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;,
        Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,
        Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCapacity:I

.field private final mIntLRUCacheQueue:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

.field private final mIntLRUCacheValueHolderPool:Lorg/andengine/util/adt/pool/GenericPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/pool/GenericPool",
            "<",
            "Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private mSize:I

.field private final mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "pCapacity"

    .prologue
    .line 45
    .local p0, this:Lorg/andengine/util/adt/cache/IntLRUCache;,"Lorg/andengine/util/adt/cache/IntLRUCache<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/andengine/util/adt/cache/IntLRUCache$1;

    invoke-direct {v0, p0}, Lorg/andengine/util/adt/cache/IntLRUCache$1;-><init>(Lorg/andengine/util/adt/cache/IntLRUCache;)V

    iput-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheValueHolderPool:Lorg/andengine/util/adt/pool/GenericPool;

    .line 46
    iput p1, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mCapacity:I

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSparseArray:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    invoke-direct {v0}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheQueue:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    .line 49
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 112
    .local p0, this:Lorg/andengine/util/adt/cache/IntLRUCache;,"Lorg/andengine/util/adt/cache/IntLRUCache<TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheQueue:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    invoke-virtual {v2}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x0

    iput v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSize:I

    .line 122
    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheQueue:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    invoke-virtual {v2}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->poll()I

    move-result v0

    .line 114
    .local v0, key:I
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;

    .line 115
    .local v1, lruCacheValueHolder:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder<TV;>;"
    if-nez v1, :cond_1

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 118
    :cond_1
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 119
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheValueHolderPool:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v2, v1}, Lorg/andengine/util/adt/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .parameter "pKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lorg/andengine/util/adt/cache/IntLRUCache;,"Lorg/andengine/util/adt/cache/IntLRUCache<TV;>;"
    iget-object v1, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;

    .line 102
    .local v0, IntLRUCacheValueHolder:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder<TV;>;"
    if-nez v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheQueue:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    iget-object v2, v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;->mIntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    invoke-virtual {v1, v2}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->moveToTail(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;)V

    .line 108
    iget-object v1, v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;->mValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lorg/andengine/util/adt/cache/IntLRUCache;,"Lorg/andengine/util/adt/cache/IntLRUCache<TV;>;"
    iget v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mCapacity:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lorg/andengine/util/adt/cache/IntLRUCache;,"Lorg/andengine/util/adt/cache/IntLRUCache<TV;>;"
    iget v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSize:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 68
    .local p0, this:Lorg/andengine/util/adt/cache/IntLRUCache;,"Lorg/andengine/util/adt/cache/IntLRUCache<TV;>;"
    iget v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "pKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lorg/andengine/util/adt/cache/IntLRUCache;,"Lorg/andengine/util/adt/cache/IntLRUCache<TV;>;"
    .local p2, pValue:Ljava/lang/Object;,"TV;"
    iget-object v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;

    .line 73
    .local v3, existingIntLRUCacheValueHolder:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder<TV;>;"
    if-eqz v3, :cond_0

    .line 75
    iget-object v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheQueue:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    iget-object v5, v3, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;->mIntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    invoke-virtual {v4, v5}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->moveToTail(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;)V

    .line 77
    iget-object v4, v3, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;->mValue:Ljava/lang/Object;

    .line 97
    :goto_0
    return-object v4

    .line 80
    :cond_0
    iget v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSize:I

    iget v5, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mCapacity:I

    if-lt v4, v5, :cond_1

    .line 81
    iget-object v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheQueue:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    invoke-virtual {v4}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->poll()I

    move-result v2

    .line 82
    .local v2, deadKey:I
    iget-object v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 83
    iget v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSize:I

    .line 86
    .end local v2           #deadKey:I
    :cond_1
    iget-object v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheQueue:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    invoke-virtual {v4, p1}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->add(I)Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    move-result-object v0

    .line 88
    .local v0, IntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;"
    iget-object v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mIntLRUCacheValueHolderPool:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v4}, Lorg/andengine/util/adt/pool/GenericPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;

    .line 90
    .local v1, IntLRUCacheValueHolder:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder<TV;>;"
    iput-object p2, v1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;->mValue:Ljava/lang/Object;

    .line 91
    iput-object v0, v1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;->mIntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 93
    iget-object v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    iget v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/andengine/util/adt/cache/IntLRUCache;->mSize:I

    .line 97
    const/4 v4, 0x0

    goto :goto_0
.end method
