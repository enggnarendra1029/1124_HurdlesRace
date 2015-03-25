.class Lorg/andengine/util/adt/cache/LRUCache$1;
.super Lorg/andengine/util/adt/pool/GenericPool;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/LRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/GenericPool",
        "<",
        "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/util/adt/cache/LRUCache;


# direct methods
.method constructor <init>(Lorg/andengine/util/adt/cache/LRUCache;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/adt/cache/LRUCache$1;->this$0:Lorg/andengine/util/adt/cache/LRUCache;

    .line 28
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/cache/LRUCache$1;->onAllocatePoolItem()Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;

    invoke-direct {v0}, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/cache/LRUCache$1;->onHandleRecycleItem(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;)V

    return-void
.end method

.method protected onHandleRecycleItem(Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p1, pLRUCacheValueHolder:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder<TK;TV;>;"
    const/4 v0, 0x0

    .line 36
    iput-object v0, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;->mLRUCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;

    .line 37
    iput-object v0, p1, Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;->mValue:Ljava/lang/Object;

    .line 38
    return-void
.end method
