.class Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue$1;
.super Lorg/andengine/util/adt/pool/GenericPool;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/GenericPool",
        "<",
        "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;


# direct methods
.method constructor <init>(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue$1;->this$1:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue;

    .line 208
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue$1;->onAllocatePoolItem()Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    invoke-direct {v0}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueue$1;->onHandleRecycleItem(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;)V

    return-void
.end method

.method protected onHandleRecycleItem(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .local p1, pLRUCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode<TK;>;"
    const/4 v0, 0x0

    .line 216
    iput-object v0, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mKey:Ljava/lang/Object;

    .line 217
    iput-object v0, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 218
    iput-object v0, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 219
    return-void
.end method
