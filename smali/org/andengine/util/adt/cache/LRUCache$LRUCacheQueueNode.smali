.class Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/LRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LRUCacheQueueNode"
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
.field mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field mNext:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;"
        }
    .end annotation
.end field

.field mPrevious:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>.LRUCacheQueueNode<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
