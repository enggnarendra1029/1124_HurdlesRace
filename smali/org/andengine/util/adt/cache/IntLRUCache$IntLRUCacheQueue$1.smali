.class Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue$1;
.super Lorg/andengine/util/adt/pool/GenericPool;
.source "IntLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/GenericPool",
        "<",
        "Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;


# direct methods
.method constructor <init>(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue$1;->this$1:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue;

    .line 211
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue$1;->onAllocatePoolItem()Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    invoke-direct {v0}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    invoke-virtual {p0, p1}, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueue$1;->onHandleRecycleItem(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;)V

    return-void
.end method

.method protected onHandleRecycleItem(Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;)V
    .locals 2
    .parameter

    .prologue
    .local p1, pIntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;"
    const/4 v1, 0x0

    .line 219
    const/4 v0, 0x0

    iput v0, p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mKey:I

    .line 220
    iput-object v1, p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mPrevious:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 221
    iput-object v1, p1, Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;->mNext:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

    .line 222
    return-void
.end method
