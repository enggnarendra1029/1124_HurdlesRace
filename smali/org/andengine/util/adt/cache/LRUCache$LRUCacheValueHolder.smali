.class Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/LRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LRUCacheValueHolder"
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
.field mLRUCacheQueueNode:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/cache/LRUCache$LRUCacheQueueNode",
            "<TK;>;"
        }
    .end annotation
.end field

.field mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    .local p0, this:Lorg/andengine/util/adt/cache/LRUCache$LRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/LRUCache<TK;TV;>.LRUCacheValueHolder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
