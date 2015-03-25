.class Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;
.super Ljava/lang/Object;
.source "IntLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/IntLRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntLRUCacheQueue"
.end annotation


# instance fields
.field private mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

.field private final mIntLRUCacheQueueNodePool:Lorg/andengine/util/adt/pool/GenericPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/pool/GenericPool",
            "<",
            "Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;",
            ">;"
        }
    .end annotation
.end field

.field private mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue$1;

    invoke-direct {v0, p0}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue$1;-><init>(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;)V

    iput-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mIntLRUCacheQueueNodePool:Lorg/andengine/util/adt/pool/GenericPool;

    .line 199
    return-void
.end method

.method private add(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;)Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;
    .locals 1
    .parameter

    .prologue
    .line 254
    .local p1, pIntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;"
    invoke-virtual {p0}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iput-object p1, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 256
    iget-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iput-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 263
    :goto_0
    iget-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    return-object v0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iput-object p1, v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 259
    iget-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iput-object v0, p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 260
    iput-object p1, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    goto :goto_0
.end method


# virtual methods
.method public add(I)Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;
    .locals 2
    .parameter "pKey"

    .prologue
    .line 246
    iget-object v1, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mIntLRUCacheQueueNodePool:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v1}, Lorg/andengine/util/adt/pool/GenericPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 248
    .local v0, IntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;"
    iput p1, v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mKey:I

    .line 250
    invoke-direct {p0, v0}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->add(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;)Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToTail(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;)V
    .locals 3
    .parameter

    .prologue
    .line 287
    .local p1, pIntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;"
    iget-object v0, p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 290
    .local v0, next:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;"
    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v1, p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 294
    .local v1, previous:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;"
    iput-object v1, v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 297
    if-nez v1, :cond_1

    .line 298
    iput-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 303
    :goto_1
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iput-object p1, v2, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 304
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iput-object v2, p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 305
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 306
    iput-object p1, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    goto :goto_0

    .line 300
    :cond_1
    iput-object v0, v1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    goto :goto_1
.end method

.method public poll()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v0, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 268
    .local v0, head:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;"
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iget v1, v2, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mKey:I

    .line 269
    .local v1, key:I
    if-nez v1, :cond_0

    .line 270
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 274
    :cond_0
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iget-object v2, v2, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    if-nez v2, :cond_1

    .line 275
    iput-object v3, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 276
    iput-object v3, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mTail:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 282
    :goto_0
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mIntLRUCacheQueueNodePool:Lorg/andengine/util/adt/pool/GenericPool;

    invoke-virtual {v2, v0}, Lorg/andengine/util/adt/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V

    .line 283
    return v1

    .line 278
    :cond_1
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iget-object v2, v2, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iput-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 279
    iget-object v2, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;->mHead:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    iput-object v3, v2, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    goto :goto_0
.end method
