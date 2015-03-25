.class Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/LRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LRUCacheQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final mLRUCacheQueueNodePool:Lorg/andengine/util/adt/pool/GenericPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/pool/GenericPool",
            "<",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field private mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 196
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>.LRUCacheQueue<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue$1;

    invoke-direct {v0, p0}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue$1;-><init>(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;)V

    iput-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mLRUCacheQueueNodePool:Lorg/andengine/util/adt/pool/GenericPool;

    .line 196
    return-void
.end method

.method private add(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;)Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;)",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>.LRUCacheQueue<TK;>;"
    .local p1, pLRUCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode<TK;>;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iput-object p1, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 253
    iget-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iput-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 260
    :goto_0
    iget-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iput-object p1, v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 256
    iget-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iput-object v0, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 257
    iput-object p1, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>.LRUCacheQueue<TK;>;"
    .local p1, pKey:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mLRUCacheQueueNodePool:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v1}, Lorg/andengine/util/adt/pool/GenericPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 245
    .local v0, lruCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode<TK;>;"
    iput-object p1, v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mKey:Ljava/lang/Object;

    .line 247
    invoke-direct {p0, v0}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->add(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;)Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 239
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>.LRUCacheQueue<TK;>;"
    iget-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToTail(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>.LRUCacheQueue<TK;>;"
    .local p1, pLRUCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode<TK;>;"
    iget-object v0, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 284
    .local v0, next:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode<TK;>;"
    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 288
    .local v1, previous:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode<TK;>;"
    iput-object v1, v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 291
    if-nez v1, :cond_1

    .line 292
    iput-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 297
    :goto_1
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iput-object p1, v2, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 298
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iput-object v2, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 299
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 300
    iput-object p1, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    goto :goto_0

    .line 294
    :cond_1
    iput-object v0, v1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    goto :goto_1
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>.LRUCacheQueue<TK;>;"
    const/4 v3, 0x0

    .line 264
    iget-object v0, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 265
    .local v0, head:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode<TK;>;"
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iget-object v1, v2, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mKey:Ljava/lang/Object;

    .line 268
    .local v1, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iget-object v2, v2, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    if-nez v2, :cond_0

    .line 269
    iput-object v3, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 270
    iput-object v3, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 276
    :goto_0
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mLRUCacheQueueNodePool:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v2, v0}, Lorg/andengine/util/adt/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V

    .line 277
    return-object v1

    .line 272
    :cond_0
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iget-object v2, v2, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iput-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 273
    iget-object v2, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    iput-object v3, v2, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    goto :goto_0
.end method
