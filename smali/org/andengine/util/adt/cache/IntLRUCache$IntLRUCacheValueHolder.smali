.class Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;
.super Ljava/lang/Object;
.source "IntLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/adt/cache/IntLRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntLRUCacheValueHolder"
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
.field mIntLRUCacheQueueNode:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheQueueNode;

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
    .line 166
    .local p0, this:Lorg/andengine/util/adt/cache/IntLRUCache$IntLRUCacheValueHolder;,"Lorg/andengine/util/adt/cache/IntLRUCache<TV;>.IntLRUCacheValueHolder<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
